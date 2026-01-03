# Dockerfile para o serviço n8n com Python instalado
FROM n8nio/n8n:latest

# Trocar para root para instalar pacotes
USER root

# Instalar Python 3 e pip (baseado em Alpine Linux)
RUN apk add --no-cache python3 py3-pip

# Verificar instalação
RUN python3 --version && pip3 --version

# Voltar para o usuário node
USER node