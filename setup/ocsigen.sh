USER=`whoami`

# For Sass
sudo apt-get install -y rubygems
sudo gem install sass compass

# Add user to www-data group
sudo usermod -a -G www-data $USER

# For Ocsigen

# Installing add-apt-respository
sudo apt-get install -y software-properties-common

# Installing OPAM
sudo add-apt-repository -y ppa:avsm/ppa
sudo apt-get update
sudo apt-get install ocaml opam

# Setup OPAM
opam init -y
. /home/$USER/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Install apt packages needed for OPAM install
sudo apt-get install -y libgdbm-dev libpcre3-dev libssl-dev make m4 pkg-config

# Install OPAM packages
sudo opam install -y lwt deriving-ocsigen js_of_ocaml tyxml ocsigenserver eliom
