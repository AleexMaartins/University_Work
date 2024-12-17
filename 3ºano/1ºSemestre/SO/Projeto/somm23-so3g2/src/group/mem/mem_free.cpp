/*
 *  \author Henrique Cristóvão Coelho - 108342
 */

#include "somm23.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void memFree(AddressSpaceMapping *mapping)
    {   
        soProbe(507, "%s(mapping: %p)\n", __func__, mapping);

        require(mapping != NULL, "mapping must be a valid pointer to a AddressSpaceMapping");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        if (mapping->blockCount > MAX_BLOCKS)
            throw Exception(EINVAL, __func__);

        if (mapping->blockCount == 0)
            throw Exception(EINVAL, __func__);

        if(memParameters.policy == FirstFit){
            for (uint32_t i = 0; i < mapping->blockCount; i++)
            {
                memFirstFitFree(mapping->address[i]);
            }
        }
        else if(memParameters.policy == BuddySystem){
            for (uint32_t i = 0; i < mapping->blockCount; i++)
            {
                memBuddySystemFree(mapping->address[i]);
            }
        }
        else{
            throw Exception(EINVAL, __func__);
        }
        
        
    }

// ================================================================================== //

} // end of namespace group

