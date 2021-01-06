#!/bin/bash
echo "Installing Mono"
sleep 2
sudo apt install gnupg ca-certificates 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF 
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list 
sudo apt update 
sudo apt install mono-devel
echo "Done Installing Mono"
echo "Downloading Terraria Server"
sleep 2
sudo apt update 
sudo apt install -y apt tmux unzip && wget https://terraria.org/system/dedicated_servers/archives/000/000/042/original/terraria-server-1412.zip  
unzip terraria-server* 
echo "Done Installing Terraria Server"
echo "Launching Terraria Server"
cd 1412 
cd Linux  
rm System.dll
chmod +x TerrariaServer*
mono TerrariaServer.exe
