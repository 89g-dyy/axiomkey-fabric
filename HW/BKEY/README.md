# BKEY Sensor Modules

BKEY modules are replaceable sensor boards. The connector provides several power domains, USB 2.0, low-speed buses, GPIO, a reference clock, and four reusable differential-pair resources.

## Source of Truth

- [`Pinmaps/BKEY_IO_MAP.xlsx`](Pinmaps/BKEY_IO_MAP.xlsx)
- [`Images/bkey-pinout.png`](Images/bkey-pinout.png)

Each sensor module should declare:

- required power rails and maximum current;
- VIO selection;
- active interfaces and maximum rates;
- signal directions and reset/default states;
- USB, clock, or high-speed PHY requirements;
- behavior while unpowered or partially powered.
