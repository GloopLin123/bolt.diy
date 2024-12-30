#!/bin/sh

# Start Ollama in the background
ollama serve &

# Wait for Ollama to start
sleep 5

# Check if the model is already downloaded
if ! ollama list | grep -q "deepseek-coder-33B-base-GGUF"; then
    ollama run hf.co/TheBloke/deepseek-coder-33B-base-GGUF:Q2_K
fi

# Keep the container running
while true; do sleep 1; done
