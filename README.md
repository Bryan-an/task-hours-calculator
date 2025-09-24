# Task Hours Calculator

A Tauri-based application for calculating task hours, built with React, TypeScript, and Rust.

## Recommended IDE Setup

- [VS Code](https://code.visualstudio.com/) + [Tauri](https://marketplace.visualstudio.com/items?itemName=tauri-apps.tauri-vscode) + [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)

## 🛠️ Development Environment Setup

### Prerequisites

- **Rust**: Latest stable version (managed by rustup)
- **Node.js**: Version 18+ (for frontend development)
- **pnpm**: Package manager for Node.js

### Recommended Tools

#### Rust Development Tools

- **rust-analyzer**: Language server for IDE support
- **clippy**: Rust linter for code quality
- **rustfmt**: Code formatter

#### Editor Setup

- **VS Code**: Recommended editor with extensions:
  - `rust-lang.rust-analyzer`
  - `tauri-apps.tauri-vscode`
  - `ms-vscode.vscode-typescript-next`
  - `bradlc.vscode-tailwindcss`
  - `esbenp.prettier-vscode`

## 🚀 Quick Start

### Initial Setup

```bash
# Install development tools
make setup

# Start development server
make dev
```

### Alternative Commands

```bash
# Frontend only
pnpm install --frozen-lockfile
pnpm dev

# Rust only (check compilation)
cargo check

# Tauri development server
cargo tauri dev

# Full production build
cargo tauri build
```

## 📁 Project Structure

```text
├── src/                    # React frontend
├── src-tauri/             # Rust backend
│   ├── src/               # Rust source code
│   ├── Cargo.toml         # Rust dependencies
│   └── tauri.conf.json    # Tauri configuration
├── public/                # Static assets
└── dist/                  # Built frontend (generated)
```

## 🔧 Development Commands

### Code Quality

```bash
# Format code
cargo fmt

# Lint code
cargo clippy -- -D warnings

# Check without building
cargo check

# Run tests
cargo test
```

### Building

```bash
# Development build
cargo tauri dev

# Production build
cargo tauri build

# Frontend only
pnpm build
```

### Debugging

- **Frontend**: Browser DevTools + React DevTools
- **Backend**: VS Code debugger with rust-analyzer
- **Tauri**: Tauri DevTools (available in development mode)

## 📝 Code Standards

### Rust

- Use `rustfmt` for consistent formatting
- Follow clippy recommendations
- Use meaningful variable and function names
- Add documentation comments for public APIs
- Handle errors explicitly with `Result<T, E>`

### TypeScript/JavaScript

- Use TypeScript for type safety
- Follow ESLint and Prettier rules
- Use meaningful component and variable names
- Add JSDoc comments for complex functions

### General

- All code, comments, and documentation in English
- Use consistent naming conventions
- Write self-documenting code

## 🐛 Troubleshooting

### Common Issues

**"Command not found" errors:**

```bash
# Ensure Rust toolchain is installed
rustup update

# Add components if missing
rustup component add clippy rustfmt rust-analyzer
```

**Tauri not starting:**

```bash
# Clean and rebuild
cargo clean
cargo tauri dev
```

**Frontend not loading:**

```bash
# Clear node modules and reinstall
rm -rf node_modules pnpm-lock.yaml
pnpm install
pnpm dev
```

### Performance Tips

- Use `cargo check` instead of `cargo build` for faster feedback
- Enable `rust-analyzer` inlay hints for better understanding
- Use the Makefile commands for consistent development workflow

## 🔒 Security Considerations

- Review Tauri security documentation
- Use appropriate CSP settings in `tauri.conf.json`
- Validate all user inputs in commands
- Keep dependencies updated

## 📚 Additional Resources

- [Tauri Documentation](https://tauri.app/)
- [Rust Book](https://doc.rust-lang.org/book/)
- [React Documentation](https://react.dev/)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)
