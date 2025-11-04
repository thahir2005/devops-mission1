### Design Notes – Mission 1

- **Flask** chosen for lightweight web service.
- **Pytest** for endpoint validation.
- **Multi-stage Docker build** reduces image size and isolates runtime.
- **Non-root user** ensures container security.
- **Healthcheck** auto-detects unhealthy states.
- **Docker Compose** simplifies local runs with one command.
- **Makefile** abstracts common commands (build, run, test, clean).
- **GitHub Actions CI** validates build and tests on every push.