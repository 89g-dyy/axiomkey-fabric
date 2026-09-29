# Baseboard V1

Baseboard V1 uses an ESP32-S3 as the platform management controller. It provides gateway services, MKEY/BKEY insertion detection, power management, onboard environmental temperature and humidity monitoring, TF-card black-box logging, USB Hub connectivity, USB role-route switching, switches, protection, and functional routing between MKEY and BKEY.

The baseboard controller is the platform control plane. It does not replace the interchangeable MKEY compute module.

MKEY controls its own USB role. In Device mode its USB path is connected to the baseboard USB Hub. In Host mode the Hub path is isolated and MKEY is connected to the adjacent USB-A Host receptacle. The switch default state, VBUS source control, over-current limit, discharge, and reverse-current blocking must be documented in the released schematic.

## Images

- [`Images/baseboard-front.png`](Images/baseboard-front.png)
- [`Images/baseboard-back.png`](Images/baseboard-back.png)

## Planned Contents

- `CAD/`: schematic and PCB source files.
- `BOM/`: editable BOM and approved substitutions.
- `Manufacturing/`: tagged Gerbers, drill, pick-and-place, drawings, and assembly outputs.

Before release, document the board revision, CAD tool and version, stack-up, controlled-impedance requirements, and assembly variant.
