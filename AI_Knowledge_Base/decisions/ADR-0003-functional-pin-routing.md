# ADR-0003: Functional Pin Routing

- Status: Accepted
- Date: 2026-09-29

## Decision

Map MKEY and BKEY by signal function, differential-pair identity, and polarity. Equal physical pin numbers are not a valid routing rule because the Key M and Key B mechanical interfaces have different key locations and assignments.

## Consequences

- The BKEY workbook includes a dedicated baseboard-routing table.
- Schematic net names retain board prefixes to prevent accidental merging.
- Any interface change requires baseboard and existing-module compatibility review.
