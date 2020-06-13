clear
$version='UHDS 1.0 - by Matfor.com.br'
sudo apt remove docker docker-engine docker.io -y 
sudo apt update
apt install sudo -y

sudo apt install \
    cockpit \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    samba \
    cockpit-docker \
    cockpit-packagekit \
    docker-compose -y

sudo apt upgrade -y
sudo apt autoremove -y
sudo cockpit-plugin/./cockpit-smb-plugin.sh
sudo apt install docker-compose -y

#Docker install
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt install docker-ce -y
sudo usermod -aG docker $user
echo $version
#docker image build
sudo docker-compose up

