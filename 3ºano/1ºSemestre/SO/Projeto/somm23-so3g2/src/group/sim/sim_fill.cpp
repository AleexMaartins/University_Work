/*
 *  \author Alexandre Costa Martins - 103552
 */

#include "somm23.h"
#include <cstdlib>
#include <unistd.h>
namespace group {
bool pidExists(uint32_t pid);
int getRandom(int lower, int upper);

// ================================================================================== //
void simRandomFill(uint32_t n, uint32_t seed) {
    soProbe(105, "%s(%u, %u)\n", __func__, n, seed);

    require(n == 0 or n >= 2, "At least 2 processes are required");
    require(n <= MAX_PROCESSES, "More than MAX_PROCESSES processes not allowed");

    uint32_t GENERATOR_SEED = seed == 0 ? getpid() : seed;
    srand(GENERATOR_SEED);

    uint32_t PROCESS_COUNT = n == 0 ? getRandom(2, MAX_PROCESSES) : n;

    for (uint32_t i = 0; i < PROCESS_COUNT; i++) {
        uint32_t pid;
        do {
            pid = getRandom(1, 65535);
        } while (group::pidExists(pid));

        uint32_t arrivalTime = getRandom(i * 100, i * 100 + 100);
        uint32_t lifetime = getRandom(10, 1000);
        uint32_t segment_count = getRandom(1, MAX_SEGMENTS);

        AddressSpaceProfile addressSpace;
        addressSpace.segmentCount = segment_count;

        for (uint32_t i = 0; i < segment_count; i++) {
            uint32_t segment_size = getRandom(0x100, 0x800);
            addressSpace.size[i] = segment_size;
        }
        forthcomingTable.process[forthcomingTable.count].pid = pid;
        forthcomingTable.process[forthcomingTable.count].arrivalTime = arrivalTime;
        forthcomingTable.process[forthcomingTable.count].lifetime = lifetime;
        forthcomingTable.process[forthcomingTable.count].addressSpace = addressSpace;
        forthcomingTable.count++;
        feqInsert(FutureEventType::ARRIVAL, arrivalTime, pid);
    }
}

// ================================================================================== //

int getRandom(int lower, int upper) { return (rand() % (upper - lower + 1)) + lower; }

} // end of namespace group