# Deployxa Rust Starter

Production-ready **Rust** template optimized for AI-assisted development and Deployxa Cloud.

---

## Why This Template?

This repository is part of the official Deployxa Templates ecosystem and has been engineered specifically for modern AI-assisted software development. It features optimized configuration defaults, standard project structures, and clear conventions that allow AI models to read, understand, and modify code with maximum precision and minimal token usage.

Compatible with major AI-assisted tools including:
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

This template ships with all the necessary primitives for running in both local development and cloud production environments:
* **Dockerfile**: Optimized multi-stage build that keeps image sizes minimal.
* **Docker Compose**: Pre-configured services for quick local execution.
* **Production configuration**: Safe, production-ready environment defaults.
* **Environment examples**: Documented `.env.example` configurations.
* **CI workflow**: GitHub Actions pre-configured for linting and building.
* **Health endpoint**: Native route to verify server live/ready status.
* **Logging**: Structured logs ready to be collected.
* **Build optimization**: Optimized dependency installation and package caching.

---

## Local Development

Follow these steps to run the project locally.

### Prerequisites
Make sure you have Docker and the target framework runtime installed.

### Installation
Clone this repository and set up environment:

```bash
cp .env.example .env
```

### Running with Docker
You can spin up the application in a production-ready containerized environment:

```bash
docker-compose up --build
```

---

## Deploy to Deployxa

Deploying to Deployxa is simple and fast. If you have the Deployxa CLI installed, run:

```bash
deployxa deploy
```

Alternatively, you can link this GitHub repository directly through the Deployxa Dashboard for automated continuous deployment (GitOps).

---

## Project Structure

A predictable layout designed for clarity:
* `Dockerfile` - Multi-stage deployment configuration.
* `docker-compose.yml` - Local container orchestration.
* `.github/workflows/ci.yml` - CI/CD pipeline template.
* `.env.example` - Standard configuration variables.
* Source files located in modular directory structures.

---

## Production Optimizations

* **Docker layer caching**: Speeds up repeated builds.
* **Optimized dependency installation**: Ensures dev dependencies are omitted in final production images.
* **Smaller production images**: Uses minimal base images (e.g. alpine, debian-slim, distroless).
* **Environment separation**: Clear separation between build-time and run-time environments.
* **Secure defaults**: Runs as non-root user where possible, with strict permission models.
* **Health monitoring**: Integrated `/health` routes for continuous health checks.
* **Production logging**: Clean, structured logging formats.
* **Cloud-native configuration**: Reads settings strictly from environment variables.

---

## AI Development

This project is intentionally designed for AI coding agents:
* **Predictable folder structure**: Standard naming schemes that are easy for LLMs to locate.
* **Readable architecture**: Minimal boilerplate with clear separation of concerns.
* **Documented conventions**: In-line docs and config layouts designed to maximize context efficiency.
* **AI-friendly naming**: Self-documenting functions and variables.
* **Modular organization**: Prevents massive file sizes, making targeted refactoring simpler.

---

## Deployxa Cloud

Deployxa Cloud is a developer-focused platform that manages your container lifecycles seamlessly:
* **Automatic framework detection**: Automatically recognizes and sets up correct runner defaults.
* **Intelligent Docker builds**: Uses remote caching for high-speed deployments.
* **Zero-downtime deployments**: Uses rolling updates with health validation.
* **SSL certificates**: Automatically provisions Let's Encrypt certificates.
* **Custom domains**: Seamless domain mapping.
* **Deployment logs**: Real-time aggregated log streaming.
* **Rollbacks**: One-click rollbacks to any stable history state.
* **Environment variables**: Secure secrets store.
* **Automatic health monitoring**: Automated health monitoring checks.

---

## License

MIT
