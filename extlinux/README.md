17-02-2023
~~~~~~~~~~

# Setting Armbian
armbian-config

# Seting Apt List Update
mv /boot/extlinux/Address-Apt.linux /etc/apt/sources.list

# Setting Network Interface
mv /boot/extlinux/Address-Mac.linux /etc/network/interfaces

# Script Auto Restar
mv /boot/extlinux/Auto-Reboot-STB.sh /home/reboot.sh

# Izin Akses Auto Restar
chmod +x /home/reboot.sh

# Penjadwalan Auto Restar
echo "0 0 1 * * root /home/reboot.sh" > /etc/cron.d/reboot

# Perintah Clean
apt-get clean

# Perintah Auto Clean
apt-get autoclean

# Perintah Update
apt-get -y update

# Perintah Auto Upgrade
apt-get -y upgrade

# Perintah Dist Upgrade
apt-get -y dist-upgrade

# Reboot Manual
reboot

# Install Apache2
apt-get install -y apache2

# Install Certificates dan Https
apt-get install -y ca-certificates apt-transport-https

# Update Certificates
wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -

# Apt List Certificates
sudo echo "deb https://packages.sury.org/php/ buster main" | tee /etc/apt/sources.list.d/php.list

# Perintah Update
apt-get -y update

# Install PHP 7.3
apt-get install -y php7.3

# Perintah Update
apt-get -y update

# Install PHP 7.3
apt-get install -y php7.3-cli php7.3-common php7.3-curl php7.3-gd php7.3-json php7.3-mbstring php7.3-mysql php7.3-xml

# Periksa PHP 7.3
php -v

# Perintah Clean
apt-get clean

# Perintah Auto Clean
apt-get autoclean

# Perintah Update
apt-get -y update

# Perintah Auto Upgrade
apt-get -y upgrade

# Perintah Dist Upgrade
apt-get -y dist-upgrade

# Cek Spesifikasi TVHeadend
curl -1sLf 'https://dl.cloudsmith.io/public/tvheadend/tvheadend/setup.deb.sh' | sudo -E bash

# Install Certificates dan Https
sudo apt-get -y install coreutils wget apt-transport-https lsb-release ca-certificates

# Apt List Stable
sudo sh -c 'echo "deb https://apt.tvheadend.org/stable $(lsb_release -sc) main" | tee -a /etc/apt/sources.list.d/tvheadend.list'

# Apt List Unstable
sudo sh -c 'echo "deb https://apt.tvheadend.org/unstable $(lsb_release -sc) main" | tee -a /etc/apt/sources.list.d/tvheadend.list'

# Perintah Clean
apt-get clean

# Perintah Auto Clean
apt-get autoclean

# Perintah Update
apt-get -y update

# Perintah Auto Upgrade
apt-get -y upgrade

# Perintah Dist Upgrade
apt-get -y dist-upgrade

# Install TVHeadend
sudo apt-get -y install tvheadend

# Pergi ke Direktori Home
cd /home/

# Download AdGuardHome
wget https://static.adguard.com/adguardhome/release/AdGuardHome_linux_arm64.tar.gz

# Extrak AdGuardHome
tar xvf AdGuardHome_linux_arm64.tar.gz

# Pergi ke Direktori AdGuardHome
cd AdGuardHome

# Install AdGuardHome
sudo ./AdGuardHome -s install

# Stop AdGuardHome
service AdGuardHome stop

# Setting AdGuardHome
mv /boot/extlinux/AdGuardHome.yaml /home/AdGuardHome/AdGuardHome.yaml

# Kembali ke Direktori utama
cd

# Hapus File AdGuardHome
rm /home/AdGuardHome_linux_arm64.tar.gz
