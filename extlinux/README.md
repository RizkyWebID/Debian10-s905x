20-07-2022
~~~~~~~~~~
O	Melalukan Konfigurasi Mac Address
	# cp /boot/extlinux/mac-address-lancard /etc/network/interfaces

O	Melakukan Konfigurasi List Update Armbian Server
	# cp /boot/extlinux/sources.list.debian /etc/apt/sources.list

O	Melakukan Update Data
	# apt-get clean && apt-get autoclean && apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

Belum, Hanya Cacatan bila diperlukan

X	Melakukan Instal Apache Server
	# apt-get install apache2
	# sudo apt install ca-certificates apt-transport-https 
	# wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
	# sudo echo "deb https://packages.sury.org/php/ buster main" | tee /etc/apt/sources.list.d/php.list
	# apt-get update -y && apt-get install php7.3
	# apt-get update -y && apt-get install php7.3-cli php7.3-common php7.3-curl php7.3-gd php7.3-json php7.3-mbstring php7.3-mysql php7.3-xml
	# php -v

X	File Adguard Configurasi sudah ada di "/boot/extlinux/AdGuardHome.yaml" dan harap di sesuaikan
	# tar xvf AdGuardHome.tar.gz 
	# cd AdGuardHome
	# sudo ./AdGuardHome -s install
