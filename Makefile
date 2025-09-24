# Tauri Development Makefile
# Common development tasks for the project

.PHONY: help dev build clean lint format check test tauri-dev tauri-build

# Default target
help:
	@echo "Available commands:"
	@echo "  make dev          - Start development server"
	@echo "  make build        - Build for production"
	@echo "  make clean        - Clean build artifacts"
	@echo "  make lint         - Run linter on Rust code"
	@echo "  make format       - Format code with rustfmt"
	@echo "  make check        - Check code without building"
	@echo "  make test         - Run tests"
	@echo "  make tauri-dev    - Run Tauri development server"
	@echo "  make tauri-build  - Build Tauri application"
	@echo "  make setup        - Initial setup of development tools"

# Frontend development
dev:
	pnpm dev

# Production build
build:
	pnpm build

# Clean build artifacts
clean:
	rm -rf dist/
	rm -rf src-tauri/target/

# Rust development tools
lint:
	cargo clippy -- -D warnings

format:
	cargo fmt

check:
	cargo check

test:
	cargo test

# Tauri specific commands
tauri-dev:
	cargo tauri dev

tauri-build:
	cargo tauri build

# Initial setup
setup:
	rustup component add clippy rustfmt rust-analyzer
	@echo "Development tools installed successfully!"
	@echo "Don't forget to install VS Code extensions listed in .vscode/extensions.json"
