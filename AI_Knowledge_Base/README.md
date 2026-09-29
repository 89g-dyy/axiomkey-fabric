# AI Knowledge Base

This directory contains stable, reviewable context for AI-assisted design, documentation, firmware, and verification work. It is not a scratchpad and must not contain secrets.

## Files

- `PROJECT_CONTEXT.md`: system purpose, board roles, and current state.
- `INTERFACE_RULES.md`: constraints that must be preserved during design work.
- `GLOSSARY.md`: project terminology and signal naming.
- `decisions/`: architecture decision records.
- `prompts/`: reusable task templates.
- `sources/`: rules for adding datasheets and external references.

## Update Policy

Update this directory when an accepted engineering decision changes. Pin maps and released CAD remain the source of truth; AI context summarizes them and must never silently override them.
