

/*************************************************************************************************************************
 * File: sd_file_operations.h
 * Author: pavel
 * Description: This header file contains declarations for functions related to file handling.
 *              It includes necessary header files such as <stdint.h>, "fatfs.h", and "ff.h".
 *              It also defines macros for controlling delay (SD_FILE_DELAY), starting delay (START_DELAY),
 *              and buffer size (BUFFER_SD).
 *              The enumeration FileReadStatus defines possible return values for file read operations.
 *              The function SDFileGetSize() retrieves the size of a file located at the specified path.
 *              The function readFileAndProcessData() reads data from a file and processes it using a specified function.
 *              This file serves as a header for the implementation of file handling functionality.
****************************************************************************************************************************/

#ifndef SD_FILE_OPERATIONS_H
#define SD_FILE_OPERATIONS_H

#include <stdint.h>
#include "fatfs.h"
#include "ff.h" // Include FATFS library
#include <stdio.h>

#define SD_FILE_DELAY(x) HAL_Delay(x)
#define START_DELAY 8000
#define BUFFER_SD 512


// Enum defining possible return values for file read operation
typedef enum {
    FILE_READ_SUCCESS = 0,   // File read operation successful
    FILE_READ_OPEN_ERROR,    // Error opening the file
    FILE_READ_ERROR          // Error occurred during file read operation
} FileReadStatus;

/**
 * @brief Gets the size of a file located at the specified path.
 *
 * This function opens the file specified by the given path for reading.
 * It then retrieves the size of the file and returns it as a uint32_t value.
 * If there is any error during file opening, the function returns 0.
 *
 * @param fp Pointer to the FIL structure representing the file.
 * @param path Pointer to the path of the file whose size is to be retrieved.
 * @param mode Access mode for opening the file.
 * @return Returns the size of the file in bytes if successful, otherwise returns 0.
 */
uint32_t SDFileGetSize(FIL* fp, const TCHAR* path, BYTE mode);
typedef void (*ProcessBufferFunc)(uint8_t*, size_t);

/**
 * @brief Reads data from a file and processes it using a specified function.
 *
 * This function opens the specified file and reads data from it into a buffer of the set size.
 * It then calls the provided function with parameters (uint8_t*, size_t) to process the buffer.
 * This process continues until the entire file is read.
 *
 * @param filename The name of the file to be read.
 * @param processBuffer A function pointer to the function that processes the buffer.
 * @return FileReadStatus indicating the status of the file read operation.
 */
FileReadStatus readFileAndProcessData(const char* filename, ProcessBufferFunc processBuffer);

#endif /* SD_FILE_OPERATIONS_H */
