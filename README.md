<div align="center">

# MultiversX AI Agent Kit

![mx-agent-kit.png](https://cdn.multiversx.com/misc/mx-agent-kit.gif) 

</div>

The **[MultiversX](https://multiversx.com/) Agent Kit** is an open-source toolkit empowering AI Agents to seamlessly interact with the **MultiversX Ecosystem**. Harnessing the combined strength of **[Eliza AI Agent Framework](https://github.com/multiversx/eliza)** and **[Portkey's AI Gateway](https://github.com/multiversx/gateway/)**, the **MultiversX Agent Kit** connects your agents to 250+ LLM providers and most major **AI Agent Frameworks**.

<div align="center">
  
📺 **AI Agent Kit Presentation**  
🔗 [Watch the presentation](https://www.youtube.com/watch?v=m4bdpcoNLqE) 
</div>

# 🤖 Eliza & The MultiversX Plugin  

At the heart of **MultiversX Agent Kit** is [**Eliza**](https://github.com/multiversx/eliza), an advanced **AI Agent Framework** designed for seamless integration with different AI Models, Blockchain Networks, Social Media Platforms and other real-world applications. The **MultiversX Eliza Plugin** extends its capabilities, enabling direct interaction with the **MultiversX Blockchain** for automated, secure, and intelligent transactions.  

## 🔌 MultiversX Eliza Plugin Features  
With the **[MultiversX Eliza Plugin](https://github.com/multiversx/eliza/tree/develop/packages/plugin-multiversx)**, AI Agents can:  
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
With **MultiversX Agent Kit**, powered by [Portkey's AI Gateway](https://portkey.ai/docs/product/ai-gateway), your AI Agents gain access to **250+ model providers** and **full integration with leading AI Agent Frameworks**, enabling **seamless, intelligent, and autonomous decision-making** across the **MultiversX Ecosystem**.  

### 🌎 Universal Model & AI Agent Framework Support  
- **[250+ Model Providers](https://portkey.ai/docs/integrations/llms#supported-ai-providers)** – Seamlessly connect to a vast array of **LLMs, vision models, and multimodal AI solutions**.  
- **[Comprehensive AI Agent Framework Integration](https://portkey.ai/docs/integrations/agents)** – Natively supports **[Eliza](https://github.com/multiversx/eliza), OpenAI Swarm, LlamaIndex, LangChain, LangGraph, AutoGen, CrewAI, Phidata, Control Flow, and Custom Agents**.  
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

### 🔍 Verify Your Node.js and PNPM Versions
Run the following command to check if Node.js is installed correctly:  
```sh
node -v
```

Run the following command to check if PNPM is installed correctly:  
```sh
pnpm -v
```

### 📥 Clone the Repository  

To get started, **clone the MultiversX Agent Kit repository** by running:  
```sh
git clone git@github.com:multiversx/mx-agent-kit.git
```  

Once cloned, navigate into the project folder:  
```sh
cd mx-agent-kit
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
In the **[Eliza submodule](https://github.com/multiversx/eliza)**, set up your `.env` file with the necessary API keys:  

```sh
PORTKEY_PROVIDER_API_KEY=   # Your Portkey Model Provider API Key (e.g., sk-XXXX for OpenAI)
PORTKEY_MODEL_PROVIDER=     # Model Provider (e.g., google, openai, anthropic, deepseek, etc.)
PORTKEY_MODEL=              # Model Name (e.g., gemini-1.5-flash, gpt-4o-mini, claude-3-opus-20240229, deepseek-chat, etc.)
```

### 🆓 Using Free API Credits for Testing  

Some **AI model providers offer free API credits** with limitations, making them great for **testing and experimentation**.  

- **Google AI Studio** provides [free access](https://ai.google.dev/pricing#1_5flash) to **Gemini 1.5 Flash**.  
  - 🔗 **Generate an API Key**: [Google AI Studio](https://aistudio.google.com/app/apikey)  
  - 📌 Use `google` as the **PORTKEY_MODEL_PROVIDER** and `gemini-1.5-flash` as the **PORTKEY_MODEL**.  

- **Other Free Providers**: A list of additional **free API providers** can be found [here](https://github.com/cheahjs/free-llm-api-resources).  
  - 🚨 Keep in mind that **limitations and terms of service apply** for free access.  

⚠️ **Legal Disclaimer**:  
- **MultiversX does not take responsibility** for how you use these APIs. Ensure you comply with each provider's **terms of service and restrictions** when using their free-tier models.  

---

### 🚀 Step 3: Start the Application  

#### 🔥 Recommended: Automatic Start  
Run the following script to start everything automatically:  
```sh
chmod +x start.sh
./start.sh
```

⚠️ **Windows Users:** 
- The automated script is **currently not supported** on Windows. **Windows users must use the manual method** below, but everything else works the same.  

#### ⚡ Alternative: Manual Start  

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

🌐 **Eliza Agent Dashboard**: 
- Once started, access the **Eliza Agent Dashboard** at: [http://localhost:5173/](http://localhost:5173/)  

#### 🌉 **Start AI Gateway** (Requires 1 terminal)  

In **Terminal 3**, start the **AI Gateway**:  
```sh
cd gateway
npm run dev:node
```

🌐 **AI Gateway Explorer**: 
- Once started, access the **AI Gateway Explorer** at: [http://localhost:8787/public/](http://localhost:8787/public/)  

---

### 🎭 Step 4: Configure Eliza Characters  

Eliza supports **custom AI characters**, allowing you to define their **personalities, behaviors, and conversation styles**. You can:  

- 📝 **Use Pre-Built Characters** – Explore existing **character templates** [here](https://github.com/multiversx/eliza/tree/develop/characters).  
- 🎨 **Customize Your Own** – Modify or create new characters following the **official character configuration guide** in the [documentation](https://elizaos.github.io/eliza/docs/core/characterfile/).  
- 📺 **Watch the Setup Tutorial** – Learn how to set up **Eliza characters** in this [video guide](https://youtu.be/vf-umucBhPI?t=218).  

---

🎉 **That's it! Your AI Agents are now running and ready to interact with the MultiversX Ecosystem.** 🚀  
