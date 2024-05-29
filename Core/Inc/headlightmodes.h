/*
 * headlightmodes.h
 *
 *  Created on: Nov 23, 2020
 *      Author: jan
 */

#ifndef INC_HEADLIGHTMODES_H_
#define INC_HEADLIGHTMODES_H_

#ifdef __cplusplus
 extern "C" {
#endif



#include "main.h"
#include <stdbool.h>


#define LI OUT1_Pin
#define LI_port OUT1_GPIO_Port





typedef enum STATE {OFF, ON} STATE;




class cLights{

private:
	uint_fast16_t f_dev_counter;
	uint_fast16_t f_dev_max_count;
	bool RIGHT_INDICATOR = 0;
	bool LEFT_INDICATOR = 0;
	bool LONG_LIGHT =0;
	bool SHORT_LIGHT =1;
	bool EMEREGENCY_LIGHT = 0;
	bool BREAK_LIGHT = 0;
	bool REVERSE_LIGHT = 0;
	bool DAY_LIGHT = 0;
	bool ANIT_FOG = 0;
	bool PARKING_LIGHT = 0;
	bool INSIDE_LIGHT = 0;




public:
	void init(uint_fast16_t af_dev_max_count);
	//use in 100Hz loop
	void set_lights();
	void update(uint8_t light, uint8_t value);

};


//  to run in 1.5Hz loop
//void set_indicator_lights(STATE state);


#ifdef __cplusplus
}
#endif


#endif /* INC_HEADLIGHTMODES_H_ */
