# 📝 Documentação do Script IAC2.sh

## 📋 Índice
- [🔍 Visão Geral](#-visão-geral)
- [📦 Funcionalidades](#-funcionalidades)
  - [🔄 1. Atualização do Sistema](#-1-atualização-do-sistema)
  - [⚙️ 2. Instalação de Pacotes](#️-2-instalação-de-pacotes)
  - [🌐 3. Download da Aplicação](#-3-download-da-aplicação)
  - [📂 4. Implantação da Aplicação](#-4-implantação-da-aplicação)
- [▶️ Execução do Script](#️-execução-do-script)
- [📋 Pré-requisitos](#-pré-requisitos)
- [⚠️ Considerações Importantes](#️-considerações-importantes)
- [🛡️ Boas Práticas de Segurança](#️-boas-práticas-de-segurança)
- [⚡ Possíveis Melhorias](#-possíveis-melhorias)
- [🏁 Conclusão](#-conclusão)

## 🔍 Visão Geral
Este script de automação realiza a instalação e configuração de um servidor web Apache em sistemas baseados em Debian/Ubuntu, e faz o deployment de uma aplicação web baixada diretamente do GitHub. É uma solução típica de Infrastructure as Code (IAC) para configuração rápida de ambientes web.

## 📦 Funcionalidades

### 🔄 1. Atualização do Sistema
```bash
apt-get update
apt-get upgrade -y
```
- Atualiza a lista de pacotes disponíveis no repositório
- Realiza upgrade de todos os pacotes instalados para suas versões mais recentes
- O parâmetro `-y` confirma automaticamente todas as atualizações

### ⚙️ 2. Instalação de Pacotes
```bash
apt-get install apache2 -y
apt-get install unzip -y
```
- Instala o servidor web Apache2
- Instala o utilitário unzip para descompactação de arquivos
- A opção `-y` evita prompts de confirmação durante a instalação

### 🌐 3. Download da Aplicação
```bash
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main
```
- Navega para o diretório `/tmp` (temporário)
- Baixa o arquivo da aplicação do repositório GitHub
- Descompacta o arquivo baixado

### 📂 4. Implantação da Aplicação
```bash
cd linux-site-dio-main
cp -R * /var/www/html/
```
- Acessa o diretório da aplicação descompactada
- Copia recursivamente todo o conteúdo para o diretório padrão do Apache
- `/var/www/html/` é o diretório raiz padrão para sites no Apache

## ▶️ Execução do Script
Para executar o script:
1. Garanta que o arquivo tenha permissões de execução:
   ```bash
   chmod +x script-iac2.sh
   ```
2. Execute como root ou com sudo:
   ```bash
   sudo ./script-iac2.sh
   ```

## 📋 Pré-requisitos
- Sistema operacional baseado em Debian/Ubuntu
- Acesso root ou privilégios sudo
- Conexão com a internet para downloads
- Portas 80 (HTTP) e/ou 443 (HTTPS) disponíveis

## ⚠️ Considerações Importantes
- O script sobrescreve qualquer conteúdo existente em `/var/www/html/`
- Os arquivos temporários não são removidos após a execução
- O Apache é iniciado automaticamente após a instalação
- Não há verificação de erro em cada etapa do script

## 🛡️ Boas Práticas de Segurança
- Verifique a origem do código antes de baixar e executar
- Considere implementar HTTPS para ambientes de produção
- Configure firewall adequadamente
- Revise as permissões dos arquivos implantados
- Atualize regularmente o sistema e o Apache

## ⚡ Possíveis Melhorias
- Criação de um site prorpio para servir de repositório de projetos
- Adicionar tratamento de erros em cada etapa
- Implementar limpeza automática de arquivos temporários
- Incluir backup do conteúdo existente antes da sobrescrita
- Adicionar verificação de serviço Apache após instalação
- Configurar variáveis para maior flexibilidade (URL do repositório, diretório destino)
- Implementar logging para auditoria
- Adicionar configuração básica de segurança do Apache
- Incluir verificação de sucesso das operações

## 🏁 Conclusão
Este script oferece uma solução rápida para configurar um servidor web Apache e realizar o deployment de uma aplicação web específica. É adequado para ambientes de desenvolvimento ou demonstração, mas deve ser adaptado para uso em produção adicionando verificações de segurança e tratamento de erros apropriados. O script exemplifica bem o conceito de IAC para deployment de aplicações web simples.
Neste exemplo, foi carregando o mesmo site utilizado pelo orientador Denilson Bonatti. Como melhoria futura para o projeto, deverá ser criado um site para ser utilizado como portfólio de projeto que irá substituir o site utilizado inicialmente.

## 📜 Licença

Este projeto está licenciado sob a licença MIT 

## 🔗 Acesso ao Projeto

Você pode acessar e baixar este projeto através do seguinte link:
GitHub - [script-iac2.sh](https://github.com/FredericoSander/linux_projeto2_iac_web/blob/main/scripts/script-iac2.sh)

Ou clone o repositório usando o comando:
git clone https://github.com/FredericoSander/linux_projeto2_iac_web

- Requisitos para execução: SO Linux

## 👤 Autor
| [<img loading="lazy" src="https://avatars.githubusercontent.com/u/136928502?s=96&v=4" width=115><br><sub>Frederico Sander</sub>](https://github.com/FredericoSander)
| :---: | 