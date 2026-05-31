
# 🤖 Agentic RAG using LangGraph

This project implements an **Agentic Retrieval-Augmented Generation (RAG)** system powered by:

- 🧠 **LangGraph** for decision-making logic  
- ⚡ **Groq** with LLaMA 3 for ultra-fast LLM inference  
- 📚 **FAISS** + HuggingFace Embeddings for vector-based document retrieval  
- 🚀 **FastAPI** for backend and chat API  

> Traditional RAG is passive. Agentic RAG actively decides: “Should I search, rewrite, or just answer directly?”

---
## 📌 Features

- 🧠 LangGraph-based agent with branching logic  
- 🔁 Dynamic decision: retrieve or respond directly  
- ✍️ Intelligent query rewriting if no context is found  
- 🧾 Final response generation with or without context  
- ⚡ FastAPI-based API with simple HTML chatbot UI  
- 📂 Local FAISS vectorstore with HuggingFace embeddings

---
## 📂 Project Structure

```
├── app.py                  # Fastapi and agentic rag code
├── chatbot_ui.html         # HTML frontend
├── docs/                   # Input documents (markdown or text)
├── vectorstore/            # Saved FAISS index and pickle files
├── requirements.txt        # All dependencies

````

---

## 🧠 Agentic RAG Flow
<img width="274" height="456" alt="image" src="https://github.com/user-attachments/assets/0bb21c09-06bf-40cb-8860-931ba4eb2775" />

* If relevant documents are found: answer using context
* If not: rewrite the query and try again
* If still irrelevant: answer directly using the LLM

---
