ME=holman

# Setup user
adduser $ME

# Setup visudo
update-alternatives --config editor

# Setup sudo privilages
visudo

# Now get github and my other config files
su $ME
cd /home/$ME
mkdir src
cd src
sudo apt-get install -y git-core
git clone https://github.com/golmansax/my-config.git
