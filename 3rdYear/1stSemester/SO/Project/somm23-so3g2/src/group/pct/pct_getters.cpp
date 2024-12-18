/*
 *  \author Diogo Branco Alves da Silva - 1043431
 *  \author Alexadre Costa Martins - 103552
 */

#include "somm23.h"

    namespace group 
    {

// ================================================================================== //

    uint32_t pctGetLifetime(uint32_t pid)
    {
        soProbe(305, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        PctNode *aux = pctHead;
        while(aux != NULL){
            if(aux->pcb.pid == pid){
                return aux->pcb.lifetime;
            }
            aux = aux->next;
        }
        //The EINVAL exception should be thrown, if an entry for the given pid does not exist.
        throw Exception(EINVAL, __func__);

    }

// ================================================================================== //

    AddressSpaceProfile *pctGetAddressSpaceProfile(uint32_t pid)
    {
        soProbe(306, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);
        PctNode *aux = pctHead;
        while(aux != NULL){
            if(aux->pcb.pid == pid){
                return &aux->pcb.memProfile;
            }
            aux = aux->next;
        }
        //The EINVAL exception should be thrown, if an entry for the given pid does not exist.
        throw Exception(EINVAL, __func__);

    }

// ================================================================================== //

    AddressSpaceMapping *pctGetAddressSpaceMapping(uint32_t pid)
    {
        soProbe(307, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        /* TODO POINT: Replace next instruction with your code */
        PctNode *aux = pctHead;
        while(aux !=NULL){
            if(aux->pcb.pid == pid){
            return &aux->pcb.memMapping;
            }
            aux = aux->next;

        }
        //The EINVAL exception should be thrown, if an entry for the given pid does not exist.
        throw Exception(EINVAL, __func__);
    }

// ================================================================================== //

    const char *pctGetStateAsString(uint32_t pid)
    {
        soProbe(308, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        /* TODO POINT: Replace next instruction with your code */
        PctNode *aux = pctHead;
        while(aux != NULL){
            if(aux->pcb.pid == pid){
                switch(aux->pcb.state){
                    case NEW:
                        return "NEW";
                    case ACTIVE:
                        return "ACTIVE";
                    case SWAPPED:
                        return "SWAPPED";
                    case FINISHED:
                        return "FINISHED";
                    case DISCARDED:
                        return "DISCARDED";
                    default:
                        throw Exception(EINVAL, __func__);
                }
            }
            aux = aux->next;
        }

        //The EINVAL exception should be thrown, if an entry for the given pid does not exist.
        throw Exception(EINVAL, __func__);
    }

// ================================================================================== //

} // end of namespace group

