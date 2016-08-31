/*
 * BluetoothProtocol.h
 *
 *  Created on: 28.01.2015
 *      Author: SteurerE
 */


#include <DAVE3.h>
#include "../../inc/LIBS/types.h"
#include <stdlib.h>
#include <string.h>

#ifndef SERIAL_CMD_H_
#define SERIAL_CMD_H_

#define BLUETOOTH_INPUT_BUFFER 32
#define OUTPUT_BUFFER 10
#define HARDWARE_BUFFER_SIZE 32
#define HARDWARE_BUFFER_WORD_SIZE 8
#define PACKET_SIZE 19
#define PACKET_HEADER 1
#define PACKET_CHECKSUM 4
#define DATA_SIZE 14

#define RECEIVED_DATA_PACKET 1
#define RECEIVED_DATA_PACKET_N_C 2
#define RECEIVED_CONTROL_PACKET 0
#define CHECKSUM_ERROR -1
#define UNDEFINED_ERROR -2
#define MEMERROR -3

typedef struct _DATA_PACKET_
{
uint8_t cmd[DATA_SIZE*3];
uint8_t character_count;
}DataPacket;

typedef struct _CONTROL_VALUE_
{
uint8_t* header;
uint8_t* height_control;
uint8_t* speed;
float* z_rotate;
float* x_pitch;
float* y_roll;
uint32_t* checksum;
}ControlValue;

void initBluetoothStorage();
//status_t initBluetoothStorage(ControlValue* control_value);
status_t maintainBluetoothInputBuffer(uint8_t input_buffer[BLUETOOTH_INPUT_BUFFER],ControlValue *control_value, DataPacket* packet);


#endif /* SERIAL_CMD_H_ */
