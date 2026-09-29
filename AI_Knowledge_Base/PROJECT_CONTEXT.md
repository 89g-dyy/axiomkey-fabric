# Project Context

## Objective

Build AxiomKey Fabric as a modular electronics platform with one managed baseboard and two replaceable module types:

- MKEY core modules using MCU, SoC, or FPGA devices from different vendors.
- BKEY sensor modules using different sensors and local interface circuitry.

Baseboard V1 uses an ESP32-S3 as its management controller. It owns gateway services, MKEY/BKEY insertion detection, power management, onboard environmental temperature and humidity monitoring, TF-card black-box logging, USB Hub connectivity, USB role-route switching, switches, protection, clock distribution, and signal routing.

## Fixed Decisions

- The current MKEY pin map is fixed.
- The current BKEY pin order is defined by `HW/BKEY/Pinmaps/BKEY_IO_MAP.xlsx`.
- The external computer is the USB Host.
- MKEY selects its own USB role: Device mode routes to the Hub; Host mode routes to the adjacent USB-A Host receptacle.
- The Hub and USB-A routes are mutually exclusive and require controlled VBUS switching.
- The baseboard front and back images document Baseboard V1, not MKEY or BKEY modules.
- MKEY and BKEY connector pins are mapped by function, not by equal physical number.
- BKEY uses separate `3V3_B`, `3V3_LDO0`, and `VIO_B` power domains.

## Design Priorities

1. Avoid damage during incorrect insertion or partial-power conditions where practical.
2. Keep module capabilities explicit rather than assuming a universal MCU or sensor feature set.
3. Preserve signal-integrity options for SoC and FPGA modules without making basic MCU modules unnecessarily complex.
4. Keep the interface auditable through pin maps, schematics, documentation, and tests.

## Current Gaps

- Editable baseboard CAD sources are not yet stored in the repository.
- Firmware SDK and build systems are not selected.
- Electrical limits, connector current rating, stack-up, and high-speed constraints require released design values.
- Hot-plug protection requires schematic and bench validation beyond extended power contacts.
