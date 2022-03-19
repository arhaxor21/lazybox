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

apt update
apt upgrade
apt install python3-pip
apt install git
apt install leafpad
apt install dnsmap
apt install ipcalc
apt install gobuster
apt install ipcalc
apt install gedit
apt install speedtest-cli
apt install htop
apt install libcurl4-openssl-dev
apt install libssl-dev
apt install jq
apt install ruby-full
apt install libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
apt install build-essential libssl-dev libffi-dev python-dev
apt install libldns-dev
apt install rename
apt install xargs
apt install openssh-server
apt install apache2
apt install tor
apt install macchanger
apt install awscli
apt install golang
apt dist-upgrade
dpkg --add-architecture i386
apt update
apt install software-properties-common wget
wget -O- -q https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/Release.key | apt-key add -
add-apt-repository 'deb http://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10 ./'
apt install --install-recommends winehq-stable
apt update

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
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install sublime-text
