# Como Testar o Dev Container Localmente

## Versões Incluídas

- **Flutter**: 3.35.7 (stable)
- **Dart**: 3.9.2
- **Ubuntu**: 22.04

## Pré-requisitos

- Docker Desktop instalado e rodando
- VS Code com extensão "Dev Containers"

## Testando Localmente

1. **Abrir no VS Code**:

   ```bash
   code /home/ryanfreitas/Documentos/Faculdade/flutter_template
   ```

2. **Rebuild Container**:

   - `Ctrl+Shift+P`
   - "Dev Containers: Rebuild and Reopen in Container"

3. **Aguardar Build**:

   - O Docker irá construir a imagem customizada
   - Flutter será instalado automaticamente
   - Pode levar 5-10 minutos na primeira vez

4. **Testar Flutter**:
   ```bash
   cd my_app
   flutter doctor
   flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0
   ```

## Estrutura dos Arquivos de Configuração

```
.devcontainer/
├── devcontainer.json   # Configuração principal do container
├── Dockerfile          # Build customizado com Flutter pré-instalado
└── setup-codespaces.sh # Script pós-criação (opcional)
```

## Soluções de Problemas

### Build do Docker falha:

```bash
# Limpar cache Docker
docker system prune -a

# Tentar novamente
Ctrl+Shift+P → "Dev Containers: Rebuild Container (No Cache)"
```

### Flutter não encontrado:

```bash
# Verificar PATH
echo $PATH

# Verificar instalação
ls -la /home/vscode/flutter/bin/flutter
```

### Permissões:

```bash
# Corrigir proprietário (se necessário)
sudo chown -R vscode:vscode /home/vscode/flutter
```
