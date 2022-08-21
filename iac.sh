#! /bin/bash
echo "Criação dos diretórios..."

mkdir /adm
mkdir /adm
mkdir /sec
mkdir /publico

echo "Criação dos grupos..."

groupadd   GRP_ADM
groupadd   GRP_VEN
groupadd   GRP_SEC

echo "Criação dos usuários e adição aos grupos..."

useradd cicero -m -s /bin/bash -i $(openssl passwd -crypt F349ij-@12) -G GRP_ADM
useradd leonardo -m -s /bin/bash -i $(openssl passwd -crypt F349ij-@12) -G GRP_ADM
useradd marcelia -m -s /bin/bash -i $(openssl passwd -crypt F349ij-@12) -G GRP_ADM

useradd tatiane -m -s /bin/bash -i $(openssl passwd -crypt F349ij-@12) -G GRP_VEN
useradd francisco -m -s /bin/bash -i $(openssl passwd -crypt F349ij-@12) -G GRP_VEN
useradd lopes -m -s /bin/bash -i $(openssl passwd -crypt F349ij-@12) -G GRP_VEN

useradd barroso -m -s /bin/bash -i $(openssl passwd -crypt F349ij-@12) -G GRP_SEC
useradd carlos -m -s /bin/bash -i $(openssl passwd -crypt F349ij-@12) -G GRP_SEC
useradd bruno -m -s /bin/bash -i $(openssl passwd -crypt F349ij-@12) -G GRP_SEC

echo "Definição de permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado com sucesso."