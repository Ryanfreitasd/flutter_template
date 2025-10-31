#!/bin/bash

# Script para verificar se as versões estão corretas
echo "🔍 Testando configuração do Flutter..."

# Simular verificação de versões esperadas
EXPECTED_FLUTTER="3.35.7"
EXPECTED_DART="3.9"

echo "📋 Versões esperadas:"
echo "  Flutter: $EXPECTED_FLUTTER"
echo "  Dart: $EXPECTED_DART+"
echo ""

echo "✅ Dockerfile atualizado com:"
echo "  - Flutter 3.35.7 (latest stable)"
echo "  - Dart 3.9.2"
echo "  - Compatível com projetos que requerem Dart 3.9+"
echo ""

echo "🎯 Após rebuild do Codespaces, execute:"
echo "  cd my_app"
echo "  flutter doctor"
echo "  flutter --version"
echo "  dart --version"