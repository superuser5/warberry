if [ "$(id -u)" != "0" ]; then
	echo "ERROR: Sorry, you are not root. Run this script as root or with sudo."
	exit 1
fi

echo """
        Creating necessary directories...
    """

cd ..
mkdir WarBerry
mv warberry/ WarBerry/
cd WarBerry/
mkdir Results
mkdir Tools

echo """
        Updating Distro...
    """

apt-get update -y


echo """
        Installing necessary tools...
    """

apt-get install nbtscan -y
apt-get install python-scapy -y
apt-get install tcpdump -y
apt-get install nmap -y 
apt-get install python-nmap -y 
apt-get install python-bluez -y

pip install optparse-pretty 
pip install netaddr 
pip install ipaddress 

apt-get install ppp -y
apt-get install xprobe2 -y
apt-get install sg3-utils -y
apt-get install netdiscover -y
apt-get install macchanger -y
wget http://seclists.org/nmap-dev/2016/q2/att-201/clamav-exec.nse -O /usr/share/nmap/scripts/clamav-exec.nse

cd /home/pi/WarBerry/Tools


echo """
        Cloning some awesome repos...
    """

git clone https://github.com/DanMcInerney/net-creds.git

apt-get install onesixtyone -y
apt-get install nikto -y
apt-get install hydra -y
apt-get install john -y
apt-get install bridge-utils -y
apt-get install w3af-console -y
apt-get install ettercap-text-only -y
apt-get install cryptcat -y
apt-get install ike-scan -y
git clone https://github.com/sqlmapproject/sqlmap.git
git clone https://github.com/CoreSecurity/impacket.git
git clone https://github.com/samratashok/nishang.git
git clone https://github.com/SpiderLabs/Responder.git
git clone https://github.com/PowerShellMafia/PowerSploit.git
git clone https://github.com/offensive-security/exploit-database.git
wget https://download.sysinternals.com/files/SysinternalsSuite.zip
unzip SysinternalsSuite.zip



echo """
        All done ready to rock...
    """

