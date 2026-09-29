# Contributing

## Change Scope

- Keep hardware, firmware, documentation, and AI context changes traceable.
- Do not change a released pin assignment without updating the pin-map workbook, interface documentation, and changelog in the same pull request.
- Do not rename power nets or connector pins only for cosmetic reasons.

## Branches and Commits

- Create a short-lived branch for each change.
- Use clear commit subjects such as `hw: add BKEY ESD protection` or `docs: clarify VIO sequencing`.
- Keep generated fabrication outputs separate from editable CAD sources.

## Hardware Changes

1. Identify the affected board and revision.
2. Update the schematic and PCB sources.
3. Update the matching pin map when the external interface changes.
4. Document power, direction, default state, and unpowered behavior.
5. Run ERC/DRC and record the tool version.
6. Add manufacturing outputs only for a tagged release.

## Firmware Changes

- Keep board-specific code in its target directory.
- Put reusable protocol and driver code under `FW/Library/`.
- Add a test or example for new public interfaces.
- Never assume that every MKEY or BKEY implementation supports every optional signal.

## Pull Requests

- Complete the pull request template.
- Attach relevant schematic excerpts, layout renders, test logs, or measurements.
- State whether the change is backward-compatible with existing modules.
