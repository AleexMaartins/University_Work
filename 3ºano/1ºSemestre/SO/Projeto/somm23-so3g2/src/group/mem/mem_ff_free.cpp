/*
 *  \author Diogo Branco Alves da Silva - 1043431
 */

#include "somm23.h"

#include <stdint.h>
namespace group 
{

// ================================================================================== //
    void mergeFreeBlocks(MemListNode * aux){
        //Check if the auxiliary node and the previous node are contiguous and merge if they are
        if(aux->prev != nullptr && aux->prev->block.pid == 0 && aux->prev->block.address + aux->prev->block.size == aux->block.address){
            aux->prev->block.size += aux->block.size;
            aux->prev->next = aux->next;
            if(aux->next != nullptr){
                aux->next->prev = aux->prev;
            }
            delete aux;
            aux = aux->prev;
        }
        //Check if the auxiliary node and the next node are contiguous and merge if they are
        if(aux->next != nullptr && aux->next->block.pid == 0 && aux->block.address + aux->block.size == aux->next->block.address){
            aux->block.size += aux->next->block.size;
            MemListNode * toDelete = aux->next;
            aux->next = toDelete->next;
            if(toDelete->next != nullptr){
                toDelete->next->prev = aux;
            }
            delete toDelete;
        }
    }
    
    void freeBlock(Address address)
    {
        MemListNode * current = memOccupiedHead;
        MemListNode * previous = nullptr;
        //we search for the block with the address to free
        while(current != nullptr){
            if(current->block.address == address){
                if(previous != nullptr){
                    previous->next = current->next;
                }else{
                    memOccupiedHead = current->next;
                }
                // Add the block to the free list in the correct position
                MemListNode * freeCurrent = memFreeHead;
                MemListNode * freePrevious = nullptr;
                while(freeCurrent != nullptr && freeCurrent->block.address < current->block.address){
                    freePrevious = freeCurrent;
                    freeCurrent = freeCurrent->next;
                }
                //we found the correct position
                if(freePrevious != nullptr){
                    freePrevious->next = current;
                }else{
                    memFreeHead = current;
                }
                current->next = freeCurrent;
                current->block.pid = 0;
                return;
            }
            previous = current;
            current = current->next;
        }
        throw Exception(EINVAL, __func__);    
    }

    bool isValidAddress(Address address){
        MemListNode * current = memOccupiedHead;
        while(current != nullptr){
            if(address >= current->block.address && address < current->block.address + current->block.size){
                return true;
            }
            current = current->next;
        }
        return false;
    }

    void memFirstFitFree(Address address)
    {
        soProbe(508, "%s(0x%x)\n", __func__, address);

        require(memOccupiedHead != NULL, "Occupied list should contain nodes");

        //check if the address is valid
        if(!isValidAddress(address)){
            throw Exception(EINVAL, __func__);
        }

        //Free the block
        freeBlock(address);

        //merge free blocks
        MemListNode * aux = memFreeHead;
        while(aux != nullptr){
            mergeFreeBlocks(aux);
            aux = aux->next;
        }
    }

// ================================================================================== //

} // end of namespace group

