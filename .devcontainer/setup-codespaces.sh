#!/bin/bash

# Script pós-criação simples
echo "🚀 Finalizando configuração do Flutter no Codespaces..."

# Verificar se Flutter está disponível
if command -v flutter &> /dev/null; then
    echo "✅ Flutter encontrado!"
    flutter --version
else
    echo "❌ Flutter não encontrado no PATH"
    exit 1
fi

echo ""
echo "✅ Ambiente Flutter pronto!"
echo ""
echo "🎯 Comandos úteis:"
echo "  flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0"
echo "  flutter test"
echo "  flutter doctor"
echo ""
echo "📱 O projeto Flutter está na pasta 'my_app/'"