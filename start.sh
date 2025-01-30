#!/bin/bash

# Required Node.js version
REQUIRED_NODE_VERSION="v23.3.0"

# Get the installed Node.js version
INSTALLED_NODE_VERSION=$(node -v)

# Check if the installed Node.js version matches the required version
if [[ "$INSTALLED_NODE_VERSION" != "$REQUIRED_NODE_VERSION" ]]; then
  echo "❌ Error: Node.js version $REQUIRED_NODE_VERSION is required."
  echo "You have $INSTALLED_NODE_VERSION. Please install Node.js $REQUIRED_NODE_VERSION and try again."
  exit 1
fi

echo "✅ Node.js version check passed: $INSTALLED_NODE_VERSION"

# Get the absolute path of the current directory
PROJECT_DIR="$(pwd)"

# Detect OS and open new terminals for each process
echo "Starting services in separate terminals..."

OS="$(uname)"
case "$OS" in
  "Darwin") # macOS
    echo "Detected macOS"
    osascript -e "tell application \"Terminal\" to do script \"source ~/.nvm/nvm.sh && nvm use 23.3 && cd '$PROJECT_DIR/eliza' && pnpm run start\""
    osascript -e "tell application \"Terminal\" to do script \"source ~/.nvm/nvm.sh && nvm use 23.3 && cd '$PROJECT_DIR/eliza' && pnpm run start:client\""
    osascript -e "tell application \"Terminal\" to do script \"source ~/.nvm/nvm.sh && nvm use 23.3 && cd '$PROJECT_DIR/gateway' && npm run dev:node\""
    ;;
  
  "Linux") # Linux
    echo "Detected Linux"
    gnome-terminal -- bash -c "source ~/.nvm/nvm.sh && nvm use 23.3 && cd '$PROJECT_DIR/eliza' && pnpm run start; exec bash" &
    gnome-terminal -- bash -c "source ~/.nvm/nvm.sh && nvm use 23.3 && cd '$PROJECT_DIR/eliza' && pnpm run start:client; exec bash" &
    gnome-terminal -- bash -c "source ~/.nvm/nvm.sh && nvm use 23.3 && cd '$PROJECT_DIR/gateway' && npm run dev:node; exec bash" &
    ;;
  
  "MINGW64_NT"*|"CYGWIN_NT"*|"MSYS_NT"*) # Windows (Git Bash, Cygwin, MSYS)
    echo "Detected Windows"
    start cmd /k "nvm use 23.3 && cd /d \"$PROJECT_DIR\\eliza\" && pnpm run start"
    start cmd /k "nvm use 23.3 && cd /d \"$PROJECT_DIR\\eliza\" && pnpm run start:client"
    start cmd /k "cd /d \"$PROJECT_DIR\\gateway\" && npm run dev:node"
    ;;
  
  *)
    echo "Unsupported OS: $OS"
    exit 1
    ;;
esac
