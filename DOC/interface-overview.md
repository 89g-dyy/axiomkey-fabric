# Interface Overview

The Excel pin maps under `HW/*/Pinmaps/` are the authoritative detailed definitions. This document provides a review index, not a substitute for the workbooks.

## BKEY Key Groups

| Group | Pins | Notes |
| --- | --- | --- |
| USB 2.0 | 7, 9 | BKEY USB Device through a dedicated Hub downstream port |
| REFCLK | 29, 31 | Differential reference clock or alternate GPIO |
| LANE0 | 35, 37 | Differential resource or alternate GPIO |
| LANE1 | 41, 43 | Differential resource or alternate GPIO |
| LANE2 | 47, 49 | Differential resource or alternate GPIO |
| LANE3 | 53, 55 | Differential resource or alternate GPIO |
| UART0 | 44, 46 | BKEY TX and RX respectively |
| Interrupt / DRDY | 48 | Default low-active open-drain interrupt |
| I2C | 50, 52 | SDA and SCL respectively |
| SPI | 54-66 even pins | CS0, CLK, MISO, MOSI, CS1, CS2, CS3 |
| 32.768 kHz | 68 | Buffered clock input or alternate GPIO |
| Presence | 67 | BKEY ties low; baseboard pulls up and detects |
| VIO configuration | 73 | GND selects 3.3 V; high impedance selects 1.8 V |

## Change Rules

- The MKEY pin map is fixed unless an explicit interface revision is approved.
- A BKEY reassignment requires a review of baseboard routing and all existing sensor modules.
- Pin names, schematic net names, and firmware identifiers should retain `M_`, `B_`, or board-specific prefixes to prevent accidental net merging.
- Unsupported signals remain unconnected or in their documented inactive state.
- MKEY USB role changes must use the approved switch-control sequence; firmware must not enable USB-A VBUS while the Hub route is active.
