cd ~/Downloads
wget https://golang.org/dl/go1.17.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf ~/Downloads/go1.17.2.linux-amd64.tar.gz 
export PATH=$PATH:/usr/local/go/bin

go version  



# HUGO
cd ~/Downloads
wget https://github.com/gohugoio/hugo/releases/download/v0.88.1/hugo_0.88.1_Linux-64bit.deb
sudo dpkg -i hugo_0.88.1_Linux-64bit.deb

