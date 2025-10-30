# Flutter Template - Dev Container & GitHub Codespaces

Este projeto utiliza um Dev Container otimizado para desenvolvimento Flutter tanto localmente quanto no **GitHub Codespaces**.

## 🚀 Usar no GitHub Codespaces (Recomendado)

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/Ryanfreitasd/flutter_template)

1. **Clique no botão acima** ou vá para o repositório no GitHub
2. **Clique em "Code" → "Codespaces" → "Create codespace on main"**
3. **Aguarde a configuração automática** (2-3 minutos)
4. **Comece a desenvolver** imediatamente!

### 🌐 URLs do Codespaces

- **App Flutter Web**: `https://$CODESPACE_NAME-8080.app.github.dev`
- **DevTools**: `https://$CODESPACE_NAME-9100.app.github.dev`

## 💻 Usar Localmente (Dev Container)

1. **Pré-requisitos:**

   - VS Code instalado
   - Extensão "Dev Containers" instalada
   - Docker instalado e rodando

2. **Abrir no Dev Container:**
   - Clone este repositório
   - Abra o VS Code na pasta raiz
   - `Ctrl+Shift+P` → "Dev Containers: Rebuild and Reopen in Container"
   - Aguarde a configuração (alguns minutos na primeira vez)

## 📁 Estrutura do Projeto

```
flutter_template/
├── .devcontainer/          # Configurações Dev Container & Codespaces
│   ├── devcontainer.json
│   ├── setup-codespaces.sh
│   └── codespaces.yml
├── .vscode/                # Configurações VS Code
│   ├── settings.json
│   ├── launch.json
│   └── tasks.json
├── my_app/                 # 📱 Projeto Flutter principal
│   ├── lib/
│   ├── pubspec.yaml
│   └── ...
└── README.md
```

## 🛠️ Desenvolvimento no Codespaces

### ⚡ Comandos Rápidos no Codespaces

```bash
# Navegar para o projeto Flutter (terminal já inicia na pasta certa)
cd my_app

# 🌐 Executar app para web (otimizado para Codespaces)
flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0

# 🧪 Executar testes
flutter test

# 📦 Obter dependências
flutter pub get

# 🏗️ Build para web
flutter build web

# 🔍 Verificar configuração
flutter doctor -v
```

### 📋 Tarefas VS Code Pré-configuradas

- `Ctrl+Shift+P` → "Tasks: Run Task"
  - **"Flutter: Run (Web - Codespaces)"** - Executa o app otimizado para Codespaces
  - **"Flutter: Build Web"** - Compila para produção web
  - **"Flutter: Test"** - Executa todos os testes
  - **"Flutter: Clean"** - Limpa cache e builds
  - **"Flutter: Pub Get"** - Instala dependências

## 🌐 Portas e Acesso

| Porta    | Uso                      | Acesso no Codespaces                          |
| -------- | ------------------------ | --------------------------------------------- |
| **8080** | Flutter Web App          | `https://$CODESPACE_NAME-8080.app.github.dev` |
| **3000** | Servidor desenvolvimento | `https://$CODESPACE_NAME-3000.app.github.dev` |
| **9100** | Flutter DevTools         | `https://$CODESPACE_NAME-9100.app.github.dev` |

## 🎯 Extensões Incluídas

- **Dart-Code.flutter** - Suporte completo ao Flutter
- **Dart-Code.dart-code** - Suporte à linguagem Dart
- **ms-vscode.vscode-json** - Melhor suporte a JSON
- **bradlc.vscode-tailwindcss** - Suporte TailwindCSS (opcional)

## 🆘 Solução de Problemas

### 🔧 Problemas Gerais

```bash
# Reconfigurar Flutter
flutter config --enable-web --no-analytics
cd my_app && flutter clean && flutter pub get

# Verificar configuração
flutter doctor -v
```

### 🌐 Problemas no Codespaces

- ✅ **URLs automáticas**: Codespaces detecta automaticamente as portas
- ✅ **Hot reload**: Funciona automaticamente na web
- ✅ **DevTools**: Acesse via porta 9100

### 💻 Problemas Locais (Dev Container)

- Rebuild container: `Ctrl+Shift+P` → "Dev Containers: Rebuild Container"
- Verificar Docker está rodando
- Verificar portas não estão em uso

## 🎓 Para Estudantes

Este template é otimizado para aulas e desenvolvimento colaborativo:

1. **📚 Codespaces Gratuito**: GitHub oferece horas gratuitas para estudantes
2. **🔄 Sincronização**: Código salvo automaticamente no GitHub
3. **👥 Colaboração**: Compartilhe seu Codespace facilmente
4. **📱 Multiplataforma**: Desenvolva Flutter web direto no navegador

## 📝 Próximos Passos

1. **Explore o código** em `my_app/lib/main.dart`
2. **Execute o app** com a tarefa "Flutter: Run (Web - Codespaces)"
3. **Acesse no navegador** usando a URL do Codespaces
4. **Comece a desenvolver!** 🚀
