/*
 *  \author Henrique Cristóvão Coelho - 108342
 */

#include "somm23.h"

namespace group 
{

// ================================================================================== //

    FutureEvent feqPop()
    {
        soProbe(205, "%s()\n", __func__);

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);
        
        if (feqHead == NULL){
            throw Exception(EINVAL, __func__);
        }
        else{
            FutureEvent event = feqHead->event;
            feqHead = feqHead->next;
            return event;
        }
    }

// ================================================================================== //

    bool feqIsEmpty()
    {
        soProbe(206, "%s()\n", __func__);
        
        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        return feqHead == NULL;

    }

// ================================================================================== //

} // end of namespace group

