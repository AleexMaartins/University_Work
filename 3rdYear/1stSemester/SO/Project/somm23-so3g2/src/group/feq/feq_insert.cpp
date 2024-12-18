/*
 *  \author José Cerqueira - 76758
 */

#include "somm23.h"

namespace group 
{
/*
Inserts an entry in the queue.

A new entry should be created and added to the process event queue.

The following must be considered:

    the list's elements should be sorted in ascending order of event time;
    for elements with the same time stamp, TERMINATE events should appear before ARRIVAL events;
    for elements with the same time stamp and the same type, order of insertion should be preserved.
    If an anomalous situation occurs, an appropriate exception must be thrown.
    All exceptions must be of the type defined in this project (Exception).

*/
// ================================================================================== //
    /* Insert a node at the head of an empty list */
    static void insertHead(FeqEventNode *NewNode) {
        NewNode->next = feqHead;
        feqHead = NewNode;
    }


    /* Insert a node at the head of the list */
    static void insertHead(FeqEventNode *NewNode, FeqEventNode *CurrentNode) {
        NewNode->next = CurrentNode;
        feqHead = NewNode;
    }

    /* Insert a node somewhere that is not the head of the list */
    static void insertNode(FeqEventNode *NewNode, FeqEventNode *CurrentNode, FeqEventNode *PreviousNode) {
        if (PreviousNode != NULL)
            PreviousNode->next = NewNode;
        NewNode->next = CurrentNode;
    }

    /* Insert a node at the end of the list */
    static void insertTail(FeqEventNode *NewNode, FeqEventNode *PreviousNode) {
        PreviousNode->next = NewNode;
        NewNode->next = NULL;
    }

    /* Update the previous and current nodes */
    static void updateNodes(FeqEventNode *&CurrentNode, FeqEventNode *&PreviousNode) {
        PreviousNode = CurrentNode;
        CurrentNode = CurrentNode->next;
    }


    void feqInsert(FutureEventType type, uint32_t time, uint32_t pid) {
        const char *tas = type == ARRIVAL ? "ARRIVAL" : type == TERMINATE ? "TERMINATE" : "UNKOWN";
        soProbe(204, "%s(%s, %u, %u)\n", __func__, tas, time, pid);

        require(pid > 0, "process ID must be non-zero");
        require(type == ARRIVAL or type == TERMINATE, "type must be ARRIVAL or TERMINATE");

        /* Create a new node */
        FeqEventNode *NewNode = new FeqEventNode;
        /* Check if the new node was created successfully */
        if (!NewNode)
            throw Exception(ENOMEM, __func__);
        
        NewNode->event.pid = pid;
        NewNode->event.time = time;
        NewNode->event.type = type;

        /* If the list is empty, insert the new node as the head */
        if (!feqHead) {
            insertHead(NewNode);
            return;
        }
        
        /* Insert the new node in the correct position */
        FeqEventNode *CurrentNode = feqHead;
        FeqEventNode *PreviousNode = NULL;

        /* Loop until the end of the list is reached */
        while (CurrentNode) {
            
            /* If the new node has a time stamp greater than the current node, move to the next node */
            if (NewNode->event.time > CurrentNode->event.time) {
                /* Update the previous and current nodes */
                updateNodes(CurrentNode, PreviousNode);
                continue;
            }

            /* Sort the list in ascending order of event time */
            if (NewNode->event.time < CurrentNode->event.time) {
                if (CurrentNode == feqHead) 
                    insertHead(NewNode, CurrentNode);
                else 
                    insertNode(NewNode, CurrentNode, PreviousNode);
                return;
            }

            /* Sort TERMINATE events before ARRIVAL events, maintaining the order of insertion */
            if (NewNode->event.time == CurrentNode->event.time) {
                /* Insert TERMINATE events before ARRIVAL events */
                if (NewNode->event.type == TERMINATE && CurrentNode->event.type == ARRIVAL) {
                    if (CurrentNode == feqHead) 
                        insertHead(NewNode, CurrentNode);
                    else 
                        insertNode(NewNode, CurrentNode, PreviousNode);
                    return;        
                }
            }
            /* Update the previous and current nodes before moving to the next iteration */
            updateNodes(CurrentNode, PreviousNode);
        }

        /* If the end of the list is reached, insert the new node at the end */
        if (CurrentNode == NULL) {
            insertTail(NewNode, PreviousNode);
            return;
        }
        
        /* If an anomalous situation occurs, an appropriate exception must be thrown. */
        throw Exception(EAGAIN, __func__);
    }

// ================================================================================== //

} // end of namespace group
