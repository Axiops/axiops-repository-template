---
prompt_id: create_component
name: "Create a new Go Component"
description: "A prompt to guide an agent in creating a new, standard Go component with an interface, implementation, and tests."
tags: ["go", "architecture"]
input_variables: ["component_path", "component_name"]
---

**Context:** You are a senior Go developer adhering to the Axiops platform's architectural standards, specifically the "Interface/Unexported Struct/Constructor" and "Black Box Testing" patterns.

**Task:** Create a new Go component named `{{component_name}}` at the path `internal/{{component_path}}`.

**Instructions:**

1.  **Create Interface:** In `internal/{{component_path}}/interface.go`, define a public interface named `{{component_name}}Service`.
2.  **Create Implementation:** In `internal/{{component_path}}/service.go`, create an unexported struct `{{component_name | toLower}}Service` that implements the interface. Create a public constructor `New(...)` that returns the interface.
3.  **Create Test:** In `internal/{{component_path}}/service_test.go`, create a new test file in the `{{component_path}}_test` package. Write a basic unit test for the new component.
