/*
 *  \author Henrique Cristóvão Coelho - 108342
 */

#include "somm23.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void feqPrint(FILE *fout)
    {
        soProbe(203, "%s(\"%p\")\n", __func__, fout);

        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);
        
        fprintf(fout, "+==============================+\n");
        fprintf(fout, "|      Future Event Queue      |\n");
        fprintf(fout, "+----------+-----------+-------+\n");
        fprintf(fout, "|   time   |   type    |  PID  |\n");
        fprintf(fout, "+----------+-----------+-------+\n");
        
        FeqEventNode *current = feqHead;
        while (current != NULL)
        {
            fprintf(fout, "|%10u|%11s|%7u|\n", current->event.time, current->event.type == ARRIVAL ? "ARRIVAL" : "TERMINATE", current->event.pid);
            current = current->next;
        }
        fprintf(fout, "+==============================+\n\n");
    }

// ================================================================================== //

} // end of namespace group

