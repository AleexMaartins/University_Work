/*
 *  \author Henrique Cristóvão Coelho - 108342
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    bool simStep()
    {
        soProbe(107, "%s()\n", __func__);

        // to test swap and discard i used this command : ./bin/main -b -P 100-599 -m 0x1000 -k 0x100 , with the test at my own main.cpp

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        if (feqIsEmpty()){
            return false;
        }
        else{   
            // --- An event should be fetched from the future event queue and processed. ---
            FutureEvent event = feqPop();           // Fetch an event from the future event queue
            
            // --- The processing to be done depends on the event type, ARRIVAL or TERMINATE. ---
            // Get Event Type
            FutureEventType type = event.type;

            simTime = event.time;
            stepCount++;

            

            if (type == ARRIVAL){
                // An ARRIVAL event firstly cause the addition of a NEW process to the set of active processes. 
                // arrivaltime->time;
                // simtime , simcount
                
                ForthcomingProcess *forthcomingProcess = simGetProcess(event.pid);
                pctInsert(forthcomingProcess->pid, forthcomingProcess->arrivalTime, forthcomingProcess->lifetime, &forthcomingProcess->addressSpace);
                //printf("id: %d, arrivalTime: %d, lifetime: %d, addressSpace: %d\n", forthcomingProcess->pid, forthcomingProcess->arrivalTime, forthcomingProcess->lifetime, &forthcomingProcess->addressSpace);
                
                // mem alloc, discard -> if impossible_mapping
                // mem alloc, swapped -> if null_address
                // Then, depending on memory requestements and memory availability, the new process changes state to ACTIVE, SWAPPED or DISCARDED.                
                // memory requestements - profile (addressSpace)
                // memory availability - memalloc

                // memalloc
                AddressSpaceMapping *memallocmapping = memAlloc(forthcomingProcess->pid, &forthcomingProcess->addressSpace);
                if (memallocmapping == IMPOSSIBLE_MAPPING){
                    // discard
                    pctUpdateState(forthcomingProcess->pid, DISCARDED);
                }
                else if (memallocmapping == NULL_ADDRESS){
                    // swapped
                    swpAdd(forthcomingProcess->pid, &forthcomingProcess->addressSpace);
                    pctUpdateState(forthcomingProcess->pid, SWAPPED);
                }
                else{
                    // active
                    // memalloc success
                    feqInsert(TERMINATE,forthcomingProcess->lifetime+simTime,forthcomingProcess->pid); // verify time
                    pctUpdateState(forthcomingProcess->pid, ACTIVE,event.time,memallocmapping);
                }

            }else if (type == TERMINATE){
                
                AddressSpaceMapping *memallocmapping = pctGetAddressSpaceMapping(event.pid);
                // memfree
                memFree(memallocmapping);

                pctUpdateState(event.pid, FINISHED,simTime);

                // percorrer a swpqueue
                uint32_t i = 0;
                while(true){
                    SwappedProcess *swappedProcess = swpPeek(i);
                    if (swappedProcess == NULL){
                        break;
                    }
                    // memalloc
                    AddressSpaceMapping *memallocmapping = memAlloc(swappedProcess->pid, pctGetAddressSpaceProfile(swappedProcess->pid));
                    if (memallocmapping == NULL_ADDRESS){
                        // memalloc fail, so lets try the next swapped process
                        i++;
                    }
                    else{
                        // memalloc success
                        feqInsert(TERMINATE,pctGetLifetime(swappedProcess->pid)+simTime,swappedProcess->pid); // verify time
                        pctUpdateState(swappedProcess->pid, ACTIVE,event.time,memallocmapping);
                        swpRemove(i);
                        i = 0;
                    }
                }   
            }
            return true;
        }
    }

// ================================================================================== //

} // end of namespace group

