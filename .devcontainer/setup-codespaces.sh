#!/bin/bash

# Script pós-criação simples
echo "🚀 Finalizando configuração do Flutter no Codespaces..."

# Verificar se Flutter está disponível
if command -v flutter &> /dev/null; then
    echo "✅ Flutter encontrado!"
    
    # Mostrar versões
    echo "📱 Versão do Flutter:"
    flutter --version
    
    echo "🎯 Versão do Dart:"
    dart --version
    
    # Verificar se é Dart 3.9+
    DART_VERSION=$(dart --version 2>&1 | grep -oE '[0-9]+\.[0-9]+' | head -1)
    echo "📋 Versão detectada do Dart: $DART_VERSION"
    
    if [[ "$DART_VERSION" == "3.9"* ]] || [[ "$DART_VERSION" > "3.9" ]]; then
        echo "✅ Versão do Dart é compatível (3.9+)"
    else
        echo "⚠️  Versão do Dart pode ser incompatível: $DART_VERSION"
    fi
    
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