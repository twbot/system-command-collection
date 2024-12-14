#!/bin/bash

# Function to list available CUDA versions
list_cuda_versions() {
    echo "Available CUDA versions:"
    ls -1 /usr/local | grep -E "^cuda-[0-9]+\.[0-9]+$" | sed 's/cuda-//'
}

# Function to switch CUDA version
switch_cuda_version() {
    local version=$1
    
    # Check if the selected version exists
    if [ ! -d "/usr/local/cuda-${version}" ]; then
        echo "Error: CUDA version ${version} not found!"
        exit 1
    fi
    
    # Remove existing symlink if it exists
    if [ -L "/usr/local/cuda" ]; then
        sudo rm /usr/local/cuda
    fi
    
    # Create new symlink
    sudo ln -s /usr/local/cuda-${version} /usr/local/cuda
    
    # Update environment variables
    echo "Updating environment variables..."
    
    # Remove existing CUDA paths from PATH
    PATH=$(echo $PATH | tr ':' '\n' | grep -v "cuda" | tr '\n' ':' | sed 's/:$//')
    
    # Add new CUDA paths
    export PATH="/usr/local/cuda/bin:$PATH"
    
    # Update LD_LIBRARY_PATH
    export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
    
    echo "Successfully switched to CUDA version ${version}"
    echo "Please run 'source ~/.bashrc' to apply the changes"
}

# Main script
echo "CUDA Version Manager"
echo "-------------------"

# List available versions
list_cuda_versions

# Prompt for version selection
echo -e "\nEnter the CUDA version you want to use (e.g., 11.8): "
read version_choice

# Switch to selected version
switch_cuda_version "$version_choice"