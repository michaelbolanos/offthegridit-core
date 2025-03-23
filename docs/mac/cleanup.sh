#!/bin/bash


# Michael Bolanos 03-23-25
# macOS System Cleanup Script
# Description: Clears system caches, updates Homebrew packages, and optimizes performance.

# Colors for output
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Check if script is run as root
if [[ $EUID -ne 0 ]]; then
   echo -e "${GREEN}Please run as root (sudo). Exiting.${NC}"
   exit 1
fi

echo -e "${GREEN}Starting macOS cleanup...${NC}"

# Clear system caches
echo -e "${GREEN}Clearing system caches...${NC}"
rm -rf ~/Library/Caches/*
sudo rm -rf /Library/Caches/*
sudo rm -rf /System/Library/Caches/*

# Flush DNS Cache
echo -e "${GREEN}Flushing DNS Cache...${NC}"
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

# Remove unnecessary logs
echo -e "${GREEN}Removing system logs...${NC}"
sudo rm -rf /var/log/*
sudo rm -rf ~/Library/Logs/*

# Update Homebrew and packages
echo -e "${GREEN}Updating Homebrew and installed packages...${NC}"
brew update && brew upgrade && brew cleanup

# Verify disk health
echo -e "${GREEN}Checking disk health...${NC}"
diskutil verifyVolume /

# Optimize performance
echo -e "${GREEN}Optimizing macOS performance...${NC}"
sudo periodic daily weekly monthly

# Done
echo -e "${GREEN}macOS cleanup and optimization completed!${NC}"
