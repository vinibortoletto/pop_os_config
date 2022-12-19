echo " "
echo "##################################"
echo "### INSTALLING MYSQL WORKBENCH ###"
echo "##################################"
echo " "

cd ~/Downloads && wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb
sudo apt install -y ./mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb

echo " "
echo "#########################################"
echo "### CONFIGURING MYSQL WORKBENCH THEME ###"
echo "#########################################"
echo " "

sudo cp code_editor.xml /usr/share/mysql-workbench/data/