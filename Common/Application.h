/*
 * Application.h
 *
 *  Created on: 26.09.2014
 *      Author: tbsimmen
 * Interface to the main application module.
 * From here the application runs and performs all tasks.
 */

#ifndef APPLICATION_H_
#define APPLICATION_H_

/*!
 * \brief Debug printing function
 * \param str Debug string to print
 */
void APP_DebugPrint(unsigned char *str);


/*!
 * \brief Application main start and main routine
 */
void APP_Start(void);

void SumoInit(void);

#endif /* APPLICATION_H_ */
