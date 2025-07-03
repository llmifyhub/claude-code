# Use a lightweight Node.js image as the base
FROM node:20-slim

# Install additional packages: git, tmux, vim, Python3, Python virtual environment module, and Docker CLI
RUN apt-get update && \
    apt-get install -y git tmux vim python3 python3-venv docker.io && \
    rm -rf /var/lib/apt/lists/*

# Install the Claude 3.7 CLI globally via npm
RUN npm install -g @anthropic-ai/claude-code

# Create workspace directory (this will be mounted via docker-compose)
WORKDIR /workspace

# Create a Python virtual environment in /root/venv and upgrade pip
RUN python3 -m venv /root/venv && \
    /root/venv/bin/pip install --upgrade pip

# Automatically activate the Python virtual environment for interactive bash shells
RUN echo "source /root/venv/bin/activate" >> /root/.bashrc

