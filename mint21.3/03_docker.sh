# source: 
# https://computingforgeeks.com/install-docker-docker-compose-on-linux-mint/

# Isto vai garantir que não temos uma versão errada instalada!
# GARANTIR QUE NAO TEM DOCKER INSTALADO
# Para remover um docker antigo

sudo apt-get remove docker docker.io containerd runc
sudo apt-get purge -y docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras docker-desktop
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli docker-compose-plugin
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-compose-plugin
dpkg -l | grep -i docker

# dpkg -l | grep -i docker
# sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli docker-compose-plugin
# sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-compose-plugin
# sudo rm -rf /var/lib/docker /etc/docker
# sudo rm /etc/apparmor.d/docker
# sudo groupdel docker
# sudo rm -rf /var/run/docker.sock

# Este comando vai garantir que a lista de pacotes não tem erro
sudo nala update


sudo apt-get purge -y docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras docker-desktop

# 1 - Adiciona certificado
sudo nala install apt-transport-https ca-certificates curl software-properties-common

# 2 - Adiona chave  GPG
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# 3 - Adiciona um repositório com uma versão que não tem no apt install normal
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 4 - Não sei, mas precisa!
apt-cache policy docker-ce
sudo nala update

# 5 - Agora sim, vamos instalador tudo de docker que precisamos!
sudo nala install docker-ce docker-ce-cli containerd.io

# 6 - Vamos conferir que Docker foi instalado
sudo systemctl status docker
docker -v

# 7 - Não queremos ter que ficar usando sudo docker para tudo
#     Com os comandos abaixo, vamos para que nosso usuário pode executar docker
# https://docs.docker.com/install/linux/linux-postinstall/
# sudo groupadd docker

sudo usermod -aG docker ${USER}
su - ${USER}
groups

# 7 - Continuando! TROCAR 'meu-user' por seu usuário atual do Ubuntu!
sudo usermod -aG docker meu-user   ## update the username string

# 7 - Para finalizar!
#     Na maioria dos casos, precisamos fazer um logout e logar novamente no
#     Ubuntu. Assim, podemos fazer `docker ps` sem precisar fazer `sudo docker ps`
#     p.s: Pode executar o passo 8 antes de fazer logout ou reiniciar seu Ubuntu!

# 8 - (OPCIONAL) Garantir que temos um docker-compose mais atualizado!
# Update the docker-compose
# https://docs.docker.com/compose/install/


sudo nala install docker-compose 
docker-compose version

sudo nala install docker-compose-plugin
docker compose version

# Aproveite a vida com containers!
