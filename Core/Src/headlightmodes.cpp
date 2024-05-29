/*
 * headlightmodes.cpp
 *
 *  Created on: Nov 23, 2020
 *      Author: jan
 */


#include <headlightmodes.h>

void cLights::init(uint_fast16_t af_dev_max_count){
	f_dev_counter = 0;
	f_dev_max_count = af_dev_max_count;
}



// in 100Hz loop
void cLights::set_lights(){


	if(RIGHT_INDICATOR || EMEREGENCY_LIGHT){
		if(f_dev_counter<=(f_dev_max_count/2)){
			HAL_GPIO_WritePin(OUT2_GPIO_Port, OUT2_Pin,GPIO_PIN_SET);
		}
		else {
			HAL_GPIO_WritePin(OUT2_GPIO_Port, OUT2_Pin,GPIO_PIN_RESET);
		}

	}
	else {
		HAL_GPIO_WritePin(OUT2_GPIO_Port, OUT2_Pin,GPIO_PIN_RESET);
	}


	if(LEFT_INDICATOR || EMEREGENCY_LIGHT){
		if(f_dev_counter<=(f_dev_max_count/2)){
			HAL_GPIO_WritePin(OUT3_GPIO_Port, OUT3_Pin,GPIO_PIN_SET);
		}
		else {
			HAL_GPIO_WritePin(OUT3_GPIO_Port, OUT3_Pin,GPIO_PIN_RESET);
		}

	}
	else {
		HAL_GPIO_WritePin(OUT3_GPIO_Port, OUT3_Pin,GPIO_PIN_RESET);
	}



	//HAL_GPIO_WritePin(OUT1_GPIO_Port, OUT1_Pin, GPIO_PinState(LONG_LIGHT));

	HAL_GPIO_WritePin(OUT4_GPIO_Port, OUT4_Pin, GPIO_PinState(ANIT_FOG));

	HAL_GPIO_WritePin(OUT5_GPIO_Port, OUT5_Pin, GPIO_PinState(SHORT_LIGHT));

	HAL_GPIO_WritePin(OUT6_GPIO_Port, OUT6_Pin, GPIO_PinState(LONG_LIGHT));

	HAL_GPIO_WritePin(OUT7_GPIO_Port, OUT7_Pin, GPIO_PinState(REVERSE_LIGHT));

	HAL_GPIO_WritePin(OUT8_GPIO_Port, OUT8_Pin, GPIO_PinState(DAY_LIGHT));

	HAL_GPIO_WritePin(OUT9_GPIO_Port, OUT9_Pin, GPIO_PinState(PARKING_LIGHT));

	HAL_GPIO_WritePin(OUT10_GPIO_Port, OUT10_Pin, GPIO_PinState(INSIDE_LIGHT));

	f_dev_counter++;
	if(f_dev_counter>=f_dev_max_count)f_dev_counter = 0;

}




void cLights::update(uint8_t light, uint8_t value){

	switch(light){

	case 1:{
		LONG_LIGHT = value;
		break;
	}

	case 2:{
		RIGHT_INDICATOR = value;
		break;
	}

	case 3:{
		LEFT_INDICATOR = value;
		break;
	}

	case 4:{
		ANIT_FOG = value;
		break;
	}

	case 5:{
		SHORT_LIGHT = value;
		break;
	}

	case 6:{
		EMEREGENCY_LIGHT = value;
		break;
	}

	case 7:{
		REVERSE_LIGHT = value;
		break;
	}

	case 8:{
		DAY_LIGHT = value;
		break;
	}

	case 9:{
		PARKING_LIGHT = value;
		break;
	}

	case 10:{
		INSIDE_LIGHT = value;
		break;
	}

	default:{
		break;
	}

	}

}



