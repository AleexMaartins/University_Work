/*
 *  \author Henrique Cristóvão Coelho - 108342
 */

#include "somm23.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void simPrint(FILE *fout)
    {
        soProbe(103, "%s(\"%p\")\n", __func__, fout);


        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        fprintf(fout, "+====================================================================+\n");
        fprintf(fout, "|                          forthcomingTable                          |\n");
        fprintf(fout, "+-------+---------+----------+---------------------------------------+\n");
        fprintf(fout, "|    Simulation step: %6u |              Simulation time: %7u |\n", stepCount, simTime);
        fprintf(fout, "+-------+---------+----------+---------------------------------------+\n");
        fprintf(fout, "|  PID  | arrival | lifetime |         address space profile         |\n");
        fprintf(fout, "+-------+---------+----------+---------------------------------------+\n");

        
        ForthcomingProcess *current = forthcomingTable.process;
        for (uint32_t i = 0; i < forthcomingTable.count; i++)
        {
            fprintf(fout, "| %5u | %7u | %8u |", current->pid, current->arrivalTime, current->lifetime);
            for (uint32_t j = 0; j < current->addressSpace.segmentCount; j++){   
                fprintf(fout, " %7u %s", current->addressSpace.size[j], ((j == current->addressSpace.segmentCount - 1) && (j == MAX_BLOCKS - 1)) ? "|\n" : ":");
            }
            for (uint32_t j = current->addressSpace.segmentCount; j < MAX_BLOCKS; j++){   
                fprintf(fout, "   ---   %s", (j == MAX_BLOCKS - 1) ? "|\n" : ":");
            }
            current++;
        }

        fprintf(fout, "+====================================================================+\n\n");
    }

// ================================================================================== //

} // end of namespace group

