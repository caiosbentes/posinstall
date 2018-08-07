dnf upgrade -y
dnf install gnome-tweaks -y
systemctl stop firewalld.service
systemctl disable firewalld.service
sed -i '/SELINUX=enforcing/ s/enforcing/disabled/g' /etc/selinux/config
dnf install 'https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm' -y
dnf install kernel-devel kernel-headers dkms
wget https://www.virtualbox.org/download/oracle_vbox.asc
rpm --import oracle_vbox.asc
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo -O /etc/yum.repos.d/virtualbox.repo
dnf install VirtualBox-5.2 -y
service vboxdrv start
usermod -a -G vboxusers caiobentes
dnf install -y https://linux.dropbox.com/packages/fedora/nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm
dnf install nmap
#Instalação do Telegram Desktop
wget "https://telegram.org/dl/desktop/linux" -O telegram.tar.xz
tar Jxf telegram.tar.xz -C /opt/
mv /opt/Telegram*/ /opt/telegram
ln -sf /opt/telegram/Telegram /usr/bin/telegram
echo -e '[Desktop Entry]\n Version=1.0\n Exec=/opt/telegram/Telegram\n Icon=Telegram\n Type=Application\n Categories=Application;Network;' | sudo tee /usr/share/applications/telegram.desktop
chmod +x /usr/share/applications/telegram.desktop
cp /usr/share/applications/telegram.desktop  /home/caiobentes/Área\ de\ trabalho/
dnf install snapd
ln -s /var/lib/snapd/snap /snap
#Instala emulador de terminal
dnf install terminator
#Instala cliente bit-torrent
dnf install transmission
