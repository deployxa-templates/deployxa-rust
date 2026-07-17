# Deployxa Rust Starter

Production-ready Rust template optimized for AI-assisted development and Deployxa Cloud.

## 🚀 Deploy in Seconds

Deploy this production-ready template directly to Deployxa Cloud.

[![Deploy with Deployxa](branding/deploy-button.svg)](https://deployxa.com/dashboard/new?repo=https://github.com/deployxa-templates/deployxa-rust)

### Or deploy using the CLI

Initialize connection:
```bash
deployxa login
```

Deploy the application:
```bash
deployxa deploy
```

If the repository is already linked:
```bash
deployxa deploy
```

If not linked yet:
```bash
deployxa link
deployxa deploy
```

---

## Why This Template?

This template represents the official Deployxa Cloud engineering standards for Rust applications. It is designed to run perfectly out of the box and has been structured for optimal performance, security, and developer productivity when using AI coding assistants.

Compatible with major AI tools:
* Cursor
* Claude Code
* OpenCode
* GitHub Copilot
* Windsurf
* VS Code AI

---

## Features

* 🤖 AI-Agent Ready (Cursor, Claude Code, OpenCode, GitHub Copilot)
* 🚀 One-Click Deployxa Deployment
* 🐳 Production Dockerfile Included
* ⚡ Optimized Build Performance
* 🔒 Security Best Practices
* ❤️ Health Check Endpoint
* 📈 Cloud-Native Architecture
* 🌍 Ready for Custom Domains
* 🔄 CI/CD Ready
* 📦 Zero-Configuration Deployment

---

## Included

* **Dockerfile**: Advanced production multi-stage container configuration.
* **docker-compose.yml**: Configured local orchestration stack.
* **Health Checks**: Endpoint `/health` returning {"status":"ok"}.
* **Logging**: Production-grade logging defaults.
* **Security**: Hardened base image, run as non-root user.
* **CI Actions**: Automated pipeline for building, linting, testing, and Docker validation.

---

## Requirements

- Rust 1.70+
- Docker & Docker Compose (optional for containerized run)

---

## Installation

Clone the template and set up configurations:

```bash
cp .env.example .env
```

---

## Local Development

Start the development server:

```bash
docker compose up --build
```

---

## Resources & Links

* [Deployxa Website](https://deployxa.com)
* [Deployxa Documentation](https://docs.deployxa.com)
* [Deployxa CLI Repository](https://github.com/deployxa-project/deployxa-cli)
* [Deployxa Dashboard](https://dash.deployxa.com)
* [Deployxa Templates Catalog](https://deployxa.com/templates)
* [Deployxa Community Discord](https://discord.gg/deployxa)
* [Deployxa Templates GitHub Organization](https://github.com/deployxa-templates)

---

## Project Structure

```text
.github/
    workflows/
        ci.yml      # CI/CD Validation
branding/
    deploy-button.svg       # Deploy Button
    deploy-button-dark.svg  # Dark Deploy Button
    deploy-button-light.svg # Light Deploy Button
docker/             # Configuration files
src/                # Source files
public/             # Static Assets
config/             # Configuration Settings
scripts/            # Operations Utilities
docs/               # Architectural Guides
tests/              # Automation Checks
.env.example        # Environment Template
Dockerfile          # Multi-stage Container
docker-compose.yml  # Multi-container Setup
```

---

## Health Endpoint

Exposes a JSON payload at `/health`:

```json
{
  "status": "ok"
}
```

---

## Production Optimizations

- **Container Caching**: Docker layer caching speeds up dependency installation.
- **Minimal Image**: Leverages Alpine or Distroless bases where possible.
- **Secure Container Configuration**: Executes as non-root user.

---

## AI Development

Optimized specifically for agents:
- `AGENTS.md` - Context guide.
- `CLAUDE.md` - Command guide.
- `COPILOT.md` - Editor rules.

---

## CI/CD

Validates syntax compiling, execution check, testing logic, and constructs docker build cache on pull requests.

---

## License

MIT
