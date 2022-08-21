#! bin/bash
echo "Atulizando server..."
apt-get uptade
apt-get upgrade -y

echo "Inatalando programas..."
apt-get install apache2  unzip -y

echo "Baixando arquivos do site..."

cd /tpm
wget https://github.com/infsolution/portifolio/archive/refs/heads/master.zip
unzip portifolio-master.zip
cd portifolio-master/portifolio-master/
cp -R * /var/www/html
echo "Reinicindo apache"
systemctl restart apache2

echo "Site instalado com sucesso."