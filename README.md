# 🚀 Infraestrutura como Código – Setup Apache + Deploy de Aplicação

Este projeto contém um script em Bash para provisionamento automático de um servidor web utilizando Apache e deploy de uma aplicação estática.

---

# 📋 Descrição

O script realiza as seguintes etapas:

Atualiza o sistema operacional
Instala dependências necessárias
Baixa uma aplicação web de um repositório público
Realiza o deploy automático no diretório padrão do Apache

Ideal para estudos de Infraestrutura como Código (IaC), automação de ambientes e setup rápido de servidores web.

# 🛠️ Tecnologias Utilizadas
- Bash Script
- Apache2
 - Linux (Debian/Ubuntu-based)
 - wget / unzip

---
# ⚙️ Pré-requisitos

Antes de executar o script, certifique-se de que:

Está utilizando um sistema baseado em Debian/Ubuntu
Possui permissões de superusuário (root ou sudo)

---

# ▶️ Como usar
1. Clone o repositório

`git clone <URL_DO_REPOSITORIO>`

`cd <NOME_DO_REPOSITORIO>`

3. Dê permissão de execução ao script

`chmod +x iac_setup_apache.sh`

6. Execute o script

`sudo ./iac_setup_apache.sh`

---

# 📦 O que o script faz (detalhado)

## Atualiza os pacotes do sistema.
`apt-get update`

`apt-get upgrade -y`

## Instala o servidor Apache e utilitário para descompactação.

`apt-get install apache2 -y`

`apt-get install unzip -y`

## Baixa e extrai a aplicação web.

`wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip`

`unzip main.zip`

## Copia os arquivos para o diretório padrão do Apache.

`cp -R * /var/www/html/`


---

# 🌐 Resultado esperado

Após a execução, a aplicação estará disponível no navegador:

`http://<IP_DO_SERVIDOR>`

---

# ⚠️ Observações
 - O script sobrescreve arquivos existentes em /var/www/html
 - Recomendado rodar em ambiente de teste ou VM
 - Pode ser adaptado para CI/CD ou provisionamento em cloud


# 💡 Possíveis melhorias
 
 - Adicionar tratamento de erros
 - Parametrizar URL do repositório
 - Suporte a Docker
 - Configuração de Virtual Hosts
 - Uso com ferramentas como Terraform ou Ansible
