#!/bin/bash

# Get the absolute path of the current directory
PROJECT_DIR="$(pwd)"

check_env_variables() {
  ENV_FILE="$PROJECT_DIR/eliza/.env"

  # Check if the .env file exists
  if [[ ! -f "$ENV_FILE" ]]; then
    echo "❌ Error: .env file not found in $PROJECT_DIR/eliza."
    exit 1
  fi

  source "$ENV_FILE"

  if [[ -z "${PORTKEY_PROVIDER_API_KEY}" ]]; then
    echo "❌ Error: Required environment variable PORTKEY_PROVIDER_API_KEY is not set or has no value in $ENV_FILE."
    exit 1
  fi

  if [[ -z "${PORTKEY_MODEL_PROVIDER}" ]]; then
    echo "❌ Error: Required environment variable PORTKEY_MODEL_PROVIDER is not set or has no value in $ENV_FILE."
    exit 1
  fi

  if [[ -z "${PORTKEY_MODEL}" ]]; then
    echo "❌ Error: Required environment variable PORTKEY_MODEL is not set or has no value in $ENV_FILE."
    exit 1
  fi

  echo "✅ PORTKEY_PROVIDER_API_KEY is set to: '$PORTKEY_PROVIDER_API_KEY'"
  echo "✅ PORTKEY_MODEL_PROVIDER is set to: '$PORTKEY_MODEL_PROVIDER'"
  echo "✅ PORTKEY_MODEL is set to: '$PORTKEY_MODEL'"
}

open_browser() {
  sleep 5
  
  case "$OS" in
    "Darwin") # macOS
      open "http://localhost:8787/public/logs"
      open "http://localhost:5173"
      ;;
    
    "Linux") # Linux
      if command -v xdg-open &> /dev/null; then
        xdg-open "http://localhost:8787/public/logs"
        xdg-open "http://localhost:5173"
      else
        echo "❌ Error: No default browser found. Install xdg-utils or specify a browser manually."
      fi
      ;;
    
    *)
      echo "Unsupported OS: $OS"
      ;;
  esac
}

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

check_env_variables

# Detect OS and open new terminals for each process
echo "Starting services in separate terminals..."

OS="$(uname)"
case "$OS" in
  "Darwin") # macOS
    echo "Detected macOS"
    osascript -e "tell application \"Terminal\" to do script \"cd '$PROJECT_DIR/eliza' && pnpm run start\""
    osascript -e "tell application \"Terminal\" to do script \"cd '$PROJECT_DIR/eliza' && pnpm run start:client\""
    osascript -e "tell application \"Terminal\" to do script \"cd '$PROJECT_DIR/gateway' && npm run dev:node\""
    open_browser
    ;;
  
  "Linux") # Linux
    echo "Detected Linux"
    gnome-terminal -- bash -c "cd '$PROJECT_DIR/eliza' && pnpm run start; exec bash" &
    gnome-terminal -- bash -c "cd '$PROJECT_DIR/eliza' && pnpm run start:client; exec bash" &
    gnome-terminal -- bash -c "cd '$PROJECT_DIR/gateway' && npm run dev:node; exec bash" &
    open_browser
    ;;
  
  *)
    echo "Unsupported OS: $OS"
    echo "Try to start manually: https://github.com/multiversx/mx-agent-kit?tab=readme-ov-file#-start-eliza-requires-2-terminals."
    exit 1
    ;;
esac
