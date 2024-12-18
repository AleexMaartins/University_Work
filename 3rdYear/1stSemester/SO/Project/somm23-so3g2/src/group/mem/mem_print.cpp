/*
 *  \author Diogo Branco Alves da Silva - 1043431
 */

#include "somm23.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void ffPrintList(FILE *fout, MemListNode *head){
        fprintf(fout, "+---------+-------------+------------+\n");
        fprintf(fout, "|   PID   |   address   |    size    |\n");
        fprintf(fout, "+---------+-------------+------------+\n");
        
        MemListNode *aux = head;

        while(aux != nullptr){
            if (aux->block.pid != 0) {
                fprintf(fout, "|%8u |%#12x |%11u |\n", aux->block.pid, aux->block.address, aux->block.size);
            } else {
                fprintf(fout, "|   ---   |%#12x |%11u |\n", aux->block.address, aux->block.size);
            }
            aux = aux->next;
        }

    }

    void ffPrint(FILE *fout) {
        fprintf(fout, "+====================================+\n");
        fprintf(fout, "|   FirstFit memory occupied blocks  |\n");
        ffPrintList(fout, memOccupiedHead);
        fprintf(fout, "+====================================+\n");

        fprintf(fout,"\n");

        fprintf(fout, "+====================================+\n");
        fprintf(fout, "|     FirstFit memory free blocks    |\n");
        ffPrintList(fout, memFreeHead);
        fprintf(fout, "+====================================+\n");
        fprintf(fout,"\n");


    }

    void binTreePrintOccupied(FILE *fout, MemTreeNode *node) {
        if (node == nullptr) {
            return;
        }
        binTreePrintOccupied(fout, node->left);
        if (node->state == OCCUPIED) {  
            fprintf(fout, "|%8u |%#12x |%11u |\n", node->block.pid, node->block.address, node->block.size);
        }
        binTreePrintOccupied(fout, node->right);
    }

    void binTreePrintFree(FILE *fout, MemTreeNode *node) {
        if (node == nullptr) {
            return;
        }
        binTreePrintFree(fout, node->left);
        if (node->state == FREE) {  
            fprintf(fout, "|   ---   |%#12x |%11u |\n", node->block.address, node->block.size);
        }
        binTreePrintFree(fout, node->right);
    }

    void buddyPrintHeader(FILE * fout, uint32_t type){
        fprintf(fout, "+====================================+\n");
        if(type == 0){
            fprintf(fout, "| BuddySystem memory occupied blocks |\n");

        }else if(type == 1){
            fprintf(fout, "|   BuddySystem memory free blocks   |\n");
        }else{
            throw Exception(EINVAL, __func__);
        }
        fprintf(fout, "+---------+-------------+------------+\n");
        fprintf(fout, "|   PID   |   address   |    size    |\n");
        fprintf(fout, "+---------+-------------+------------+\n");
    }

    void buddyPrint(FILE *fout){
        buddyPrintHeader(fout, 0);
        binTreePrintOccupied(fout, memTreeRoot);
        fprintf(fout, "+====================================+\n");

        fprintf(fout,"\n");

        buddyPrintHeader(fout, 1);
        binTreePrintFree(fout, memTreeRoot);
        fprintf(fout, "+====================================+\n");
        fprintf(fout,"\n");

    }
    void memPrint(FILE *fout)
    {
        soProbe(503, "%s(\"%p\")\n", __func__, fout);

        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        if(memParameters.policy == FirstFit){
            ffPrint(fout);
        }else if(memParameters.policy == BuddySystem){
            buddyPrint(fout);
        }else{
            throw Exception(EINVAL, __func__);
        }


    }

// ================================================================================== //

} // end of namespace group

