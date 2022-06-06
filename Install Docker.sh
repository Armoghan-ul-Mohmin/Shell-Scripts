#! /bin/bash

if [ "$EUID" -ne 0 ];
  then 
  echo "Please run as root"
  exit
fi

echo "#######################################"
echo "             Docker Install            "
echo "#######################################"

echo "Main Menu"
echo "1. Install Requirments"
echo "2. Install Docker"
echo "3. Test Docker"
echo "4. Pull SQL-Server Image"
echo "5. Run SQL-Server image"
echo "6. View Running Services in Docker"
echo "7. Error log inside the container"
echo "8. Connect to SQL Server"

echo "Select an Option: "
read A


if [ $A = '1' ]; then
    clear
    echo "#############"
	echo "Requirments" 
	echo "#############"
	echo 
    sudo apt-get install apt-transport-https ca-certificates
    sleep 2
fi

if [ $A = '2' ]; then
	clear
	echo "#############"
	echo "Install Docker"
	echo "#############"
	echo 
    sudo apt install docker
    sudo apt install docker.io
    sleep 2
fi

if [ $A = '3' ]; then
	clear
	echo "#############"
	echo "Test Dcker" 
	echo "#############"
	echo 
    sudo docker run hello-world
    sleep 2
fi

if [ $A = '4' ]; then
	clear
	echo "#########################"
	echo "Pull the MS-SQL Image"
	echo "#########################"
	echo  
    sudo docker pull mcr.microsoft.com/mssql/server:2019-latest
    sleep 2
fi

if [ $A = '5' ]; then
	clear
	echo "#######################################"
	echo "Run the container image with Docker"
	echo "#######################################"
    echo 
	echo "#######################################"
    echo "Pick a Password for MS-SQL Server: " 
    read password
    echo "#######################################"
	sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=$password" \
        -p 1433:1433 --name sql1 --hostname sql1 \
        -d mcr.microsoft.com/mssql/server:2019-latest
    sleep 2
fi

if [ $A = '6' ]; then
	clear
	echo "##################################"
	echo "View Running Services in Docker"
	echo "##################################" 
    echo 
    sudo docker ps -a
    sleep 5
fi

if [ $A = '7' ]; then
	clear
	echo "#########################################"
	echo "SQL Server error log inside the container"
	echo "#########################################"
    echo 
    sudo docker exec -t sql1 cat /var/opt/mssql/log/errorlog | grep connection
    sleep 2
fi

if [ $A = '8' ]; then
	clear
	echo "#####################"
	echo "Connect to SQL Server"
	echo "#####################"
    echo 
    sudo docker exec -it sql1 "bash"
    sleep 2
fi





