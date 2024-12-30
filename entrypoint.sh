#!/bin/sh

# Check if the model exists
if [ ! -f /root/.ollama/models/deepseek-coder-33B-base-GGUF/model.gguf ]; then
  ollama run hf.co/TheBloke/deepseek-coder-33B-base-GGUF:Q2_K
fi

# Start Ollama server
ollama serve
