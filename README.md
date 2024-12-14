# System Command Collection

A curated collection of useful commands and scripts for various operating systems. This repository serves as a personal reference for system administration, development, and troubleshooting tasks.

## Repository Structure

````
system-commands/
├── linux/
│   ├── package-management/
│   ├── system-admin/
│   ├── development/
│   └── utilities/
├── macos/
│   ├── homebrew/
│   ├── system-admin/
│   ├── development/
│   └── utilities/
├── windows/
│   ├── powershell/
│   ├── system-admin/
│   ├── development/
│   └── utilities/
├── cross-platform/
│   ├── docker/
│   ├── git/
│   ├── python/
│   └── nodejs/
└── scripts/
    ├── bash/
    ├── python/
    └── powershell/
````

## Categories

Each operating system directory contains the following categories:

- **package-management**: Package manager commands and tips
- **system-admin**: System administration and configuration
- **development**: Development tools and environment setup
- **utilities**: Useful utility commands and shortcuts

The `cross-platform` directory contains commands that work across different operating systems, organized by tool or technology.

## Command Format

Each command or script should be documented using the following format:

````markdown
### Command Name

**Description**: Brief description of what the command does

**Usage**:
```bash
command --flag argument
```

**Example**:
```bash
command --flag value
```

**Notes**:
- Additional information
- Potential gotchas
- Related commands
````

## Contributing

To add a new command:

1. Navigate to the appropriate directory based on OS and category
2. Create a markdown file if one doesn't exist for the specific tool/task
3. Follow the command format shown above
4. Include comments and examples where helpful

## Recently Added

- CUDA Version Switcher (linux/utilities/cuda-switch)
- [Add your recent additions here]

## Quick Links

- [Linux Commands](linux/)
- [MacOS Commands](macos/)
- [Windows Commands](windows/)
- [Cross-Platform Tools](cross-platform/)
- [Scripts](scripts/)

## License

This repository is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.