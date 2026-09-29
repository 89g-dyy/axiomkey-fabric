# ADR-0001: Modular Baseboard, MKEY, and BKEY Architecture

- Status: Accepted
- Date: 2026-09-29

## Context

The project must support many processor families and many sensor combinations without redesigning the full system for every pairing.

## Decision

Use a three-part architecture: a reusable ESP32-S3-managed baseboard, replaceable MKEY core modules, and replaceable BKEY sensor modules. Baseboard V1 owns gateway services, insertion detection, power, environmental monitoring, TF-card black-box logging, routing, common I/O infrastructure, and protection.

## Consequences

- Module capability must be declared explicitly.
- Baseboard routing becomes an interface contract and requires strict revision control.
- M.2 mechanical compatibility does not imply electrical compatibility with commercial M.2 cards or computer sockets.
