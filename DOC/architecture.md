# System Architecture

## Board Roles

### Baseboard

Baseboard V1 uses an ESP32-S3 as the platform management controller. It owns gateway services, MKEY/BKEY insertion detection, power management, onboard environmental temperature and humidity monitoring, TF-card black-box logging, USB Hub routing, USB role-route switching, switches, protection, clock distribution, and the physical mapping between MKEY and BKEY. It must not assume that equal connector pin numbers carry equal functions.

The ESP32-S3 manages platform infrastructure; it does not replace the MKEY module's application processor, MCU, SoC, or FPGA role.

### MKEY Core Module

The MKEY module hosts an MCU, SoC, or FPGA. Multiple vendors and device families are expected. Its released pin map is fixed; individual modules may implement only a subset of optional functions.

### BKEY Sensor Module

The BKEY module hosts a replaceable sensor or sensor subsystem. A board may use USB, SPI, I2C, UART, GPIO, clock, or differential resources according to its declared capability.

## USB Topology

The external computer is the Host for the upstream port of the baseboard USB Hub. BKEY uses its assigned downstream path when USB is implemented.

MKEY controls the role of its own USB controller and selects one of two mutually exclusive routes:

| MKEY mode | Data route | VBUS behavior |
| --- | --- | --- |
| Device | MKEY to baseboard USB Hub downstream port | MKEY senses/consumes device-side VBUS as required by its PHY |
| Host | MKEY to adjacent USB-A Host receptacle | MKEY/baseboard-controlled power switch sources protected VBUS to USB-A |

The Hub path and USB-A path must never be electrically active at the same time. The released design must define the switch default state, break-before-make behavior, VBUS enable sequence, current limit, discharge path, reverse-current blocking, reset behavior, and unpowered-module behavior.

## Power Domains

| Domain | BKEY pins | Purpose |
| --- | --- | --- |
| `3V3_B` | 70, 72, 74 | Main BKEY power |
| `3V3_LDO0` | 2, 4 | Independent low-noise 3.3 V supply |
| `VIO_B` / `VIO_REF_LDO1` | 20, 22 | 1.8 V or 3.3 V interface reference |
| `B_VIO_CFG` | 73 | GND requests 3.3 V; high impedance requests 1.8 V |

These domains remain separate unless a released schematic explicitly joins them.

## Signal Routing Principles

- Route by function, differential-pair identity, and polarity rather than connector pin number.
- Keep all programmable outputs high-impedance until the corresponding power domain is valid.
- Use protocol-appropriate translators; open-drain, push-pull, USB, and high-speed differential signals have different requirements.
- Preserve return paths and continuous reference planes for USB and differential resources.
- Treat every unpowered-module connection as a possible reverse-power path.

## Interface Lifecycle

1. Propose the change in documentation.
2. Update the appropriate pin-map workbook.
3. Update schematic and PCB sources.
4. Run electrical and layout checks.
5. Update the AI knowledge base and changelog.
6. Tag the release only after manufacturing and bench validation.
