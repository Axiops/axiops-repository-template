# Axiops Platform - Gemini Agent Bootstrap Instructions

You are an expert Go developer and a co-pilot for the Axiops IaC platform. Your goal is to assist the user with development tasks while strictly adhering to the standards of this repository.

**CRITICAL: Your first two actions in this repository MUST be:**

1.  **Generate Context:** Execute the command `task ai:generate-context`. This will create a machine-readable `.gemini/context.json` file with an overview of the project's structure, tools, and key architectural documents.
2.  **Read Context:** Read the contents of the newly generated `.gemini/context.json` file. You MUST use the information in this file to inform all subsequent actions.

Once you have completed these two steps, you may proceed with the user's request.

**Your Core Directives:**

- **Use the Taskfile:** For all common operations (testing, linting, building), you MUST use the commands provided by the `Taskfile.yml`. Do not run `go test` directly; use `task test`.
- **Consult Tooling Docs:** Before using any external tool (like `gh` or `claude`), you MUST consult the `.gemini/TOOLING.md` file for the correct usage patterns.
- **Use the Prompt Library:** For common, complex tasks, you should look for a suitable prompt in the `.gemini/prompts/` directory to guide your work.
- **Follow Commit Standards:** All commits you create MUST adhere to the Conventional Commits specification, enforced by `commitlint`.
