#!/bin/bash

# Script de inicialização do projeto Flutter
echo "🚀 Inicializando projeto Flutter..."

# Navegar para o diretório do app
cd my_app

# Verificar se o Flutter está instalado
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter não encontrado!"
    echo "Verifique se o Dev Container foi construído corretamente."
    exit 1
fi

# Mostrar informações do Flutter
echo "📱 Verificando instalação do Flutter..."
flutter doctor -v

# Instalar dependências
echo "📦 Instalando dependências..."
flutter pub get

# Limpar possíveis builds anteriores
echo "🧹 Limpando builds anteriores..."
flutter clean

echo "✅ Projeto inicializado com sucesso!"
echo ""
echo "Comandos úteis:"
echo "  flutter run          - Executar o app em modo debug"
echo "  flutter test         - Executar testes"
echo "  flutter build web    - Compilar para web"
echo "  flutter build apk    - Compilar APK Android"