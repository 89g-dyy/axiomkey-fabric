# Hardware

Hardware is organized by physical board and by shared resources.

```text
HW/
  Baseboard/     ESP32-S3 management, power, USB Hub, switching and protection
  MKEY/          MCU / SoC / FPGA core modules
  BKEY/          Replaceable sensor modules
  Common/        Shared CAD libraries and mechanical data
```

Editable CAD sources belong in `CAD/`. Release fabrication files belong in `Manufacturing/` and should be committed only with a tagged hardware release.
