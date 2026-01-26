# Homebrew Tap

This is a Homebrew tap for tools by thieso2:
- [mio](https://github.com/thieso2/mio) - MySQL CLI with multi-server support and advanced table discovery
- [cio](https://github.com/thieso2/cio) - Cloud-IO, a CLI tool for Google Cloud Storage and BigQuery with short aliases and FUSE filesystem support

## Installation

```bash
# Tap the repository
brew tap thieso2/tap https://github.com/thieso2/homebrew-tap.git

# Install a tool (e.g., mio)
brew install thieso2/tap/mio

# Or install another tool (e.g., cio)
brew install thieso2/tap/cio

# Verify installation
mio --version
cio --version
```

## Usage

### mio - MySQL CLI

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

### cio - Cloud-IO

cio provides short aliases for Google Cloud Storage and BigQuery operations.

```bash
# Create mappings for your resources
cio map am gs://my-bucket/archived-metrics/
cio map mydata bq://my-project.my-dataset

# List resources
cio ls :am
cio ls -l :am
cio ls -lh :mydata

# Copy files
cio cp file.txt :am/2024/
cio cp :am/2024/data.csv ./

# Remove files
cio rm ':am/logs/*.tmp'

# Get help
cio --help
```

## Updating

```bash
# Update a specific tool
brew upgrade thieso2/tap/mio
brew upgrade thieso2/tap/cio

# Update all tools
brew upgrade
```

## Uninstalling

```bash
# Uninstall a specific tool
brew uninstall thieso2/tap/mio
brew uninstall thieso2/tap/cio

# Remove the tap (optional)
brew untap thieso2/tap
```

## Issues

Report issues at the respective GitHub repositories:
- [mio issues](https://github.com/thieso2/mio/issues)
- [cio issues](https://github.com/thieso2/cio/issues)
