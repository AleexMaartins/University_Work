/*
 *  \author Henrique Cristóvão Coelho - 108342
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    ForthcomingProcess *simGetProcess(uint32_t pid)
    {   
        soProbe(106, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        ForthcomingProcess *current = forthcomingTable.process;
        for (uint32_t i = 0; i < forthcomingTable.count; i++)
        {
            if (current->pid == pid){
                return current;
            }
            current++;
        }
        throw Exception(EINVAL, __func__);
    }

// ================================================================================== //

} // end of namespace group

