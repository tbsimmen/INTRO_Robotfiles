/**
 * \file
 * \brief This is a main configuration file for the RNet stack
 * \author (c) 2013-2014 Erich Styger, http://mcuoneclipse.com/
 * \note MIT License (http://opensource.org/licenses/mit-license.html)
 *
 * With this header file, the stack is configured. It sets the configuration defaults.
 * The application can overwrite the configuration with a RNet_AppConfig.h header file.
 */

#ifndef RNETCONF_H_
#define RNETCONF_H_

#include "RNET1.h"  /* component main header file */
#include "RNet_AppConfig.h" /* User application configuration file */

/* Default configuration items, can be overwritten by the application configuration header file: */
#define RNET_CONFIG_TRANSCEIVER_NRF24   1 
  /*!< Nordic Semiconductor nRF24L01+ */
#define RNET_CONFIG_TRANSCEIVER_MC13201 2
  /*!< Freescale MC13201/MC13213 */

#define RNET_CONFIG_TRANSCEIVER_TYPE  RNET_CONFIG_TRANSCEIVER_NRF24
  /*!< Transceiver type used */

#if RNET_CONFIG_TRANSCEIVER_TYPE==RNET_CONFIG_TRANSCEIVER_NRF24
/* nRF24L01+ specific settings */
#ifndef RNET_CONFIG_NRF24_DATA_RATE
#define RNET_CONFIG_NRF24_DATA_RATE  (RF1_RF_SETUP_RF_DR_1000)
  /*!< default transceiver data rate */
#endif

#endif /* RNET_CONFIG_TRANSCEIVER_TYPE==RNET_CONFIG_TRANSCEIVER_NRF24 */

#if RNET_CONFIG_TRANSCEIVER_TYPE==RNET_CONFIG_TRANSCEIVER_MC13201
/* MC1320x specific settings */
#ifndef RNET_CONFIG_SMAC_OUPTUT_POWER
#define RNET_CONFIG_SMAC_OUPTUT_POWER  (RF1_RF_SETUP_RF_DR_1000)
  /*!< default transceiver data rate */
#endif

#endif /* RNET_CONFIG_TRANSCEIVER_TYPE==RNET_CONFIG_TRANSCEIVER_MC13201 */

#ifndef RNET_CONFIG_TRANSCEIVER_PAYLOAD_SIZE
#define RNET_CONFIG_TRANSCEIVER_PAYLOAD_SIZE  (32)
  /*!< Size of the physical transceiver payload (bytes), max 32 bytes for nRF24L01+, max 128 bytes for MC1320x */
#endif

#ifndef RNET_CONFIG_TRANSCEIVER_CHANNEL
#define RNET_CONFIG_TRANSCEIVER_CHANNEL  (99)
  /*!< default radio channel of transceiver */
#endif

#ifndef RNET_CONFIG_SHORT_ADDR_SIZE
#define RNET_CONFIG_SHORT_ADDR_SIZE   (1) 
  /*!< size of short address type. Either 1 or 2 */
#endif

#ifndef RNET_CONFIG_USE_ACK
#define RNET_CONFIG_USE_ACK           (0)
  /*!< If set to 1, the NWK layer will send an acknowledge message for every data packet received */
#endif

#ifndef RNET_CONFIG_SEND_RETRY_CNT
#define RNET_CONFIG_SEND_RETRY_CNT    (3)
  /*!< Number of retries if message sending failed. Set to zero to disable retry. */
#endif

/* Configuration for Rx and Tx queues */
#ifndef RNET_CONFIG_MSG_QUEUE_NOF_RX_ITEMS
#define RNET_CONFIG_MSG_QUEUE_NOF_RX_ITEMS        (6)
  /*!< Number items in the Rx message queue. The higher, the more items can be buffered. */
#endif

#ifndef RNET_CONFIG_MSG_QUEUE_NOF_TX_ITEMS
#define RNET_CONFIG_MSG_QUEUE_NOF_TX_ITEMS        (6)
  /*!< Number items in the Tx message queue. The higher, the more items can be buffered. */
#endif

#ifndef RNET_CONFIG_MSG_QUEUE_PUT_BLOCK_TIME_MS
#define RNET_CONFIG_MSG_QUEUE_PUT_BLOCK_TIME_MS   (200/portTICK_RATE_MS)
  /*!< Blocking time for putting items into the message queue before timeout. Use portMAX_DELAY for blocking. */
#endif

#ifndef RNET_CONFIG_REMOTE_STDIO
#define RNET_CONFIG_REMOTE_STDIO        (1)
  /*!< 1 for remote stdio over radio enabled, 0 for disabled. */
#endif


#endif /* RNETCONF_H_ */

