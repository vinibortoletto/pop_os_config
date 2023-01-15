echo " "
echo "#############################"
echo "### INSTALLING GITHUB CLI ###"
echo "#############################"
echo " "

type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
sudo apt update -y 
sudo apt install gh -y
gh auth login

echo " "
echo "##################################"
echo "### INSTALLING TRYBE PUBLISHER ###"
echo "##################################"
echo " "

git clone git@github.com:tryber/student-repo-publisher.git ~/student-repo-publisher && \
cd ~/student-repo-publisher && \
bash publisher-config.sh
