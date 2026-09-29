# Hardware Release Checklist

## Interface

- [ ] MKEY and BKEY pin maps match the released schematic.
- [ ] Differential pairs, P/N polarity, and connector orientation are independently checked.
- [ ] Power domains are named consistently and have no unintended shorts.
- [ ] Unused outputs have defined inactive states.
- [ ] Module voltage, power, interface, and PHY requirements are documented.

## Electrical

- [ ] ERC passes or every waiver is documented.
- [ ] Inrush, reverse current, ESD, and unpowered back-feed paths are reviewed.
- [ ] Pull-ups, pull-downs, and open-drain voltage domains are verified.
- [ ] USB and high-speed signal-integrity constraints are defined.
- [ ] MKEY USB Device/Host switch truth table and safe reset default are verified.
- [ ] USB-A Host VBUS current limit, discharge, and reverse-current blocking are verified.
- [ ] Thermal and maximum-current limits are reviewed.

## PCB and Manufacturing

- [ ] DRC passes or every waiver is documented.
- [ ] Front/back renders and connector orientation match the physical assembly.
- [ ] Fabrication outputs are generated from the tagged source revision.
- [ ] BOM substitutions are reviewed for electrical and footprint compatibility.
- [ ] Assembly drawings, pick-and-place, Gerbers, and drill files are archived.

## Bench Validation

- [ ] Power rails and sequencing are measured before modules are installed.
- [ ] Presence and VIO configuration detection are verified.
- [ ] Each supported low-speed bus is tested.
- [ ] USB enumeration is tested for MKEY and BKEY independently.
- [ ] MKEY Device-to-Host and Host-to-Device transitions are tested without Hub back-feed or USB-A VBUS overlap.
- [ ] Fault and hot-plug tests are performed within the defined safety plan.
