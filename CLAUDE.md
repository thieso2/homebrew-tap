# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Homebrew tap for distributing pre-built binaries of tools created by thieso2. The tap supports multiple tools and platforms (macOS ARM64/Intel, Linux ARM64/Intel).

Current tools:
- **mio**: MySQL CLI with multi-server support and advanced table discovery ([repo](https://github.com/thieso2/mio))
- **cio**: Cloud-IO, a CLI tool for Google Cloud Storage and BigQuery with short aliases and experimental FUSE filesystem support ([repo](https://github.com/thieso2/cio))

The repository structure:
- `Formula/`: Contains Homebrew formula files (one `.rb` file per tool)
- `README.md`: User-facing documentation
- `CLAUDE.md`: This file

## Architecture

This is a Homebrew tap that:
1. Distributes pre-built binaries from GitHub releases of individual tools
2. Supports cross-platform installation (macOS ARM64, macOS Intel, Linux ARM64, Linux Intel)
3. Each tool has its own formula that downloads the appropriate platform-specific binary

**Formula Structure:**
- Each tool's formula follows the same pattern: detect OS/CPU architecture and install the matching binary
- Binaries are released on each tool's GitHub repository and referenced by version and SHA256 checksum
- The formula runs a basic test (e.g., `--version`) to verify the installation

## Common Development Tasks

### Testing a Formula Locally

```bash
# Test the formula (checks that it installs correctly and runs its test)
brew install --build-from-source ./Formula/<tool-name>.rb

# Test with a specific architecture on macOS (if running on Apple Silicon)
arch -x86_64 brew install --build-from-source ./Formula/<tool-name>.rb

# Uninstall for cleanup
brew uninstall <tool-name>
```

### Validating Formula Syntax

```bash
# Check a formula for syntax errors
brew formula <tool-name>
```

### Updating a Tool for a New Release

When a new version of a tool is released:

1. Update the `version` in `Formula/<tool-name>.rb`
2. Update all four `url` entries (one for each platform: darwin-arm64, darwin-amd64, linux-arm64, linux-amd64) to point to the new release version
3. Compute and update the SHA256 checksums:
   ```bash
   # For each binary release URL:
   sha256sum <(curl -L https://github.com/thieso2/<tool-name>/releases/download/v<version>/<tool-name>-<platform>)
   ```
4. Update all four `sha256` values in the formula
5. Test the formula locally before committing

### Adding a New Tool to the Tap

1. Create a new formula file: `Formula/<tool-name>.rb`
2. Follow the existing pattern from another tool's formula (e.g., `mio.rb`)
3. Update `url` entries to point to your tool's GitHub releases
4. Set appropriate `desc`, `homepage`, and `version`
5. Ensure the `test` block validates the binary works (e.g., `--version`)
6. Update `README.md` with installation and usage instructions for the new tool
7. Test locally before committing

### Updating README

Add a section for each tool in the README with:
- How to install it
- Basic usage examples
- Link to the tool's main repository

## Debugging Tips

- **Binary not found at install time:** Check that the release URLs in the formula exactly match the actual releases on GitHub
- **SHA256 mismatch:** Regenerate the checksums using `sha256sum` against the actual binary downloads
- **Platform detection issues:** Use `brew --debug-install ./Formula/<tool-name>.rb` to see what platform Homebrew detects
- **Formula parse errors:** Run `brew formula <tool-name>` to validate Ruby syntax

## Git Workflow

- Keep formula updates atomic: commit only the modified files related to a single change
- For tool updates: `git add Formula/<tool-name>.rb && git commit -m "Update <tool-name> to v<version>"`
- For new tools: `git add Formula/<tool-name>.rb README.md && git commit -m "Add <tool-name> to tap"`
- For README-only updates: `git add README.md && git commit -m "Update README for <tool-name>"`
