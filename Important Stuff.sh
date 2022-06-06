#! /bin/bash

if [ "$EUID" -ne 0 ];
  then 
  echo "Please run as root"
  exit
fi
echo "#######################################"
echo "             Main Menu            "
echo "#######################################"
 
echo "1.  Update"
echo "2.  Upgrade"
echo "3.  Neofetch"
echo "4.  Nams"
echo "5.  Snap"
echo "6.  Discord"
echo "7.  Sublime Text"
echo "8.  Notion"
echo "9.  Visual Studio Code"
echo "10. Requirments For Docker"
echo "11. Docker"
echo "12. Wine"
echo "13. Ngrok"
echo "14. Azure Data Studio"


echo "Select an Option: "
read A

if [ $A = '1' ]; then
    clear
    echo "#########"
	echo "Updating" 
	echo "#########"
	echo 
    sudo apt update
    sleep 2
fi
   
if [ $A = '2' ]; then
    clear
    echo "#############"
	echo "Upgrading" 
	echo "#############"
	echo 
    sudo apt upgrade
    sleep 2
fi

if [ $A = '3' ]; then
    clear      
    echo "####################"
	echo "Installing Neofetch" 
	echo "####################"
	echo 
    sudo apt install neofetch
    sleep 2
fi

if [ $A = '4' ]; then
    clear
    echo "#################"
	echo " Installing Nasm" 
	echo "#################"
	echo 
    sudo apt install nasm
    sleep 2
fi

if [ $A = '5' ]; then
    clear
    echo "################"
	echo " Installing Snap" 
	echo "################"
	echo 
    sudo apt install snap
    sleep 2
fi

if [ $A = '6' ]; then
    clear
    echo "###################"
	echo " Installing Discord" 
	echo "###################"
	echo 
    sudo snap install discord
    sleep 2
fi

if [ $A = '7' ]; then
    clear
    echo "########################"
	echo " Installing Sublime Text" 
	echo "########################"
	echo 
    sudo snap install sublime-text --classic
    sleep 2
fi

if [ $A = '8' ]; then
    clear
    echo "##################"
	echo " Installing Notion" 
	echo "##################"
	echo 
    sudo snap install notion-snap
    sleep 2
fi

 if [ $A = '9' ]; then
    clear
    echo "##############################"
    echo "Installing Visual Studio Code " 
	echo "##############################"
	echo 
    sudo apt install code
    sleep 2
fi

if [ $A = '10' ]; then
    clear
    echo "#######################"
	echo "Requirments For Docker " 
	echo "#######################"
	echo 
    sudo apt-get install apt-transport-https ca-certificates
    sleep 2
fi
        
if [ $A = '11' ]; then
    clear
    echo "##################"
	echo "Installing  Docker" 
	echo "##################"
	echo 
    sudo apt install docker
    sudo apt install docker.io
    sleep 2
fi

 if [ $A = '12' ]; then
    clear
    echo "##############"
	echo "Install  Wine" 
	echo "##############"
	echo 
	        echo "1. Wine"
	        echo "2. Wine32"
	        echo "3. Wine Mono"
	        echo "4. Wine Tricks"
	        echo "Select an Option: "
	        read B
	                if [ $B = '1' ]; then
                    clear
                    echo "##################"
	                echo "Installing  Wine" 
	                echo "##################"
	                echo 
	                sudo apt install wine
	                sleep 2
	              fi
	                
	                if [ $B = '2' ]; then
                    clear
                    echo "##################"
	                echo "Installing  Wine 32" 
	                echo "##################"
	                echo 
	                sudo dpkg --add-architecture i386
	                sudo apt update
	                sudo apt install wine32
	                sleep 2
	              fi
	              
	                if [ $B = '3' ]; then
                    clear
                    echo "#####################"
	                echo "Installing  Wine Mono" 
	                echo "#####################"
	                echo 
	                sudo apt-get install --no-install-recommends wine-mono0.0.8
	                sudo apt-get install winetricks
	                sleep 2
	              fi
	              
	                 if [ $B = '4' ]; then
                    clear
                    echo "########################"
	                echo "Installing  Wine Tricks" 
	                echo "########################"
	                echo
	                sudo apt-get install winetricks #dotnet45
	                sleep 2
	              fi   
fi
            
if [ $A = '13' ]; then
    clear
    echo "##################"
	echo "Installing  Ngrok" 
	echo "##################"
	echo 
	cd 
	cd Downloads
    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
    sudo tar xvzf ~/Downloads/ngrok-v3-stable-linux-amd64.tgz -C /usr/bin
    sleep 2
fi
        
 if [ $A = '14' ]; then
    clear
    echo "##############################"
	echo "Installing Azure Data Studio " 
	echo "##############################"
    echo 
    cd
    cd Downloads
    wget https://go.microsoft.com/fwlink/?linkid=2193327
    mv "index.html?linkid=2193327" "azuredatastudio.deb"
    sudo dpkg -i azuredatastudio.deb
    sleep 2
fi


