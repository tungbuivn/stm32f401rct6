# STM32F401RCT6 Project

This project is based on the STM32F401RCT6 microcontroller, which offers an excellent balance of performance, features, and cost. This board is cheaper than the STM32F401CCU6 while maintaining the same pinout, clock speed, and flash size.

## Hardware Specifications

- Microcontroller: STM32F401RCT6
- Core: ARM Cortex-M4
- Clock Speed: 84 MHz
- Flash Memory: 256KB
- RAM: 64KB
- Package: LQFP64

## Development Environment

This project uses PlatformIO as the development environment with the following configuration:

- Platform: STM32
- Framework: Arduino
- Board: TBT_STM32F401RC
- Upload Protocol: ST-Link

## Project Setup

1. Install PlatformIO IDE
2. Clone this repository
3. Open the project in PlatformIO
4. Build and upload using the PlatformIO toolbar

## Configuration Details

The project uses custom board configuration located in the `plio/boards` directory. Key settings include:

- CPU Frequency: 84MHz
- HSE Value: 25MHz
- USB Support: Enabled (CDC)
- UART and USB modules enabled

## Project Structure

```
stm32f401RCT6/
├── .pio/               # PlatformIO build files
├── .vscode/           # VSCode configuration
├── plio/              # Custom board configurations
│   ├── boards/       # Board definitions
│   └── variants/     # Board variants
├── src/              # Source code
└── platformio.ini    # Project configuration
```

## Pin Mapping and GPIO Configuration

### GPIO Pins Overview
The STM32F401RCT6 comes in a 64-pin LQFP package with multiple GPIO ports:

#### Port A (PA0-PA15)
- PA0-PA7: Analog capable pins (ADC inputs)
- PA8-PA15: Digital I/O pins
- Special functions:
  * PA9/PA10: USART1 (TX/RX)
  * PA11/PA12: USB (D-/D+)
  * PA13/PA14: SWD Programming (SWDIO/SWCLK)

#### Port B (PB0-PB15)
- PB0-PB1: Additional analog inputs
- PB3-PB5: SPI1 (SCK/MISO/MOSI)
- PB6/PB7: I2C1 (SCL/SDA)
- PB8/PB9: Alternative I2C1 pins
- Other pins: General purpose I/O

#### Port C (PC0-PC15)
- PC0-PC5: Analog capable pins
- PC13: Built-in LED
- PC14/PC15: External crystal pins (optional)
- Other pins: General purpose I/O

#### Port D
- PD2: General purpose I/O


### Default Pin Assignments
- Built-in LED: PC13
- USB: PA11 (D-), PA12 (D+)
- SWD Programming:
  * SWDIO: PA13
  * SWCLK: PA14

### Analog Pins
Total analog inputs: 16
- PA0-PA7 (ADC channels 0-7)
- PB0-PB1 (ADC channels 8-9)
- PC0-PC5 (ADC channels 10-15)

### Communication Interfaces
1. USART/UART:
   - USART1: PA9 (TX), PA10 (RX)
   - USART2: PA2 (TX), PA3 (RX)

2. I2C:
   - I2C1: PB6 (SCL), PB7 (SDA)
   - Alternative: PB8 (SCL), PB9 (SDA)

3. SPI:
   - SPI1: PB3 (SCK), PB4 (MISO), PB5 (MOSI)

4. USB:
   - USB D-: PA11
   - USB D+: PA12


## Upload Instructions

The project is configured to use ST-Link for uploading. Ensure your board is properly connected via ST-Link before uploading.
