# Interface Rules

These rules are constraints for AI-assisted work and human reviews.

1. Never modify the MKEY pin map unless the task explicitly approves an interface revision.
2. Treat the pin-map workbooks as authoritative over summaries and rendered images.
3. Do not connect MKEY and BKEY solely by equal connector pin number.
4. Keep `3V3_B`, `3V3_LDO0`, and `VIO_B` separate unless a released schematic explicitly connects them.
5. Interpret signal direction from the board named in the pin map. BKEY `TX` is an output from BKEY; BKEY `RX` is an input to BKEY.
6. I2C signals are open-drain and require voltage-domain-aware pull-ups and translators.
7. SPI MISO must be high-impedance when its device is not selected or unpowered.
8. USB D+/D- are PHY signals, not ordinary GPIO, and must not pass through generic level translators.
9. Differential resources must preserve pair membership, polarity, reference plane, and protocol-specific termination.
10. Unsupported outputs remain high-impedance. Do not rely on unpowered-device clamp diodes for system state.
11. Extended power contacts do not by themselves prove safe hot-plug operation.
12. Every module must declare voltage, maximum power, supported interfaces, directions, speed limits, and required PHYs.
13. MKEY Device mode connects to the baseboard USB Hub; MKEY Host mode connects to the adjacent USB-A Host receptacle.
14. The MKEY Hub route and USB-A Host route are mutually exclusive and must use a safe switch default.
15. USB-A VBUS may be enabled only after the Hub data and VBUS path is isolated; provide current limiting, discharge, and reverse-current blocking.
