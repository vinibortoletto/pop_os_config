source ./.functions.sh

echo_doing 'Installing MySQL Workbench'

wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb
sudo apt install -y ./mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb
rm mysql-workbench-community_8.0.31-1ubuntu22.04_amd64.deb
sudo cp code_editor.xml /usr/share/mysql-workbench/data/

echo_done
