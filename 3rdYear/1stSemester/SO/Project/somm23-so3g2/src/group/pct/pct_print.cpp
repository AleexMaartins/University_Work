/*
 *  \author Diogo Branco Alves da Silva - 1043431
 */

#include "somm23.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //
    const char *stateToString(ProcessState state){
        switch(state){
            case NEW: return "NEW";
            case ACTIVE: return "ACTIVE";
            case SWAPPED: return "SWAPPED";
            case FINISHED: return "FINISHED";
            case DISCARDED: return "DISCARDED";
            default: throw Exception(EINVAL, __func__);
        }
    }

    void pctPrint(FILE *fout)
    {
        soProbe(303, "%s(\"%p\")\n", __func__, fout);

        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);


        fprintf(fout, "+====================================================================================================================================================+\n");
        fprintf(fout, "|                                                                  Process Control Table                                                             |\n");
        fprintf(fout, "+-------+-----------+---------+----------+---------+---------+---------------------------------------+-----------------------------------------------+\n");
        fprintf(fout, "|  PID  |   state   | arrival | lifetime | active  | finish  |         address space profile         |             address space mapping             |\n");
        fprintf(fout, "+-------+-----------+---------+----------+---------+---------+---------------------------------------+-----------------------------------------------+\n");
        PctNode *aux = pctHead;
        while(aux != NULL && aux->pcb.pid != 0){
            //PID | state | arrival | lifetime

            fprintf(fout, "|%6u | %-10s|%8u |%9u |",aux->pcb.pid, stateToString(aux->pcb.state),aux->pcb.arrivalTime,aux->pcb.lifetime);
            
            //active time
            if(aux->pcb.activationTime == NO_TIME){
                fprintf(fout,"   %-6s|", "---");
            }else{
                fprintf(fout,"%8u |",aux->pcb.activationTime);
            }
            
            //finish time
            if(aux->pcb.finishTime == NO_TIME){
                fprintf(fout,"   %-6s|", "---");
            }else{
                fprintf(fout,"%8u |",aux->pcb.finishTime);
            }
            
            //address space profile
            for(uint32_t i = 0; i < aux->pcb.memProfile.segmentCount; i++){
                if(i == aux->pcb.memProfile.segmentCount-1 && i == 3){
                    fprintf(fout,"%8u |",aux->pcb.memProfile.size[i]);
                } else {
                    fprintf(fout,"%8u :",aux->pcb.memProfile.size[i]);
                }
            }
            for(uint32_t i = aux->pcb.memProfile.segmentCount; i < 4; i++){
                if(i == 3){
                    fprintf(fout,"   %-6s|", "---");
                } else {
                    fprintf(fout,"   %-6s:", "---");
                }
            }

            //address space mapping
            for(uint32_t i = 0; i < aux->pcb.memMapping.blockCount; i++){
                if(i == aux->pcb.memMapping.blockCount-1 && i == 3){
                    fprintf(fout," %#09x |",aux->pcb.memMapping.address[i]);
                } else {
                    fprintf(fout," %#09x :",aux->pcb.memMapping.address[i]);
                }
            }
            for(uint32_t i = aux->pcb.memMapping.blockCount; i < 4; i++){
                if(i == 3){
                    fprintf(fout,"    %-7s|", "---");
                } else {
                    fprintf(fout, "    %-7s:", "---");
                }
            }
            fprintf(fout,"\n");
            aux = aux->next;
        }
        
        fprintf(fout, "+====================================================================================================================================================+\n");
        fprintf(fout, "\n");
    }

// ================================================================================== //

} // end of namespace group

