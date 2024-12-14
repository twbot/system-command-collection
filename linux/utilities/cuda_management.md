### CUDA Version Switcher

**Description**: A utility script to manage and switch between different CUDA versions on Ubuntu/Linux systems.

**Installation**:
1. Copy the script to `/usr/local/bin/cuda-switch`
2. Make it executable: `chmod 755 /usr/local/bin/cuda-switch`
3. Add CUDA paths to ~/.bashrc

**Usage**:
```bash
cuda-switch
```

**Features**:

- Lists available CUDA versions
- Interactive version selection
- Automatically updates system paths
- Manages symbolic links

**Location**:
```bash
../../scripts/bash/cuda-switch.sh
```