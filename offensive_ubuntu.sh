#!/bin/bash

printf "What Kind of Tools You want to install?\n";

printf "Run All tools           : 0\n";
printf "Utilities and Languages : 1\n";
printf "Scanning Tools          : 2\n";
printf "Bruteforcing Tools      : 3\n";
printf "Subdomain Enum Tools    : 4\n";
printf "Basic Recon             : 5\n";
printf "Exploit                 : 6\n";
printf "Miscellaneous           : 7\n";

read tool_cat;
#printf "$tool_cat\n";

if [ $tool_cat -eq 1 ]; then
    printf "Which tool you want to install?\n"
    printf "All: 0\n"
    printf "Git: 1\n"
    printf "Curl: 2\n"
    printf "wget: 3\n"
    printf "Java: 4\n"
    printf "Go: 5\n"

    read ul;

    if [ $ul -eq 0 ];then
        printf "Installing git...\n";
        sudo apt install git -y;

        printf "Installing Curl... \n";
        sudo apt install curl -y;

        printf "Installing Wget...\n";
        sudo apt install wget -y;

        printf "Instaling Java ...\n";
        sudo apt install openjdk-18-jre;
        sudo apt install default-jdk -y;

        printf "Installing Go...\n";
        wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz ;
        sudo tar -xvf go1.21.6.linux-amd64.tar.gz -C /usr/local ;
        echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc;
        source ~/.bashrc;

    elif[ $ul -eq 1 ];then
        printf "Installing Git...\n"
        sudo apt install git -y;

    elif[ $ul -eq 2 ];then
        printf "Installing Curl...\n"
        sudo apt install curl -y;

    elif[ $ul -eq 3 ];then
        printf "Installing Wget...\n"
        sudo apt install wget -y;

    elif[ $ul -eq 4 ];then
        printf "Instaling Java ...\n";
        sudo apt install openjdk-18-jre;
        sudo apt install default-jdk -y;

    elif[ $ul -eq 5 ];then
        printf "Installing Go...\n";
        wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz ;
        sudo tar -xvf go1.21.6.linux-amd64.tar.gz -C /usr/local ;
        echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc;
        source ~/.bashrc;

    else 
        printf "Invalid Entity\n";
    fi
    

elif [ $tool_cat -eq 2 ]; then
    printf "Which Scanning Tool you want to Install?\n";
    printf "All :0\n"
    printf "Nmap :1\n"
    printf "Masscan :2\n"
    printf "Nikto :3\n"
    printf "Nessus :4\n"
    printf "Nuclei :5\n"
    printf "Wp-scan :6\n"
    printf "Arp-scan :7\n"
    printf "Naabu :8\n"

    read scn;
    if [ $scn -eq 0 ];then
        printf "Nmap is Installing...\n";
        sudo apt install nmap -y;

        printf "Masscan is Installing...\n";
        sudo apt install masscan -y;

        printf "Nikto is Installing...\n";
        sudo apt install nikto -y;

        #Nessus and Nuclei not available here now;
        printf "Nessus not available\n";

        printf "Nuclei not available\n";

        printf "Wp-scan is Installing...\n";
        sudo apt install ruby-full
        sudo gem install wpscan

        printf "arp-scan is Installing...\n";
        sudo apt install arp-scan -y;

        printf "Naabu is Installing...\n";
        git clone https://github.com/projectdiscovery/naabu.git
        sudo apt-get install libpcap-dev
        cd naabu/v2/cmd/naabu
        go build
        sudo chmod +x naabu
        sudo mv naabu /usr/local/bin

    elif [ $scn -eq 1];then
        printf "Nmap is Installing...\n";
        sudo apt install nmap -y;

    elif [ $scn -eq 2];then
        printf "Masscan is Installing...\n";
        sudo apt install masscan -y;

    elif [ $scn -eq 3];then
        printf "Nikto is Installing...\n";
        sudo apt install nikto -y;
    elif [ $scn -eq 4];then
        printf "Nessus not available\n";
    
    elif [ $scn -eq 5 ];then
        printf "Nuclei not available";

    elif [ $scn -eq 6 ];then
        printf "Wp-scan is Installing...\n";
        sudo apt install ruby-full
        sudo gem install wpscan

    elif [ $scn -eq 7 ];then
        printf "arp-scan is Installing...\n";
        sudo apt install arp-scan -y;

    elif [ $scn -eq 8 ];then
        printf "Naabu is Installing...\n";
        git clone https://github.com/projectdiscovery/naabu.git
        sudo apt-get install libpcap-dev
        cd naabu/v2/cmd/naabu
        go build
        sudo chmod +x naabu
        sudo mv naabu /usr/local/bin
    
    else 
        printf "Invalid Entity\n";
    fi

elif [ $tool_cat -eq 3 ]; then
    printf "Which Bruteforcing Tool you wanna Install ?\n";
    
    printf "All : 0\n";
    printf "Hydra : 1\n";
    printf "Hashcat : 2\n";
    printf "Crunch : 3\n";
    printf "Cewl : 4\n";
    printf "Dirb : 5\n";
    printf "ffuf : 6\n";
    printf "wfuzz : 7\n";
    printf "dirsearch : 8\n";
    printf "seclists: 9\n";

    read bft;

    if [ $bft -eq 0 ];then
        printf "Hydra is Installing ... \n"
        sudo apt install hydra -y

        printf "Hashcat is Installing ... \n"
        sudo apt install hashcat -y

        printf "Crunch is Installing ... \n"
        sudo apt install crunch -y

        printf "Cewl is Installing ... \n"
        sudo apt install cewl -y

        printf "dirb is Installing ... \n"
        sudo apt install dirb -y

        printf "ffuf is Installing ... \n"
        sudo apt install ffuf -y

        printf "wfuzz is Installing ... \n"
        sudo apt install wfuzz -y

        printf "dirsearch is Installing ... \n"
        sudo apt install dirsearch -y

        printf "Seclists is Installing ... \n"
        sudo snap install seclists

    elif [ $bft -eq 1 ];then
        printf "Hydra is Installing ... \n"
        sudo apt install hydra -y
    
    elif [ $bft -eq 2 ];then
        printf "Hashcat is Installing ... \n"
        sudo apt install hashcat -y
    
    elif [ $bft -eq 3 ];then
        printf "Crunch is Installing ... \n"
        sudo apt install crunch -y

    elif [ $bft -eq 4 ];then
        printf "Cewl is Installing ... \n"
        sudo apt install cewl -y

    elif [ $bft -eq 5 ];then
        printf "dirb is Installing ... \n"
        sudo apt install dirb -y

    elif [ $bft -eq 6 ];then
        printf "ffuf is Installing ... \n"
        sudo apt install ffuf -y

    elif [ $bft -eq 7 ];then
        printf "wfuzz is Installing ... \n"
        sudo apt install wfuzz -y

    elif [ $bft -eq 8 ];then
        printf "Dirsearch is Installing ... \n"
        sudo apt install dirsearch -y
    
    elif [ $bft -eq 9 ];then
        printf "Seclists is Installing ... \n"
        sudo snap install seclists;

    else 
        printf "Invalid Entity\n";
    fi

elif [ $tool_cat -eq 4 ]; then
    printf "Which Subdomain Enum tool you want to install?\n";
    printf "gobuster : 1\n";
    printf "dnsenum : 2\n";
    printf "amass : 3\n";
    printf "sublist3r : 4\n";
    printf "gau : 5\n";
    printf "waybackurls : 6\n";
    printf "katana : 7\n";
    printf "httpx : 8\n";
    printf "httprobe : 9\n";
    
    read se;

    if [ $se -eq 0 ];then
        printf "Gobuster is Installing ...\n";
        wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz 
        sudo tar -xvf go1.21.6.linux-amd64.tar.gz -C /usr/local 
        echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
        source ~/.bashrc

        printf "dnsenum is Installing ...\n";
        sudo apt install dnsenum -y

        printf "amass is Installing ...\n";
        sudo snap install amass

        printf "sublist3r is Installing ...\n";
        git clone https://github.com/aboul3la/Sublist3r.git
        cd Sublist3r
        pip3 install -r requirements.txt

        printf "gau is Installing ...\n";
        mkdir gau
        cd gau
        wget https://github.com/lc/gau/releases/download/v2.2.1/gau_2.2.1_linux_amd64.tar.gz
        tar xvf gau_2.2.1_linux_amd64.tar.gz
        sudo mv gau /usr/bin/gau

        printf "waybackurls is Installing ...\n";
        git clone https://github.com/tomnomnom/waybackurls.git
        cd waybackurls
        go build
        sudo chmod +x waybackurls
        sudo mv waybackurls /usr/local/bin

        printf "katana is Installing ...\n";
        https://github.com/projectdiscovery/katana.git
        cd katana/cmd/katana
        go build
        sudo chmod +x katana
        sudo mv katana /usr/local/bin

        printf "httpx is Installing ...\n";
        sudo snap install httpx

        printf "httprobe is Installing ...\n";
        git clone https://github.com/tomnomnom/httprobe.git
        cd httprobe
        go build
        sudo chmod +x httprobe
        sudo mv httprobe /usr/local/bin

    elif [$se -eq 1];then
        printf "Gobuster is Installing ...\n";
        wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz 
        sudo tar -xvf go1.21.6.linux-amd64.tar.gz -C /usr/local 
        echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
        source ~/.bashrc
 
    
    elif [$se -eq 2];then
        printf "dnsenum is Installing ...\n";

    elif [$se -eq 3];then
        printf "amass is Installing ...\n";
        sudo snap install amass

    elif [$se -eq 4];then
        printf "sublist3r is Installing ...\n";
        git clone https://github.com/aboul3la/Sublist3r.git
        cd Sublist3r
        pip3 install -r requirements.txt

    elif [$se -eq 5];then
        printf "gau is Installing ...\n";
        mkdir gau
        cd gau
        wget https://github.com/lc/gau/releases/download/v2.2.1/gau_2.2.1_linux_amd64.tar.gz
        tar xvf gau_2.2.1_linux_amd64.tar.gz
        sudo mv gau /usr/bin/gau

    elif [$se -eq 6];then
        printf "waybackurls is Installing ...\n";
        git clone https://github.com/tomnomnom/waybackurls.git
        cd waybackurls
        go build
        sudo chmod +x waybackurls
        sudo mv waybackurls /usr/local/bin

    elif [$se -eq 7];then
        printf "katana is Installing ...\n";
        https://github.com/projectdiscovery/katana.git
        cd katana/cmd/katana
        go build
        sudo chmod +x katana
        sudo mv katana /usr/local/bin

    elif [$se -eq 8];then
        printf "httpx is Installing ...\n";
        sudo snap install httpx

    elif [$se -eq 9];then
        printf "httprobe is Installing ...\n";
        git clone https://github.com/tomnomnom/httprobe.git
        cd httprobe
        go build
        sudo chmod +x httprobe
        sudo mv httprobe /usr/local/bin

    else
        printf "Invalid Entity\n";

    fi
elif [ $tool_cat -eq 5 ]; then
    printf "Which Basic Recon Tools you want to Install?\n";
    printf "All : 0\n"
    printf "Parsero : 1\n";
    printf "netdiscover : 2\n";
    printf "massdns : 3\n";
    printf "puredns : 4\n";
    printf "whatweb : 5\n";
    printf "eyewitness : 6\n";

    reaf brt;
    
    if[ $brt -eq 0];then 
        printf "Parsero is Installing...\n";
        sudo apt install parsero -y

        printf "netdiscover is Installing...\n";
        sudo apt install netdiscover -y

        printf "massdns is Installing...\n";
        git clone https://github.com/blechschmidt/massdns.git
        cd massdns
        make
        sudo make install

        printf "puredns is Installing ...\n";
        sudo apt install -y python3 python3-dnspython pv
        git clone https://github.com/d3mondev/puredns.git
        cd puredns
        go build

        printf "whatweb is Installing ...\n";
        sudo apt install whatweb -y

        printf "eyewitness is Installing ...\n";
        git clone https://github.com/RedSiege/EyeWitness.git
        cd EyeWitness/Python/setup
        chmod +x setup.sh
        sudo ./setup.sh

    elif [ $brt -eq 1 ];then
        printf "Parsero is Installing...\n";
        sudo apt install parsero -y

    elif [ $brt -eq 2 ];then
        printf "netdiscover is Installing...\n";
        sudo apt install netdiscover -y

    elif [ $brt -eq 3 ];then
        printf "massdns is Installing...\n";
        git clone https://github.com/blechschmidt/massdns.git
        cd massdns
        make
        sudo make install

    elif [ $brt -eq 4 ];then
        printf "puredns is Installing ...\n";
        sudo apt install -y python3 python3-dnspython pv
        git clone https://github.com/d3mondev/puredns.git
        cd puredns
        go build

    elif [ $brt -eq 5 ];then
        printf "whatweb is Installing ...\n";
        sudo apt install whatweb -y

    elif [ $brt -eq 6 ];then
        printf "eyewitness is Installing ...\n";
        git clone https://github.com/RedSiege/EyeWitness.git
        cd EyeWitness/Python/setup
        chmod +x setup.sh
        sudo ./setup.sh

    else 
        printf "Invalid Entity\n";
    fi
elif [ $tool_cat -eq 6 ]; then
    printf "Which Exploit Tools do you want to install?\n";
    printf "metasploit-framework: 1\n";
    printf "recon-ng: 2\n";
    printf "wireshark: 3\n";
    printf "sqlmap: 4\n";
    printf "burpsuite-pro: 5\n";
    printf "zaproxy: 6\n";

    read ex;
     if[ $ex -eq 0] ;then
        printf "Metasploit Framework is Installing...\n";
        sudo snap install metasploit-framework

        printf "Recon-ng is Installing...\n";
        sudo apt install recon-ng -y

        printf "Wireshark is Installing...\n";
        sudo apt install wireshark-qt -y

        printf "SQLmap is Installing...\n";
        sudo snap install sqlmap

        printf "Burpsuite is Installing...\n";
        sudo apt-get install libcanberra-gtk-module
        git clone https://github.com/cyb3rzest/Burp-Suite-Pro.git
        cd Burp-Suite-Pro/
        sudo chmod +x Linux_setup.sh 
        sudo ./Linux_setup.sh

        printf "ZAProxy is Installing...\n";
        sudo snap install zaproxy --classic;




    elif[ $ex -eq 1 ] ;then
        printf "Metasploit Framework is Installing...\n";
        sudo snap install metasploit-framework

    elif[ $ex -eq 2 ] ;then
        printf "Recon-ng is Installing...\n";
        sudo apt install recon-ng -y

    elif[ $ex -eq 3 ] ;then
        printf "Wireshark is Installing...\n";
        sudo apt install wireshark-qt -y

    elif[ $ex -eq 4 ] ;then
        printf "SQLmap is Installing...\n";
        sudo snap install sqlmap

    elif[ $ex -eq 5 ] ;then
        printf "Burpsuite is Installing...\n";
        sudo apt-get install libcanberra-gtk-module
        git clone https://github.com/cyb3rzest/Burp-Suite-Pro.git
        cd Burp-Suite-Pro/
        sudo chmod +x Linux_setup.sh 
        sudo ./Linux_setup.sh

    elif[ $ex -eq 6 ] ;then
        printf "ZAProxy is Installing...\n";
        sudo snap install zaproxy --classic

    else
        printf "Invalid Entity\n";
    fi

elif [ $tool_cat -eq 7 ]; then
    print "Which Miscellaneous tool you want to install?\n";
    print "All :  0\n"
    print "macchanger : 1\n";

    read ms;
    if[ $ms -eq 0 ]; then
        print "macchanger is Installing...\n";
        sudo apt install macchanger -y
    elif[ $ms -eq 1 ];then
        print"macchanger is Installing...\n";
        sudo apt install macchanger -y
    
    else
        print "Invalid Entity\n";

    fi

elif [ $tool_cat -eq 0 ]; then
	./all_tools.sh
else
    printf "Invalid Entity\n";
fi
