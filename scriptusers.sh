#! /bin/bash

echo "Criando diretórios e permissões..."

mkdir -m 777 /publico
mkdir -m 770 /adm
mkdir -m 770 /ven
mkdir -m 770 /sec

echo "Criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt abc@123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt abc@123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt abc@123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt abc@123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt abc@123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt abc@123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt abc@123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt abc@123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt abc@123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Fim do script!"
