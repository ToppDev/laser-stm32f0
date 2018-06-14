/**
  * @file main.h
  * @author Thomas Topp
  * @date 14 June 2018
  * @brief Main File of Program
  */

#ifndef MAIN_H_
#define MAIN_H_

#define EXIT_SUCCESS 0 ///< On successful Program Exit
#define EXIT_FAILURE 1 ///< On program Exit because of failure

#define APP_STATE_FAILURE 100 ///< Start Index of Failures

/// App State Enumeration
typedef enum _AppState_t {
    AS_Initializing,
    AS_Ready,
    AS_Failure = APP_STATE_FAILURE,
    AS_Failure_HAL_Init,
    AS_Failure_DigIO_Init,
} AppState_t;

AppState_t appState; ///< App State of the Program

int isAppStateFailure();
void exitProgram(AppState_t failureAppState);

#endif /* MAIN_H_ */
