# Dockerfile para o serviço n8n com Python instalado
FROM python:3.11-slim

# Instalar Node.js e npm
RUN apt-get update && apt-get install -y nodejs npm && rm -rf /var/lib/apt/lists/*

# Instalar n8n globalmente
RUN npm install -g n8n

# Verificar instalação
RUN python3 --version && pip3 --version && n8n --version