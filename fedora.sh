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
