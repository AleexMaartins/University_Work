/*
 *  \author Diogo Branco Alves da Silva - 1043431
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //
    void insertData(PctNode* node, uint32_t pid, uint32_t time, uint32_t lifetime, AddressSpaceProfile *profile){
        node->pcb.state = NEW;
        node->pcb.activationTime = NO_TIME;
        node->pcb.finishTime = NO_TIME;
        AddressSpaceMapping a;
        node->pcb.memMapping = a;
        node->pcb.pid = pid;
        node->pcb.arrivalTime = time;
        node->pcb.lifetime = lifetime;
        node->pcb.memProfile = *profile;
    }


    void pctInsert(uint32_t pid, uint32_t time, uint32_t lifetime, AddressSpaceProfile *profile)
    {
        soProbe(304, "%s(%d, %u, %u, %p)\n", __func__, pid, time, lifetime, profile);

        require(pid > 0, "a valid process ID must be greater than zero");
        require(time >= 0, "time must be >= 0");
        require(lifetime > 0, "lifetime must be > 0");
        require(profile != NULL, "profile must be a valid pointer to a AddressSpaceProfile");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        //create head if it does not exist
        if(pctHead == NULL){
            pctHead = new PctNode;
        }

        //initial case
        if(pctHead->pcb.pid == 0){
            insertData(pctHead,pid,time,lifetime,profile);
            return;
        }
        
        PctNode *newNode = new PctNode;
        insertData(newNode,pid,time,lifetime,profile);
        PctNode *aux = pctHead;

        //the lists elements should be sorted in ascendign order of the PID
        
        //pid will be the first member of the linked list
        
        if(pctHead->pcb.pid > pid){
            if(pctHead->pcb.pid == pid){
                throw Exception(EINVAL, __func__);
            }
            newNode->next = pctHead;
            pctHead = newNode;
            return;
        }

        //common case
        while(aux->next != NULL){
            if(aux->pcb.pid == pid){
                throw Exception(EINVAL, __func__);
            }
            if(aux->next->pcb.pid > pid){
                newNode->next = aux->next;
                aux->next = newNode;
                
                return;
            }
            aux = aux->next;
        }
        
        //pid will be the last member of the linked list
        if(aux->pcb.pid == pid){
                throw Exception(EINVAL, __func__);
        }
        aux->next = newNode;
        

    }

// ================================================================================== //

} // end of namespace group

