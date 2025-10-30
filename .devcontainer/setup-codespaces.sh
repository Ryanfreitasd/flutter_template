#!/bin/bash

# Script de configuração para GitHub Codespaces
echo "🚀 Configurando ambiente Flutter..."

# Verificar se Flutter está disponível
if command -v flutter &> /dev/null; then
    echo "✅ Flutter encontrado!"
    flutter --version
else
    echo "❌ Flutter não encontrado!"
    exit 1
fi

# Configurar Flutter
echo "🌐 Configurando Flutter para desenvolvimento web..."
flutter config --enable-web --no-analytics

# Navegar para o projeto Flutter
cd my_app

# Limpar e instalar dependências
echo "📦 Instalando dependências..."
flutter clean
flutter pub get

# Verificar configuração
echo "🔍 Verificando configuração..."
flutter doctor

echo ""
echo "✅ Ambiente configurado com sucesso!"
echo ""
echo "🎯 Para executar o app:"
echo "  cd my_app"
echo "  flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0"