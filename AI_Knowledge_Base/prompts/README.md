# Reusable AI Task Templates

## Hardware Review

```text
Review the specified schematic or PCB revision against the MKEY and BKEY pin-map workbooks. Check power-domain separation, signal direction, inactive states, unpowered back-feed, ESD paths, differential-pair polarity, and connector orientation. List findings by severity and cite the affected net or pin. Do not change a released pin assignment without explicit approval.
```

## New Module Definition

```text
Create a capability declaration for a new MKEY or BKEY module. Include device part number, required rails, maximum power, VIO, supported interfaces, signal directions, maximum rates, reset/default behavior, unsupported pins, debug method, and unpowered behavior. Use the existing pin-map workbook as the interface source of truth.
```

## Release Review

```text
Compare the candidate hardware release against DOC/release-checklist.md. Report missing evidence, incompatible pin-map changes, unresolved ERC/DRC waivers, manufacturing-output inconsistencies, and tests that remain incomplete.
```
