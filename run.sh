#!/bin/bash

# Alias docker to podman if Podman is being used
<<<<<<< HEAD
alias docker=podman

echo "🛑 Stopping and removing existing containers..."
docker rm -f $(docker ps -aq) 2>/dev/null
=======
# alias docker=podman

echo "🛑 Stopping and removing existing containers..."
podman stop $(docker ps -q) 2>/dev/null
podman rm -f $(docker ps -aq) 2>/dev/null
>>>>>>> cca3507 (Step 2 - Add Navegation)

echo "🛠 Building Maven project..."
if ! mvn clean package; then
    echo "❌ Maven build failed!"
    exit 1
fi

# Check if the WAR file was created
if [ ! -f target/*.war ]; then
    echo "❌ WAR file not found! Exiting..."
    exit 1
fi

echo "🐳 Building Docker image..."
<<<<<<< HEAD
docker build -t localhost/my-jsp-app:latest .

echo "🚀 Running Docker container..."
docker run -d -p 8080:8080 localhost/my-jsp-app:latest
=======
podman build -t localhost/my-jsp-app:latest .

echo "🚀 Running Docker container..."
podman run -d -p 8080:8080 localhost/my-jsp-app:latest
>>>>>>> cca3507 (Step 2 - Add Navegation)

echo "✅ Application is running at: http://localhost:8080"
