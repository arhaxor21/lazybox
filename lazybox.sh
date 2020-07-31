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
sudo apt install python-pip
sudo apt install python-dnspython
sudo apt install git
sudo apt install leafpad
sudo apt install dnsmap
sudo apt install ipcalc
sudo apt install gobuster
sudo apt install ipcalc
sudo apt install gedit
sudo apt install htop
sudo apt install libcurl4-openssl-dev
sudo apt install libssl-dev
sudo apt install jq
sudo apt install ruby-full
sudo apt install libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt install build-essential libssl-dev libffi-dev python-dev
sudo apt install python-setuprecon
sudo apt install libldns-dev
sudo apt install rename
sudo apt install xargs
sudo apt install openssh-server
sudo apt install apache2
sudo apt install tor
sudo apt install macchanger
sudo apt install awscli

echo "All the libaries and pre tools are downloaded and installed"

banner "installing automaated .bashrc for your linux"
git clone https://github.com/arhaxor21/Autocon.git
cd Autocon/
cat >/root/.bashrc
source ~/.bashrc
echo "Successfully configured the all your alias"

banner "Creating a directory for installing tools"
mkdir ~/recon/
cd ~/recon/
echo "recon is your directory that will store your tools"

banner "setting up golang for your linux"
wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
sudo tar -xvf go1.13.4.linux-amd64.tar.gz
sudo mv go /usr/loca
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >>~/.bashrc
echo 'export GOPATH=$HOME/go' >>~/.bashrc
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >>~/.bashrc
source ~/.bashrc

echo "golang added successfully -- setup the credentials"

banner "downloading Brutelist"
cd ~/recon/
git clone https://github.com/arhaxor21/BruteList.git
cd ~/recon/
echo "done"

banner "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r/
pip install -r requirements.txt
cd ~/recon/
echo "done"

banner "installing Arjun"
git clone https://github.com/s0md3v/Arjun
cd Arjun/
echo "done"

banner "Installing Aquatone"
go get github.com/michenriksen/aquatone
echo "done"

banner "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/recon/massdns
make
cd ~/recon/
echo "done"

banner "installing JSParser"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser/
sudo python setup.py install
cd ~/recon/
echo "done"

banner "installing teh_s3_bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/recon/
echo "done"

banner "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/recon/
echo "done"

banner "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
cd ~/recon/
echo "done"

banner "installing Tidos_frame work"
git clone https://github.com/0xInfection/TIDoS-Framework.git
cd TIDoS-Framework/
chmod +x install
./install
cd ~/recon/
echo "done"

echo "installing virtual host discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ~/recon/
echo "done"

echo "installing lazyrecon"
git clone https://github.com/nahamsec/lazyrecon.git
cd ~/recon/
echo "done"

banner "installing Link finder"
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder/
pip install -r requirements.txt
python3 setup.py install
cd ~/recon/
echo "done"

banner "installing asnlookup"
git clone https://github.com/yassineaboukir/asnlookup.git
cd ~/recon/asnlookup
pip install -r requirements.txt
cd ~/recon/
echo "done"

banner "installing Photon"
git clone https://github.com/s0md3v/Photon
cd Photon/
pip install -r requirements.txt
cd ~/recon/
echo "done"

banner "installing httprobe"
go get -u github.com/tomnomnom/httprobe
echo "done"

banner "installing unfurl"
go get -u github.com/tomnomnom/unfurl
echo "done"

banner "installing waybackurls"
go get github.com/tomnomnom/waybackurls
echo "done"

banner "installing crtndstry"
git clone https://github.com/nahamsec/crtndstry.git
echo "done"

banner "installing XSS-striker"
git clone https://github.com/s0md3v/XSStrike.git
cd XSStrike/
pip install -r requirements.txt
cd ~/recon/
echo "done"

banner "installing Ngrok and geckodriver"
cd ~/Lazybox/Drivers/
mv geckodriver ngrok /usr/bin/

echo "Ngrok and geckodriver added"

echo "enter your ngrok authtoken"
read words
ngrok authtoken $words

banner "your linux is ready"
