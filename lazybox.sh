#!/bin/bash
#Just please absorve the code once and make it install 
#Mostly i have boxed all the tools

echo "██╗      █████╗   ███████╗ ██╗   ██╗ ██████╗   █████╗   ██╗  ██╗"
echo "██║      ██╔══██╗ ╚════██  ██╗░██╔╝ ██╔══██╗  ██╔══██╗  ╚██╗██╔╝"
echo "██║      ███████║  ███╔═╝  ╚████╔╝  ██████╦╝  ██║░░██║   ╚███╔╝"
echo "██║      ██╔══██║ ██╔══╝   ╚██╔╝    ██╔══██╗  ██║░░██║   ██╔██╗ "
echo "███████╗ ██║  ██║ ███████╗  ██║     ██████╦╝  ╚█████╔╝  ██╔╝╚██╗"
echo "╚══════╝ ╚═╝  ╚═╝ ╚══════╝  ╚═╝     ╚ ═════╝   ╚════╝  ╚═╝   ╚═╝"

echo "Dev:abishekraghav Murugeashan"

banner() {
	echo "+------------------------------------------+"
	printf "|$(tput bold) %-40s $(tput sgr0)|\n" "$@"
	echo "+------------------------------------------+"
}


banner " setting up source file for kali"

echo "deb-src https://http.kali.org/kali kali-rolling main non-free contrib" >/etc/apt/sources.list
echo "deb https://http.kali.org/kali kali-rolling main non-free contrib" >>/etc/apt/sources.list
echo "deb https://ftp.harukasan.org/kali kali-rolling main non-free contrib" >>/etc/apt/sources.list
echo "deb-src https://ftp.harukasan.org/kali kali-rolling main non-free contrib" >>/etc/apt/sources.list

echo "Sources file added"

banner "setting up Resolv config adding"

echo "## OpenDNS ##" >/etc/resolv.conf
echo "nameserver 208.67.222.222" >>/etc/resolv.conf
echo "nameserver 208.67.220.220" >>/etc/resolv.conf
echo "## Google DNS ##" >>/etc/resolv.conf
echo "nameserver 8.8.8.8" >>/etc/resolv.conf
echo "nameserver 8.8.4.4" >>/etc/resolv.conf

echo "Resolv config added"

banner "updating linux and packages"

sudo apt update
sudo apt upgrade
sudo apt install python3-pip
sudo apt install git
sudo apt install leafpad
sudo apt install dnsmap
sudo apt install ipcalc
sudo apt install gobuster
sudo apt install ipcalc
sudo apt install gedit
sudo apt install speedtest-cli
sudo apt install htop
sudo apt install libcurl4-openssl-dev
sudo apt install libssl-dev
sudo apt install jq
sudo apt install ruby-full
sudo apt install libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt install build-essential libssl-dev libffi-dev python-dev
sudo apt install libldns-dev
sudo apt install rename
sudo apt install xargs
sudo apt install openssh-server
sudo apt install apache2
sudo apt install tor
sudo apt install macchanger
sudo apt install awscli
sudo apt install golang

echo "All the libaries and pre tools are downloaded and installed"

banner "installing automaated .bashrc for your linux"
git clone https://github.com/arhaxor21/Autocon.git
cd Autocon/
cat bashrc > ~/.bashrc
cat zshrc > ~/.zshrc
source ~/.bashrc
source ~/.zshrc
echo "Successfully configured the all your alias"

banner "Sublime-text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
