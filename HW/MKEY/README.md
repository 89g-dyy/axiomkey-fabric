# MKEY Core Modules

MKEY modules host MCU, SoC, or FPGA devices from multiple vendors. The connector definition is fixed, while implementation capability varies by module.

## Source of Truth

[`Pinmaps/MKEY_IO_MAP.xlsx`](Pinmaps/MKEY_IO_MAP.xlsx)

Each module directory added under `CAD/` should include a capability declaration covering:

- processor or FPGA part number;
- supported VIO and power consumption;
- implemented USB, SPI, I2C, UART, clock, and differential functions;
- boot and debug behavior;
- unsupported pins and their electrical state.
- USB Device/Host support, role-control method, and safe reset default.
