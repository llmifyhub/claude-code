# Docker Setup with Cloud Code

This README provides instructions for setting up and running the Docker environment with Cloud Code CLI installed.

## Prerequisites

* Docker Engine
* Docker Compose 

## Installation

1. Clone the repository:

   ```bash
   git clone <repo-url>
   cd <repo-directory>
   ```
2. Build and start the containers:

   ```bash
   docker-compose up -d --build
   ```

## Usage

1. List running containers:

   ```bash
   docker container ls
   ```
2. Locate your service container name (e.g., `myservice_container`).
3. Enter the container's interactive shell:

   ```bash
   docker exec -it <container_name> /bin/bash
   ```
4. Inside the container, navigate to the workspace (already your working directory).
5. Launch Cloud Code CLI:

   ```bash
   clod
   ```
6. Follow the interactive prompts to configure your Cloud Code keys and settings.

All changes and generated files in `/workspace` will be synced to your local filesystem.

## Stopping the Containers

```bash
docker-compose down
```

## Project Structure

```
.
├── Dockerfile
├── docker-compose.yml
└── workspace/  # Mounted to host
```

