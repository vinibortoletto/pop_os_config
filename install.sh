echo " "
echo "#######################"
echo "### UPDATING SYSTEM ###"
echo "#######################"
echo " "

sudo apt update -y
sudo apt upgrade -y

echo " "
echo "#####################################"
echo "### INSTALLING VISUAL STUDIO CODE ###"
echo "#####################################"
echo " "

sudo apt install code -y

echo " "
echo "#######################"
echo "### INSTALLING ZOOM ###"
echo "#######################"
echo " "

flatpak install zoom -y

echo " "
echo "##############################"
echo "### INSTALLING QBITTORRENT ###"
echo "##############################"
echo " "

flatpak install qbittorrent -y

echo " "
echo "########################"
echo "### INSTALLING PCSX2 ###"
echo "########################"
echo " "

flatpak install pcsx2 -y

echo " "
echo "##############################"
echo "### INSTALLING DUCKSTATION ###"
echo "##############################"
echo " "

flatpak install duckstation -y

echo " "
echo "############################"
echo "### INSTALLING FLAMESHOT ###"
echo "############################"
echo " "

flatpak install flameshot -y

echo " "
echo "#########################"
echo "### INSTALLING DOCKER ###"
echo "#########################"
echo " "

sudo apt-get remove docker* containerd runc

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl start docker
sudo systemctl enable docker
docker run hello-world

echo " "
echo "#########################"
echo "### INSTALLING MYSQL WORKBENCH ###"
echo "#########################"
echo " "

wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb                        ─╯
sudo apt install ./mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb                                                            ─╯
