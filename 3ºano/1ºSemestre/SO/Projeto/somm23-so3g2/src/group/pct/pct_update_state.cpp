/*
 *  \author Alexandre Costa Martins - 103552
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void pctUpdateState(uint32_t pid, ProcessState state, uint32_t time = NO_TIME, AddressSpaceMapping *mapping = NULL)
    {
        soProbe(309, "%s(%d, %u, %u)\n", __func__, pid, state, time);

        require(pid > 0, "a valid process ID must be greater than zero");

        /* TODO POINT: Replace next instruction with your code */
        PctNode *aux = pctHead;
        while(aux != NULL){
            if(aux->pcb.pid == pid){ 
                aux->pcb.state = state;  
                if(state == ACTIVE){ 
                    aux->pcb.activationTime = time; 
                    aux->pcb.memMapping = *mapping;
                }
                if(state == FINISHED){
                    aux->pcb.finishTime = time; 
                }    
                return;
            }
            aux = aux->next;
        }
        throw Exception(EINVAL, __func__);
}


// ================================================================================== //

} // end of namespace group

