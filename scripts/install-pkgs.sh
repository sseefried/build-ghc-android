mount -t proc proc /proc
echo "deb     http://ftp.au.debian.org/debian stable main" > /etc/apt/sources.list
echo "deb-src http://ftp.au.debian.org/debian stable main" >> /etc/apt/sources.list
apt-get update
apt-get -y install build-essential ghc git libncurses5-dev cabal-install
apt-get -y install llvm-3.0 # not 3.1; buggy on arm. 3.2 is ok too
apt-get -y install ca-certificates curl file m4 autoconf zlib1g-dev
apt-get -y install libgnutls-dev libxml2-dev libgsasl7-dev pkg-config
apt-get -y install python c2hs
wget http://snapshot.debian.org/archive/debian/20130903T155330Z/pool/main/a/automake-1.14/automake_1.14-1_all.deb
dpkg -i automake*.deb
rm *.deb
