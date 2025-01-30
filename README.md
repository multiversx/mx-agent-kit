<div align="center">

# MultiversX Agent Kit

</div>

The MultiversX Agent Kit is an open-source toolkit empowering AI agents to seamlessly interact with the MultiversX ecosystem. Harnessing the combined strength of [Eliza](https://github.com/multiversx/eliza/tree/bed9388575e5a9fe93abe9457479c9c7e89acbf6) (an advanced AI Agent Framework) and [Portkey's AI Gateway](https://github.com/multiversx/gateway/tree/a10d0cacb6d4e6f8125bc3b4c44a83c0e19c2ad0), the MultiversX Agent Kit connects your agents to over 250 LLM providers and most major AI Agent Frameworks.

# AI Agents Features

# Blockchain Features
- EGLD and ESDT token transfers
- Token creation and management
- Token swap
- Multiple network support (mainnet, devnet, testnet)
- Secure transaction signing
- Automatic nonce management
- Transaction status tracking
- Built-in denomination handling
- Comprehensive error handling


# 📦 Installation
## Prerequisites

- [Node.js](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) Version: 23.3
- [PNPM](https://pnpm.io/installation) Version: 9+

### Check Your Node.js Version:
```sh
node -v
```

## Local Setup
### Step 1: Setup script
Execute the setup script:
```
chmod +x setup.sh
./setup.sh
```

### Step 2: Environment Setup 
In the [Eliza submodule](https://github.com/multiversx/eliza/tree/bed9388575e5a9fe93abe9457479c9c7e89acbf6), configure the following environment variables in the .env file:
```
PORTKEY_PROVIDER_API_KEY=   # Portkey model provider API key (For example: sk-XXXX for an OpenAI model)
PORTKEY_MODEL_PROVIDER=     # Portkey model provider (For example: openai, anthropic, deepseek etc.)
PORTKEY_MODEL=              # Portkey model (For example: gpt-4o-mini, claude-3-opus-20240229, deepseek-chat etc.)
```

### Step 3: Automatic Start (Reccomanded)
Execute the start script:
```
chmod +x start.sh
./start.sh
```

### Alternative Step 3: Manual start
### Eliza (2 terminals needed):
In the first terminal, execute the commands:
```
cd eliza
pnpm run start
```

In the second terminal, execute the commands:
```
cd eliza
pnpm run start:client
```

### AI Gateway (1 terminal needed):
In the terminal, execute the commands:
```
cd gateway
npm run dev:node
```

