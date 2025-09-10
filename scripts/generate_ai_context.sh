#!/usr/bin/env bash
# This script generates a machine-readable context file for the AI agent.

set -euo pipefail

# Find the project root directory (where .git is located)
declare -r project_root=$(git rev-parse --show-toplevel)
if [[ -z $project_root ]]; then
    echo "Error: This is not a git repository. Cannot determine project root." >&2
    exit 1
fi

# Define the conventional directory for Gemini files, relative to the project root.
declare -r gemini_dir="${project_root}/.gemini"
context_file="${gemini_dir}/context.json"

project_name=$(basename "$project_root")

# Generate the context file.
# A more advanced version could parse go.mod, read ADRs, etc.
cat <<EOF >"$context_file"
{
  "project_name": "$project_name",
  "description": "A repository based on the Axiops standard template.",
  "language": "Go",
  "key_directories": {
    "main_application": "cmd/$project_name",
    "internal_logic": "internal/",
    "api_definitions": "proto/"
  },
  "available_tasks": $(cd "$project_root" && task --list-all --json | jq -c '[.tasks[] | {name: .name, desc: .desc}]')
}
EOF

echo "Generated $context_file"
