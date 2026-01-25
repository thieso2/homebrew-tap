# Homebrew Tap for mio

This is a Homebrew tap for [mio](https://github.com/thieso2/mio), a MySQL CLI with multi-server support and advanced table discovery.

## Installation

```bash
# Tap the repository
brew tap thieso2/tap https://github.com/thieso2/homebrew-tap.git

# Install mio
brew install thieso2/tap/mio

# Verify installation
mio --version
```

## Usage

```bash
# Start interactive shell
mio

# Connect to specific server
mio production

# List databases
mio sdbbn009:

# List tables with info
mio "reporting:sdbbn009:db_bild:%" --info --fqtn

# Execute query
mio "sdbbn009:db_bild" -c "SELECT COUNT(*) FROM users"
```

## Updating

```bash
# Update mio to the latest version
brew upgrade thieso2/tap/mio
```

## Uninstalling

```bash
# Uninstall mio
brew uninstall thieso2/tap/mio

# Remove the tap (optional)
brew untap thieso2/tap
```

## Issues

Report issues at [mio GitHub repository](https://github.com/thieso2/mio/issues)
