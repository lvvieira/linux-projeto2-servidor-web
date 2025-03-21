#!/bin/bash

echo "Iniciando o provisionamento do servidor web..."

# Atualizando os pacotes
echo "Atualizando o sistema..."
apt-get update -y
apt-get upgrade -y

# Instalando o Apache
echo "Instalando o Apache..."
apt-get install apache2 -y

# Baixando e copiando arquivos do site
echo "Criando página web padrão..."
echo "<html>
  <head>
    <title>Servidor Web Apache - Provisionado via Script</title>
  </head>
  <body>
    <h1>Olá, mundo! Servidor Apache configurado com sucesso!</h1>
    <p>Esse conteúdo foi gerado automaticamente.</p>
  </body>
</html>" > /var/www/html/index.html

# Reiniciando o serviço para garantir que está rodando
echo "Reiniciando o serviço Apache..."
systemctl restart apache2

# Habilitando Apache para iniciar com o sistema
systemctl enable apache2

echo "Provisionamento concluído. Acesse via IP da máquina para visualizar a página web."
