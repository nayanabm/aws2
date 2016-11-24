sudo yum install -y docker #docker installation
sudo service docker start #starts docker service : reboot the virtual machine when it gets done
sudo usermod -a -G docker ec2-user #grant root user for docker command
sudo easy_install pip
sudo pip install docker-compose #installs docker-compose
#installation of R on virtual machine
sudo rpm -Uvh http://www.nic.funet.fi/pub/mirrors/fedora.redhat.com/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm
sudo yum install -y R
#postgres setup
sudo yum install -y postgresql95 postgresql95-server postgresql95-libs postgresql95-contrib postgresql95-devel
