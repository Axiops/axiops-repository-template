# {{.PROJECT_NAME}}

<!-- Badges will go here: CI, License, Release, etc. -->

> {{.PROJECT_DESCRIPTION}}

## Getting Started

### Prerequisites

- Go (version X.X.X)
- Docker
- Task (go-task.dev)

### Installation & Build

1.  **Clone the repository:**

    ```sh
    git clone https://github.com/Axiops/{{.PROJECT_NAME}}.git
    cd {{.PROJECT_NAME}}
    ```

2.  **Install development tools:**

    ```sh
    task install-hooks
    ```

3.  **Build the binary:**
    ```sh
    task build
    ```

## Usage

```sh
./bin/{{.BINARY_NAME}} --help
```

## Contributing

Please read our [Contributing Guide](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.
