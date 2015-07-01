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

# Copy some scripts to a folder on the Desktop
# We aren't doing this either
