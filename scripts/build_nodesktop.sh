log=/vagrant/temp/install_chaste.log

echo Building Chaste | tee -a $log
cd $HOME
tar -jxf /usr/src/chaste-source.tar.bz2
cd chaste-source
scons core

#echo Getting build info | tee -a $log
#We aren't doing this right now, but if we did it'd be like the below
#git --git-dir ~/budden2015treeome/.git log --max-count=1 --format=format:"Last Commit: %h%nAuthor: %an%nCommit Date: %ad%n" > /vagrant/temp/build_info.txt
printf '\nEnvironment built at ' >> /vagrant/temp/build_info.txt
date >> /vagrant/temp/build_info.txt

echo Copying shell scripts to home directory | tee -a $log
sudo cp /vagrant/temp/data/*.sh /home/sbl/.
sudo chmod 777 /home/sbl/*.sh
