#!/bin/bash

# Script de configuração específico para GitHub Codespaces
echo "🚀 Configurando ambiente Flutter para GitHub Codespaces..."

# Configurar Git (caso necessário)
if [ -z "$(git config --global user.name)" ]; then
    echo "⚙️ Configurando Git..."
    git config --global user.name "Codespaces User"
    git config --global user.email "codespaces-user@github.local"
fi

# Verificar se Flutter está disponível
echo "📱 Verificando instalação do Flutter..."
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter não encontrado! Tentando reinstalar..."
    
    # Definir variáveis de ambiente
    export FLUTTER_ROOT="/usr/local/flutter"
    export PATH="$FLUTTER_ROOT/bin:$FLUTTER_ROOT/bin/cache/dart-sdk/bin:$PATH"
    
    # Verificar novamente
    if ! command -v flutter &> /dev/null; then
        echo "❌ Erro: Flutter não pôde ser configurado."
        exit 1
    fi
fi

# Aceitar licenças do Android automaticamente (para Codespaces)
echo "📄 Configurando licenças Android..."
yes | flutter doctor --android-licenses 2>/dev/null || echo "Licenças Android já aceitas ou não disponíveis"

# Configurar Flutter para web e desenvolvimento
echo "🌐 Configurando Flutter para desenvolvimento web..."
flutter config --enable-web --no-analytics

# Navegar para o projeto e instalar dependências
echo "📦 Instalando dependências do projeto..."
cd my_app

# Limpar cache se existir
if [ -d ".dart_tool" ]; then
    echo "🧹 Limpando cache anterior..."
    flutter clean
fi

# Obter dependências
flutter pub get

# Verificar estado do Flutter
echo "🔍 Verificando configuração final..."
flutter doctor -v

# Configurar permissões para desenvolvimento web
echo "🔧 Configurando permissões para desenvolvimento web..."
flutter config --enable-web

echo ""
echo "✅ Configuração do Codespaces concluída!"
echo ""
echo "🎯 Comandos úteis para Codespaces:"
echo "  flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0"
echo "  flutter run -d chrome --web-port=3000"
echo "  flutter test"
echo "  flutter build web"
echo ""
echo "🌐 URLs importantes:"
echo "  App Web: https://\$CODESPACE_NAME-8080.app.github.dev"
echo "  DevTools: https://\$CODESPACE_NAME-9100.app.github.dev"