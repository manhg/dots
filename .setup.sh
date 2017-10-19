cd /tmp

wget https://github.com/zyedidia/micro/releases/download/v1.3.3/micro-1.3.3-linux64.tar.gz
tar xzf micro-1.3.3-linux64.tar.gz
mv micro-1.3.3/micro /usr/bin
rm micro*

wget https://github.com/moncho/dry/releases/download/v0.9-beta.1/dry-linux-amd64
chmod 750 dry-linux-amd64
mv dry-linux-amd64 /usr/sbin

wget -O ~/.bash_profile https://raw.githubusercontent.com/manhg/dots/master/.bash_profile
wget -O ~/.bash_linux https://github.com/manhg/dots/blob/master/.bash_linux
wget -O ~/.vimrc https://raw.githubusercontent.com/manhg/dots/master/.vimrc
wget -O ~/.pdbrc https://raw.githubusercontent.com/manhg/dots/master/.pdbrc
wget -O ~/.psqlrc https://raw.githubusercontent.com/manhg/dots/master/.psqlrc