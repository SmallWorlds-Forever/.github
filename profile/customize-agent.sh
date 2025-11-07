#!/bin/bash

# SmallWorlds Forever - User Agent Customization Script
# This script replaces all instances of YOUR_CUSTOM_AGENT with your custom user agent string

if [ -z "$1" ]; then
    echo "Usage: $0 <your-custom-agent-name>"
    echo "Example: $0 MyGameClient"
    echo ""
    echo "This will replace YOUR_CUSTOM_AGENT with MyGameClient in all relevant files."
    echo "The final user agents will be:"
    echo "  - MyGameClient-Mac-x64"
    echo "  - MyGameClient-Windows-x64" 
    echo "  - MyGameClient-Linux-x64"
    echo "  - MyGameClient-SERVER"
    exit 1
fi

CUSTOM_AGENT="$1"

echo "Replacing YOUR_CUSTOM_AGENT with $CUSTOM_AGENT in all project files..."

# Backend files
echo "Updating Backend files..."
find Backend/ -type f -name "*.php" -exec sedwith_backup -i.bak "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
find Backend/ -type f -name "*.blade.php" -exec sed_with_backup -i.bak "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;

# Client files  
echo "Updating Client files..."
find Client/ -type f -name "*.js" -exec sed_with_backup -i.bak "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;

# Web server files
echo "Updating Web server files..."
find Web/ -type f -name "*.conf" -exec sed_with_backup -i.bak "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;

# Use appropriate sed command based on OS
sed_with_backup() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        sed -i '.bak' "$@"
    else
        # Linux
        sed -i.bak "$@"  
    fi
}

# Backend files
echo "Updating Backend files..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    find Backend/ -type f -name "*.php" -exec sed -i '.bak' "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
    find Backend/ -type f -name "*.blade.php" -exec sed -i '.bak' "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
else
    find Backend/ -type f -name "*.php" -exec sed -i.bak "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
    find Backend/ -type f -name "*.blade.php" -exec sed -i.bak "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
fi

# Client files
echo "Updating Client files..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    find Client/ -type f -name "*.js" -exec sed -i '.bak' "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
    find Client/ -type f -name ".env*" -exec sed -i '.bak' "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
else
    find Client/ -type f -name "*.js" -exec sed -i.bak "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
    find Client/ -type f -name ".env*" -exec sed -i.bak "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
fi

# Web server files
echo "Updating Web server files..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    find Web/ -type f -name "*.conf" -exec sed -i '.bak' "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
else
    find Web/ -type f -name "*.conf" -exec sed -i.bak "s/YOUR_CUSTOM_AGENT/$CUSTOM_AGENT/g" {} \;
fi

echo "Customization complete!"
echo ""
echo "Your user agent has been set to: $CUSTOM_AGENT"
echo "Platform-specific user agents:"
echo "  - macOS: $CUSTOM_AGENT-Mac-x64"
echo "  - Windows: $CUSTOM_AGENT-Windows-x64"
echo "  - Linux: $CUSTOM_AGENT-Linux-x64"
echo "  - Server: $CUSTOM_AGENT-SERVER"
echo ""
echo "Backup files (.bak) have been created. You can remove them with:"
echo "find . -name '*.bak' -delete"
echo ""
echo "Remember to also update any domain names and API endpoints as needed!"