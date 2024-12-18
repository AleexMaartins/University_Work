/*
 *  \author Joao Goncalves - 98287
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    void swpRemove(uint32_t idx)
    {
        soProbe(406, "%s(%u)\n", __func__, idx);

        /* TODO POINT: Replace next instruction with your code */
        // throw Exception(ENOSYS, __func__);

        if (swpHead == NULL) {
            throw Exception(ENOENT, __func__);
        }

        SwpNode* temp = swpHead;

        // Remove head
        if (idx == 0) {
            swpHead = temp->next;
            if (swpHead == NULL) {
                swpTail = NULL;
            }
            delete temp;
            return;
        }

        for (uint32_t i=0; temp!=NULL && i<idx-1; i++)
            temp = temp->next;

        // Does not exist
        if (temp == NULL || temp->next == NULL)
            throw Exception(ENOENT, __func__);

        SwpNode *next = temp->next->next;

        if (temp->next == swpTail) {
            swpTail = temp;
        }

        delete temp->next;  // Free memory

        temp->next = next;  // Remove deleted node from linked list

    }

// ================================================================================== //

} // end of namespace group

