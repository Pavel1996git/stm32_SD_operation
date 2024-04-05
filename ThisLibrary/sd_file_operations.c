/*
 * SD16to8bit.c
 *
 *  Created on: Mar 26, 2024
 *      Author: pavel
 */

#include "sd_file_operations.h"
#include <stdio.h>
#include "stm32f1xx_hal.h"
#include "stm32f1xx_hal_tim.h"

// Definitions
const uint32_t BUFFER_SIZE8_SD = BUFFER_SD;


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
uint32_t SDFileGetSize(FIL* fp, const TCHAR* path, BYTE mode) {
    // Open the file for reading
    FRESULT fres = f_open(fp, path, mode);
    if (fres != FR_OK) {
        // Error opening the file, return 0
        return 0;
    }

    // Get the size of the file
    uint32_t fileSize = f_size(fp);

    // Close the file
    f_close(fp);

    // Return the size of the file
    return fileSize;
}

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
FileReadStatus readFileAndProcessData(const TCHAR* filename, ProcessBufferFunc processBuffer) {
    SD_FILE_DELAY(START_DELAY);
    FIL file;                   // File object
    UINT bytesRead;             // Number of bytes read from the file
    char buffer[BUFFER_SIZE8_SD]; // Buffer for reading file data
    uint32_t countRead =0;
    FRESULT fres;               // Variable to store file operation results
    FATFS Fs;                   // File system structure

    fres = f_mount(&Fs, "", 1);    // 1=mount now
    if (fres != FR_OK) {
        return FILE_READ_OPEN_ERROR;
    }

    // Open the file for reading
    if (f_open(&file, filename, FA_READ) != FR_OK) {
        return FILE_READ_OPEN_ERROR;
    }

    // Variable to track the position in the file
    DWORD filePosition = 0;

    // Read the contents of the file
    while (1) {
        // Read data from the file into the buffer
        if (f_read(&file, buffer, BUFFER_SIZE8_SD, &bytesRead) != FR_OK) {
            f_close(&file); // Close the file before exiting
            return FILE_READ_ERROR;
        }
        ++countRead;

        // If all data has been read from the file, exit the loop
        if (bytesRead == 0) {
            break;
        }
        SysTick->CTRL &= ~SysTick_CTRL_ENABLE_Msk;
        // Process the read data, for example, output it to the console
        // (Replace this part of the code with your data processing logic)
        processBuffer(buffer, bytesRead);
        SysTick->CTRL |= SysTick_CTRL_ENABLE_Msk;
        // Update the file position
        filePosition += bytesRead;

        // Move the file pointer to the current position
        if (f_lseek(&file, filePosition) != FR_OK) {
            f_close(&file); // Close the file before exiting
            return FILE_READ_ERROR;
        }
    }

    // Close the file after reading
    f_close(&file);

    // Unmount the SD card with integrity check
    if (f_mount(NULL, "0:/", 1) != FR_OK) {
        return FILE_READ_OPEN_ERROR;
    }

    return FILE_READ_SUCCESS;
}

