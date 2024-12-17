/*
 *  \author Alexandre Costa Martins - 103552
 */

#include "somm23.h"
#include <regex>
#include <sstream>
#include <string.h>
#include <string>

namespace group {

// ================================================================================== //

bool lineIsSkippable(std::string line);
bool pidExists(uint32_t pid);
bool arrivalIsValid(uint32_t arrivalTime);

void simLoad(const char *fname) {
    soProbe(104, "%s(\"%s\")\n", __func__, fname);

    require(fname != NULL, "fname can not be a NULL pointer");
    require(forthcomingTable.count == 0, "Forthcoming table should be empty");

    /* TODO POINT: Replace next instruction with your code */
    FILE *file = fopen(fname, "r");
    if (file == NULL) {
        throw Exception(errno, __func__);
    }

    char *line = NULL;
    size_t len = 0;
    while (getline(&line, &len, file) != -1) {
        // remove all whitespace
        std::string trimmedLine = std::regex_replace(line, std::regex("\\s+"), "");

        if (lineIsSkippable(trimmedLine)) {
            continue;
        }

        uint32_t pid;
        uint32_t arrivalTime;
        uint32_t lifetime;
        char *addressSpaceBuffer = new char[trimmedLine.length() + 1];
        // fill string with spaces
        for (size_t i = 0; i < strlen(addressSpaceBuffer); i++) {
            addressSpaceBuffer[i] = 32;
        }

        int result = sscanf(trimmedLine.c_str(), "%u;%u;%u;%s", &pid, &arrivalTime, &lifetime, addressSpaceBuffer);
        std::string addressSpaceStr = std::regex_replace(addressSpaceBuffer, std::regex("\\s+"), "");

        // if unsuccessful sscanf
        if (result < 3 || (result == 3 && !addressSpaceStr.empty())) {
            fprintf(stderr, "Syntax error in line: %s\n", trimmedLine.c_str());
            throw Exception(EINVAL, __func__);
        }

        require(pid > 0, "process ID must be non-zero");

        if (pidExists(pid)) {
            fprintf(stderr, "simLoad: PID must be unique\n");
            throw Exception(EINVAL, __func__);
        }

        if (!arrivalIsValid(arrivalTime)) {
            fprintf(stderr, "simLoad: arrival time must be in ascending order\n");
            throw Exception(EINVAL, __func__);
        }

        require(lifetime > 0, "arrival time must be greater than zero");

        AddressSpaceProfile addressSpace;
        addressSpace.size[0] = 0;
        uint32_t segmentCount = 0;
        if (!addressSpaceStr.empty()) {
            std::regex pattern("[0-9]+(,[0-9]+)*");

            if (!std::regex_match(addressSpaceStr, pattern)) {
                fprintf(stderr, "simLoad: address space must be a comma-separated sequence of segment sizes\n");
                throw Exception(EINVAL, __func__);
            }

            // strtok until end of string
            char *segmentSizeStr = strtok(addressSpaceBuffer, ",");
            for (; segmentSizeStr != NULL; segmentCount++) {
                if (segmentCount >= MAX_BLOCKS) {
                    fprintf(stderr, "simLoad: too many segments\n");
                    throw Exception(EINVAL, __func__);
                }
                uint32_t segmentSize = strtoul(segmentSizeStr, NULL, 10);
                addressSpace.size[segmentCount] = segmentSize;
                segmentSizeStr = strtok(NULL, ",");
            }
        }
        addressSpace.segmentCount = segmentCount;
        forthcomingTable.process[forthcomingTable.count].pid = pid;
        forthcomingTable.process[forthcomingTable.count].arrivalTime = arrivalTime;
        forthcomingTable.process[forthcomingTable.count].lifetime = lifetime;
        forthcomingTable.process[forthcomingTable.count].addressSpace = addressSpace;
        forthcomingTable.count++;
        feqInsert(FutureEventType::ARRIVAL, arrivalTime, pid);
    }

} // end of namespace group

bool lineIsSkippable(std::string line) {
    return line.empty() || std::all_of(line.begin(), line.end(), isspace) || line[0] == '%';
}

bool pidExists(uint32_t pid) {
    for (uint32_t i = 0; i < forthcomingTable.count; i++) {
        if (forthcomingTable.process[i].pid == pid) {
            return true;
        }
    }
    return false;
}

bool arrivalIsValid(uint32_t arrivalTime) {
    if (forthcomingTable.count > 0) {
        if (arrivalTime < forthcomingTable.process[forthcomingTable.count - 1].arrivalTime) {
            return false;
        }
    }
    return true;
}
} // namespace group