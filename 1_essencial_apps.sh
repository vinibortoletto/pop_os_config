#!/bin/bash
source ./.functions.sh

echo_doing 'Updating system'
sudo apt update -y
sudo apt upgrade -y
echo_done

echo_doing 'Installing Nala'
sudo apt install nala -y
echo_done

# echo_doing 'Installing Google Chrome'
# flatpak install com.google.Chrome -y
# echo_done

# echo_doing 'Installing Brave Browser'
# sudo nala install curl
# sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
# echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
# sudo nala update
# sudo nala install brave-browser -y

echo_doing 'Installing Blueman'
sudo nala install blueman -y
echo_done

echo_doing 'Installing VSCode'
sudo nala install code -y
echo_done

echo_doing 'Installing Discord'
flatpak install -y com.discordapp.Discord
echo_done

echo_doing 'Installing qBittorrent'
flatpak install qbittorrent -y
echo_done

echo_doing 'Installing MPV'
sudo nala install mpv -y
cp -r mpv ~/.config 
echo_done

#echo_doing 'Installing Steam'
#sudo flatpak install com.valvesoftware.Steam -y
#sudo nala install steam-devices -y
#echo_done

#echo_doing 'Installing PCSX2'
#flatpak install pcsx2 -y
#echo_done

#echo_doing 'installing Duckstation'
#flatpak install duckstation -y
#echo_done

echo_doing 'Installing Gnome Extension Manager'
sudo nala install gnome-shell-extension-manager -y
echo_done

echo_doing 'Installing Python Env'
sudo nala install python3 python3.10-venv python3-pip -y
echo_done

echo_doing 'Installing IntelliJ Community'
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y
echo_done

echo_doing 'Installing yt-dlp'
sudo add-apt-repository ppa:tomtomtom/yt-dlp -y
sudo nala install yt-dlp -y
echo_done

echo_doing 'Installing Azul Zulu JDK'
wget https://cdn.azul.com/zulu/bin/zulu21.30.15-ca-jdk21.0.1-linux_amd64.deb
sudo apt install -y ./zulu21.30.15-ca-jdk21.0.1-linux_amd64.deb
rm zulu21.30.15-ca-jdk21.0.1-linux_amd64.deb
echo_done

echo_doing 'Installing Stremio'
flatpak install -y com.stremio.Stremio
echo_done
