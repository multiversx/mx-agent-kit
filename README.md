<div align="center">

# MultiversX Agent Kit

</div>

The **[MultiversX](https://multiversx.com/) Agent Kit** is an open-source toolkit empowering AI Agents to seamlessly interact with the **MultiversX Ecosystem**. Harnessing the combined strength of **[Eliza AI Agent Framework](https://github.com/multiversx/eliza/tree/bed9388575e5a9fe93abe9457479c9c7e89acbf6)** and **[Portkey's AI Gateway](https://github.com/multiversx/gateway/tree/a10d0cacb6d4e6f8125bc3b4c44a83c0e19c2ad0)**, the **MultiversX Agent Kit** connects your agents to 250+ LLM providers and most major **AI Agent Frameworks**.

# 🤖 Eliza & The MultiversX Plugin  

At the heart of **MultiversX Agent Kit** is [**Eliza**](https://github.com/multiversx/eliza/tree/bed9388575e5a9fe93abe9457479c9c7e89acbf6), an advanced **AI Agent Framework** designed for seamless integration with different AI Models, Blockchain Networks, Social Media Platforms and other real-world applications. The **MultiversX Eliza Plugin** extends its capabilities, enabling direct interaction with the **MultiversX Blockchain** for automated, secure, and intelligent transactions.  

## 🔌 MultiversX Eliza Plugin Features  
With the [MultiversX Eliza Plugin](https://github.com/multiversx/eliza/tree/bed9388575e5a9fe93abe9457479c9c7e89acbf6/packages/plugin-multiversx), AI Agents can:  
- 💸 **Send EGLD & ESDT Tokens** – Effortlessly transfer assets within the **MultiversX ecosystem**.  
- 🏗 **Create & Manage Tokens** – Automate **token issuance, configuration, and lifecycle management**.  
- 🔄 **Swap Tokens** – Enable **liquidity management and token trading** via automated AI-driven execution.  
- 🌐 **Multi-Network Support** – Seamlessly operate across **mainnet, devnet, and testnet** environments.  
- 🔒 **Secure Transaction Signing** – Ensure **safe & compliant** AI-initiated transactions with **secure key management**.  
- ⚡ **Automatic Nonce Management** – Prevent transaction conflicts with **intelligent nonce handling**.  
- 📊 **Track Transaction Status** – Monitor transaction completion in **real-time** with AI-driven status tracking.  
- 🏷 **Built-in Denomination Handling** – Simplify **unit conversions and precision management** for EGLD & ESDT assets.  
- 🛠 **Comprehensive Error Handling** – Minimize failures with **robust, automated troubleshooting**.   

## 🎥 Video Tutorials  

For a step-by-step guide on setting up **Eliza** and understanding its **plugin & client systems**, check out the following tutorials:  

📺 **AI Agents on MultiversX with Eliza Framework - How to Setup Eliza**  
🔗 [Watch the tutorial](https://www.youtube.com/watch?v=vf-umucBhPI)  

📺 **AI Agents on MultiversX with Eliza Framework - Plugin and Client Systems**  
🔗 [Watch the tutorial](https://www.youtube.com/watch?v=G-GPnjD-kMU)  

These videos provide a **detailed walkthrough** to help you get started quickly and efficiently! 🚀  

---

# 🚀 AI Agents - Gateway Features  
With **MultiversX Agent Kit**, powered by [Portkey's AI Gateway](https://github.com/multiversx/gateway/tree/a10d0cacb6d4e6f8125bc3b4c44a83c0e19c2ad0), your AI Agents gain access to **250+ model providers** and **full integration with leading AI Agent Frameworks**, enabling **seamless, intelligent, and autonomous decision-making** across the **MultiversX Ecosystem**.  

### 🌎 Universal Model & AI Agent Framework Support  
- **250+ Model Providers** – Seamlessly connect to a vast array of **LLMs, vision models, and multimodal AI solutions**.  
- **Full AI Agent Framework Integration** – Natively supports **[Eliza](https://github.com/multiversx/eliza/tree/bed9388575e5a9fe93abe9457479c9c7e89acbf6), OpenAI Swarm, LlamaIndex, LangChain, LangGraph, AutoGen, CrewAI, Phidata, Control Flow, and Custom Agents**.  
- **Cross-Provider Compatibility** – Effortlessly switch between AI providers without changing your implementation.  
- **Multi-Modal AI Support** – Call **vision, text-to-speech, speech-to-text, and image generation models** from multiple sources with a **unified API**.  

### ⚡ Reliable AI Routing & Performance  
- **Failproof AI Requests** – Automatically **fallback** to another LLM provider or model on failed requests, ensuring **high availability** and **zero downtime**.  
- **Intelligent Retries** – Auto-retry failed requests up to **5 times** with an **exponential backoff** strategy to prevent overload.  
- **Smart Load Balancing** – Distribute requests across **multiple API keys & AI providers** for **optimized speed & cost efficiency**.  
- **Granular Timeouts** – Set precise **request limits** to prevent AI models from consuming excess resources.  
- **Real-Time AI APIs** – Leverage **WebSocket-based LLMs** for **instant responses** and real-time execution.  

### 🔐 Security & Accuracy  
- **AI Guardrails** – Ensure **safe & accurate AI** with **40+ built-in security guardrails** or bring your own for **custom compliance**.  
- **Secure Key Management** – Generate **virtual API keys** or use your own, with **role-based access control (RBAC)** for **fine-grained security**.  
- **Enterprise-Grade Compliance** – Fully **SOC2, HIPAA, GDPR, and CCPA compliant**, ensuring strict **data privacy** and **regulatory adherence**.  

### 💰 Cost Management & Optimization  
- **Smart Caching** – Reduce LLM costs with **simple & semantic response caching** for ultra-fast, low-cost AI inference.  
- **AI Usage Analytics** – Gain **real-time insights** into request volume, latency, costs, and error rates for **data-driven optimization**.  
- **Cost-Effective Provider Selection** – Dynamically **switch to the most affordable AI provider** based on **live usage trends** and **pricing models**.  

### 🤝 Seamless Collaboration & AI Workflows  
- **Collaborative Prompt Engineering** – Create, manage, and **version prompt templates** through a **universal prompt playground** for streamlined AI development.  

---

# 📦 Installation Guide  

Follow these steps to set up **MultiversX Agent Kit** effortlessly.  

## 🚀 Prerequisites  

Before starting, ensure you have the following dependencies installed:  

- **[Node.js](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)** – Version **23.3**  
- **[PNPM](https://pnpm.io/installation)** – Version **9+**  

### 🔍 Verify Your Node.js Version  
Run the following command to check if Node.js is installed correctly:  
```sh
node -v
```

---

## ⚙️ Local Setup  

### 🛠 Step 1: Run the Setup Script  
Execute the setup script to install dependencies and configure the project:  
```sh
chmod +x setup.sh
./setup.sh
```

---

### 🌍 Step 2: Configure Environment Variables  
In the **[Eliza submodule](https://github.com/multiversx/eliza/tree/bed9388575e5a9fe93abe9457479c9c7e89acbf6)**, set up your `.env` file with the necessary API keys:  

```sh
PORTKEY_PROVIDER_API_KEY=   # Your Portkey API Key (e.g., sk-XXXX for OpenAI)
PORTKEY_MODEL_PROVIDER=     # Model Provider (e.g., openai, anthropic, deepseek, etc.)
PORTKEY_MODEL=              # Model Name (e.g., gpt-4o-mini, claude-3-opus-20240229, deepseek-chat, etc.)
```

---

### 🚀 Step 3: Start the Application  

#### 🔥 Recommended: Automatic Start  
Run the following script to start everything automatically:  
```sh
chmod +x start.sh
./start.sh
```

---

### ⚡ Alternative: Manual Start  

#### 🧠 **Start Eliza** (Requires 2 terminals)  

In **Terminal 1**, start the **Eliza server**:  
```sh
cd eliza
pnpm run start
```

In **Terminal 2**, start the **Eliza client**:  
```sh
cd eliza
pnpm run start:client
```

#### 🌉 **Start AI Gateway** (Requires 1 terminal)  
```sh
cd gateway
npm run dev:node
```

---

🎉 **That's it! Your AI Agents are now running and ready to interact with the MultiversX Ecosystem.** 🚀  
