# source: 
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04

# Isto vai garantir que não temos uma versão errada instalada!
sudo apt-get remove docker docker.io containerd runc

# Este comando vai garantir que a lista de pacotes não tem erro
sudo apt update


# 1 - Adiciona certificado
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# 2 - Adiona chave  GPG
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 3 - Adiciona um repositório com uma versão que não tem no apt install normal
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# 4 - Não sei, mas precisa!
apt-cache policy docker-ce

# 5 - Agora sim, vamos instalador tudo de docker que precisamos!
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose

# 6 - Vamos conferir que Docker foi instalado
sudo systemctl status docker
docker -v
docker-compose -v

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

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

# Aproveite a vida com containers!
