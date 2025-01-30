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

# Initialize and update Git submodules
echo "Initializing and updating Git submodules..."
git submodule update --init --recursive

# Navigate to the eliza submodule and install dependencies
echo "Installing dependencies for Eliza..."
cd eliza

# Copy .env.example to .env
if [ ! -f .env ]; then
  echo "Copying .env.example to .env..."
  cp .env.example .env
else
  echo ".env already exists. Skipping copy."
fi


npm install -g pnpm
pnpm install --no-frozen-lockfile
pnpm run build
cd ..

# Navigate to the gateway submodule and install dependencies
echo "Installing dependencies for Gateway..."
cd gateway
npm install
cd ..

echo "✅ Setup completed successfully!"
