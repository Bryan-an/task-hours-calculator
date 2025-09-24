# Task Hours Calculator

A Tauri-based application for calculating task hours, built with React, TypeScript, and Rust.

## Recommended IDE Setup

- [VS Code](https://code.visualstudio.com/) + [Tauri](https://marketplace.visualstudio.com/items?itemName=tauri-apps.tauri-vscode) + [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)

## 🛠️ Development Environment Setup

### Prerequisites

#### System Requirements

- **Rust**: Latest stable version (managed by rustup)
- **Node.js**: Version 18+ (for frontend development)
- **pnpm**: Package manager for Node.js (via Corepack)

#### Platform-Specific Setup

Follow the instructions below for your operating system to set up the required dependencies for Tauri development.

##### Windows

1. **Microsoft C++ Build Tools**:

   - Download and install [Build Tools for Visual Studio 2022](https://visualstudio.microsoft.com/visual-cpp-build-tools/)
   - During installation, select the "Desktop development with C++" workload

2. **WebView2 Runtime** (Required for Tauri applications):

   - **Verify Installation**: Even on Windows 10 (version 1803+) and Windows 11, WebView2 may not be present on all systems
   - **Check for WebView2**: In PowerShell (Admin), run: `winget list "WebView2 Runtime"` or verify via Apps & Features for "Microsoft Edge WebView2 Runtime"
   - **Download & Install**: If missing, download the WebView2 Runtime from [Microsoft Edge WebView2](https://developer.microsoft.com/en-us/microsoft-edge/webview2/)
   - **Quick Install**: Run this PowerShell command as Administrator: `winget install Microsoft.EdgeWebView2Runtime`

3. **Rust Setup**:

   ```bash
   # Install Rust with MSVC toolchain
   rustup toolchain install stable-msvc
   rustup default stable-msvc
   ```

##### macOS

1. **Xcode Command Line Tools**:

   ```bash
   xcode-select --install
   ```

2. **Homebrew** (recommended for additional dependencies):

   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

3. **Rust Setup**:

   ```bash
   # Install Rust
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

##### Linux

1. **System Dependencies** (Ubuntu/Debian):

   ```bash
   sudo apt update
   sudo apt install libwebkit2gtk-4.1-dev \
     libgtk-3-dev \
     libsoup-3.0-dev \
     build-essential \
     curl \
     wget \
     file \
     libxdo-dev \
     libssl-dev \
     libayatana-appindicator3-dev \
     librsvg2-dev
   ```

2. **Rust Setup**:

   ```bash
   # Install Rust
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

   > **Note**: For other Linux distributions, see the [Tauri Prerequisites](https://tauri.app/start/prerequisites/) documentation.

#### Package Manager Setup (pnpm via Corepack)

Corepack is included by default with Node.js 16.17+ and enables reliable package manager versions.

1. **Enable Corepack**:

   ```bash
   corepack enable
   ```

2. **Verify installation**:

   ```bash
   pnpm --version
   ```

> **Tip**: Corepack ensures everyone on your team uses the same package manager version. See [Corepack documentation](https://nodejs.org/api/corepack.html) for more details.

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

# Install frontend dependencies
pnpm install --frozen-lockfile

# Install Tauri CLI
cargo install tauri-cli --locked

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
rustup component add clippy rustfmt rust-src
```

**Tauri not starting:**

If "cargo tauri" is not found, install the CLI:

```bash
cargo install tauri-cli --locked
```

```bash
# Clean and rebuild
cargo clean
cargo tauri dev
```

**Frontend not loading:**

```bash
# Clear node_modules and reinstall with the lockfile
rm -rf node_modules
pnpm install --frozen-lockfile
pnpm dev

# If issues persist, regenerate the lockfile (last resort)
# rm -rf node_modules pnpm-lock.yaml && pnpm install && pnpm dev
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
