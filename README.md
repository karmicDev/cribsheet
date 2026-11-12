# Cribsheet

A Flutter design system that coding agents can use correctly: a hand-written
MCP server, a demo study app, and evals that measure the difference.

> **Status:** work in progress. The MCP server comes first, then the design
> system, the app and the evals.

## Why

Coding agents write better UI when they can look up the components, tokens and
rules of a design system, and check their own output against them. Cribsheet
gives them that through the Model Context Protocol, then measures whether it
helps.

## Packages

| Package | What it is | State |
| --- | --- | --- |
| `packages/cribsheet_mcp` | MCP server in pure Dart, written against spec revision 2026-07-28 | in progress |
| `packages/cribsheet_ui` | Design tokens, theme and components | planned |
| `app` | Study app built only from `cribsheet_ui` | planned |
| `evals` | Tasks and scoring for agent-written UI | planned |

## Run the server

```bash
cd packages/cribsheet_mcp
dart pub get
dart run
dart test
```

## Author

Michael Karbe · [github.com/karmicDev](https://github.com/karmicDev)