# Use a imagem base Ubuntu
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Flutter 3.35.7 com Dart 3.9.2 - Atualizado em 30/10/2025
# Definir variáveis de ambiente
ENV FLUTTER_HOME=/home/vscode/flutter
ENV PATH=$FLUTTER_HOME/bin:$PATH
ENV FLUTTER_VERSION=3.35.7
ENV DART_VERSION=3.9.2

# Mudar para usuário root temporariamente para instalações
USER root

# Atualizar e instalar dependências
RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    clang \
    cmake \
    ninja-build \
    pkg-config \
    libgtk-3-dev \
    liblzma-dev \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

# Voltar para usuário vscode
USER vscode

# Baixar e instalar Flutter (versão 3.35.7 com Dart 3.9.2)
RUN cd /home/vscode && \
    wget -q https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.35.7-stable.tar.xz && \
    tar xf flutter_linux_3.35.7-stable.tar.xz && \
    rm flutter_linux_3.35.7-stable.tar.xz

# Configurar Flutter
RUN flutter config --enable-web --no-analytics && \
    flutter precache --web

# Adicionar Flutter ao PATH permanentemente
RUN echo 'export PATH="/home/vscode/flutter/bin:$PATH"' >> ~/.bashrc && \
    echo 'export PATH="/home/vscode/flutter/bin:$PATH"' >> ~/.zshrc