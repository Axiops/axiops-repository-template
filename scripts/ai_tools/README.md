# AI Tool Wrappers

This directory is intended to hold simple, version-controlled shell scripts that act as wrappers around external AI agent CLIs or APIs.

This pattern allows our primary Gemini agent to delegate tasks to specialized models in a consistent and secure way, by using the `run_shell_command` tool to execute these scripts.

## Example

An example wrapper for the `claude` CLI might look like this:

**`claude.sh`**

```bash
#!/bin/bash
# A simple wrapper around the Anthropic API for use by the primary agent.
# It expects a JSON payload on stdin.

set -euo pipefail

if ! command -v claude &> /dev/null
then
    echo "Error: 'claude' CLI is not installed or not in PATH." >&2
    exit 1
fi

# Pass the stdin directly to the claude CLI in headless mode.
claude -p "$(< /dev/stdin)"
```
