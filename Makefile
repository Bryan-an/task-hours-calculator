# Tauri Development Makefile
# Common development tasks for the project

.PHONY: help deps dev build clean lint format check test tauri-dev tauri-build setup all

# Default target
all: help

help:
	@echo "Available commands: deps, dev, build, clean, lint, format, check, test, tauri-dev, tauri-build, setup"
	@echo "Run 'make <command>' for more details (e.g., make dev, make build, make clean)"

# Dependencies management
deps:
	pnpm install --frozen-lockfile

# Frontend development
dev: deps
	pnpm dev

# Production build
build:
	pnpm build

# Clean build artifacts
clean:
	rm -rf dist/
	cargo clean --manifest-path=src-tauri/Cargo.toml

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
