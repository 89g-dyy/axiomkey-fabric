# Firmware

Firmware space is reserved by target and reuse level. No specific SDK or build system has been selected yet.

```text
FW/
  Library/       Portable drivers, protocols and shared definitions
  Baseboard/     ESP32-S3 gateway and platform-management firmware
  MKEY/          Core-module-specific firmware and board support packages
  BKEY/          Sensor-module firmware, if a module contains a controller
  Example/       Minimal interface demonstrations
  Test/          Host tests, hardware-in-loop tests and fixtures
```

Firmware must not assume that every module implements every optional pin. Prefer capability descriptors and explicit board profiles.
