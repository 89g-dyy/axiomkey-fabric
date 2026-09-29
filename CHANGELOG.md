# AxiomKey Fabric Changelog

All notable project changes should be documented in this file.

The format follows Keep a Changelog principles. Versions should use Semantic Versioning once the first interface release is tagged.

## [Unreleased]

### Added

- GitHub-ready repository structure.
- Dedicated `HW`, `FW`, `DOC`, `3D_Print`, and `AI_Knowledge_Base` work areas.
- Baseboard V1 front and back renders.
- MKEY and BKEY pin-map workbooks as interface sources of truth.
- Repository validation workflow and contribution templates.
- Multi-license open-source structure for software, hardware, and documentation.
- Baseboard V1 ESP32-S3 management functions.
- MKEY-controlled USB Device/Host route switching between the baseboard Hub and USB-A Host port.

## [0.1.0] - 2026-09-29

### Added

- Initial modular baseboard, MKEY core-board, and BKEY sensor-board architecture.
- Revised BKEY signal order with REFCLK, four differential resources, USB 2.0, UART, I2C, SPI, GPIO, and separated power domains.
