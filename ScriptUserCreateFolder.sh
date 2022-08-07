#!/bin/bash
echo "Criação Usuários"
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /public

echo "-----Criação de Grupos-----"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "-----Criação Usuários-----"
useradd "carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
chmod 770 /home/carlos
useradd "maria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
chmod 770 /home/maria
useradd "joao" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
chmod 770 /home/joao

useradd "debora" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
chmod 770 /home/debora
useradd "sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
chmod 770 /home/sebastiana
useradd "roberta" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
chmod 770 /home/roberta

useradd "josefina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
chmod 770 /home/josefina
useradd "amanda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
chmod 770 /home/amanda
useradd "rogerio" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
chmod 770 /home/rogerio

echo "Permissões de usuário"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Fim Execução"



