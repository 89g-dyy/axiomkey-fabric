# ADR-0002: USB Hub Host and MKEY Dual-Role Routing

- Status: Accepted
- Date: 2026-09-29

## Decision

The external computer is the USB Host for the baseboard USB Hub upstream port. MKEY controls the role of its own USB controller. In Device mode, MKEY connects to a Hub downstream port. In Host mode, MKEY is isolated from the Hub and connects to the adjacent USB-A Host receptacle. BKEY uses its assigned Hub downstream path when it implements USB.

## Consequences

- MKEY Hub and USB-A routes must be mutually exclusive and break-before-make.
- USB-A Host VBUS requires controlled enable, current limiting, discharge, and reverse-current blocking.
- Each module needs independent connect, power-state, and VBUS-sense behavior as required by its PHY.
- Modules without USB leave the corresponding data path unconnected.
