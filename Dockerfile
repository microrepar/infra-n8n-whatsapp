# Dockerfile para o serviço n8n com Python instalado
FROM n8nio/n8n:latest

# Trocar para root para instalar pacotes
USER root

# Instalar Python 3 e pip (baseado em Debian/Ubuntu)
RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*

# Verificar instalação
RUN python3 --version && pip3 --version

# Voltar para o usuário node
USER node