# AI Agent Tooling Guide

This document defines the standard tools and patterns that AI agents should use when working in this repository.

## Context Servers (MCPs)

This repository is equipped with powerful MCP servers to provide you with context and advanced capabilities. You should use them to fulfill user requests.

### GitHub MCP (`github`)

- **Purpose**: To get real-time context about the status of the repository, including issues, pull requests, and file content. This should be your primary source for understanding a specific task.
- **Usage**: Use the `github` MCP for all interactions with the repository's state.
- **Example Prompt**: "Using the GitHub MCP, summarize issue #123 and show me the contents of the `main.go` file."

### Zen MCP (`zen`)

- **Purpose**: To perform high-level, complex tasks like code reviews, planning, and multi-model analysis. It provides a suite of powerful, structured tools.
- **Usage**: For any non-trivial task, you should first check if the Zen MCP provides a tool for it. You MUST use these tools for their intended purpose.
- **Example Prompts**:
  - "Using the Zen MCP's `codereview` tool, perform a full code review on the `internal/orchestrator` directory."
  - "Using the Zen MCP's `planner` tool, create a step-by-step plan to implement feature #145."
  - "Using the Zen MCP's `consensus` tool, get opinions from both Gemini Pro and Claude Opus on the best way to refactor the storage adapter."

---

## Core Local Tools

### Development Tasks (`task`)

- **Purpose**: The primary interface for all local development and CI operations.
- **Usage**:
  - To see all available commands: `task --list`
  - To run tests after making a change: `task test`
  - To run linters: `task lint`
