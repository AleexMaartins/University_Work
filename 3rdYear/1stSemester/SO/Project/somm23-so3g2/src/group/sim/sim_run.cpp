/*
 *  \author Henrique Cristóvão Coelho - 108342
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    void simRun(uint32_t cnt)
    {   
        soProbe(108, "%s(%u)\n", __func__, cnt);

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

       for(uint32_t i = 0; i < cnt || cnt == 0; i++){
            if(!simStep())
                break;
       }
    }

// ================================================================================== //

} // end of namespace group

