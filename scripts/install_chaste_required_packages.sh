log=/vagrant/temp/install_chaste.log

echo Installing packages required for Chaste | tee -a $log

echo Adding the Chaste package keys | tee -a $log
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 422C4D99
sudo sh -c 'echo "deb http://www.cs.ox.ac.uk/chaste/ubuntu trusty/" >> /etc/apt/sources.list.d/getdeb.list'

echo Updating after adding all those keys | tee -a $log
sudo apt-get -y update

echo Installing Chaste packages
sudo apt-get install -y chaste-source

echo Installing other packages
sudo apt-get install -y default-jre default-jdk

echo Tidying up by running autoremove | tee -a $log
sudo apt-get -y autoremove

echo Completed package installation | tee -a $log



