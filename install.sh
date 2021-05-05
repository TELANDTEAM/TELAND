#!/usr/bin/env bash
cd $(cd $(dirname $0); pwd)
install() {
rm -rf $HOME/.telegram-cli
sudo chmod +x tg
chmod +x TELAND
chmod +x Run
./Run
}
installall(){
Version=`lsb_release -rs | cut -f1 -d"."`
if [ "$Version" == "18" ];then
echo -e "Installing depedencies for ubuntu 18  ... \n"
cd /lib/x86_64-linux-gnu/ && sudo ln -s libreadline.so.7.0 libreadline.so.6
wget "http://black-source.tk/BlackTeAM/Api/compat-libevent2-5_2.0.21-1ubuntu18_amd64-1.deb" && sudo dpkg -i compat-libevent2-5_2.0.21-1ubuntu18_amd64-1.deb
rm compat-libevent2-5_2.0.21-1ubuntu18_amd64-1.deb
fi
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo luarocks install luasocket
sudo luarocks install luasec
sudo luarocks install redis-lua
sudo luarocks install Lua-cURL
sudo service redis-server start
sudo apt-get update -y
sudo apt-get install g++-4.7 -y c++-4.7
sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y curl -y htop -y
sudo apt-get install screen -y
sudo apt-get install libstdc++6 -y
sudo apt-get install lua-lgi -y
sudo apt-get install libnotify-dev -y
}
if [ "$1" = "ok" ]; then
install
fi
installall

lua install.lua

