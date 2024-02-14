#!/bin/bash

#utilities  and Languages
#git
sudo apt install git -y
#curl
sudo apt install curl -y
#wget
sudo apt install wget -y
#java
sudo apt install openjdk-18-jre
sudo apt install default-jdk -y
#go
wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz 
sudo tar -xvf go1.21.6.linux-amd64.tar.gz -C /usr/local 
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
source ~/.bashrc

#Scanning Tools
#nmap
sudo apt install nmap -y
#masscan
sudo apt install masscan -y
#nikto 
sudo apt install nikto -y
#wpscan
sudo apt install ruby-full
sudo gem install wpscan
#arp-scan
sudo apt install arp-scan -y
#Naabu
git clone https://github.com/projectdiscovery/naabu.git
sudo apt-get install libpcap-dev
cd naabu/v2/cmd/naabu
go build
sudo chmod +x naabu
sudo mv naabu /usr/local/bin

#Bruteforcing Tools
#hydra
sudo apt install hydra -y
#hashcat
sudo apt install hashcat -y
#crunch
sudo apt install crunch -y
#cewl
sudo apt install cewl -y
#dirb
sudo apt install dirb -y
#ffuf
sudo apt install ffuf -y
#wfuzz
sudo apt install wfuzz -y
#dirsearch
sudo apt install dirsearch -y
#seclists
sudo snap install seclists

#Subdomain Enum Tools 
#gobuster
sudo apt install gobuster -y
#dnsenum
sudo apt install dnsenum -y
#amass
sudo snap install amass
#sublist3r
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
pip3 install -r requirements.txt
# to run --> python3 ./sublist3r.py ...
#gau
mkdir gau
cd gau
wget https://github.com/lc/gau/releases/download/v2.2.1/gau_2.2.1_linux_amd64.tar.gz
tar xvf gau_2.2.1_linux_amd64.tar.gz
sudo mv gau /usr/bin/gau
#waybackurls
git clone https://github.com/tomnomnom/waybackurls.git
cd waybackurls
go build
sudo chmod +x waybackurls
sudo mv waybackurls /usr/local/bin
#run : waybackurls -h
#katana
https://github.com/projectdiscovery/katana.git
cd katana/cmd/katana
go build
sudo chmod +x katana
sudo mv katana /usr/local/bin
#httpx
sudo snap install httpx
#httprobe
git clone https://github.com/tomnomnom/httprobe.git
cd httprobe
go build
sudo chmod +x httprobe
sudo mv httprobe /usr/local/bin

#Basic Recon
#parsero - reads robots.txt
sudo apt install parsero -y
#netdiscover
sudo apt install netdiscover -y
#massdns
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
sudo make install
#puredns
sudo apt install -y python3 python3-dnspython pv
git clone https://github.com/d3mondev/puredns.git
cd puredns
go build
# to run: puredns
#whatweb
sudo apt install whatweb -y
#eyewitness
git clone https://github.com/RedSiege/EyeWitness.git
cd EyeWitness/Python/setup
chmod +x setup.sh
./setup.sh

#Exploit
#metasploit-framework
sudo snap install metasploit-framework
#recon-ng
sudo apt install recon-ng -y
#wireshark-qt
sudo apt install wireshark-qt -y
#sqlmap
sudo snap install sqlmap
#burpsuite pro using openjdk-18-jre
sudo apt-get install libcanberra-gtk-module
git clone https://github.com/cyb3rzest/Burp-Suite-Pro.git
cd Burp-Suite-Pro/
sudo chmod +x Linux_setup.sh 
sudo ./Linux_setup.sh
#zaproxy
sudo snap install zaproxy --classic

#Miscellaneous
#macchanger
sudo apt install macchanger -y

