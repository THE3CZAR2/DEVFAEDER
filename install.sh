#!/usr/bin/env bash

cd $HOME/DEVFAEDER
token="TOKEN"
install() {
 
sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev  -y

sudo apt-get install lua-lgi -y

sudo apt-get install software-properties-common -y

sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y

sudo apt-get install libstdc++6 -y

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get dist-upgrade -y

wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
 tar zxpf luarocks-2.2.2.tar.gz
 rm luarocks-2.2.2.tar.gz
 cd luarocks-2.2.2
 ./configure; sudo make bootstrap
 sudo luarocks install luasocket
 sudo luarocks install luasec
 sudo luarocks install redis-lua
 sudo luarocks install lua-term
 sudo luarocks install serpent
 sudo luarocks install dkjson
 sudo luarocks install lanes
 sudo luarocks install Lua-cURL
 sudo service redis-server start
 sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
 sudo apt-get install g++-4.7 -y c++-4.7
 sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
 sudo apt-get install screen -y
 sudo apt-get install tmux -y
 sudo apt-get install libstdc++6 -y
 sudo apt-get install lua-lgi -y
 sudo apt-get install libnotify-dev -y
 sudo apt-get install python-setuptools python-dev build-essential -y
 sudo easy_install pip
 sudo pip install redis
 cd ..
 cd DEVFAEDER 
 rm -rf "luarocks-2.2.2"
 wget "https://valtman.name/files/telegram-cli-1222"
 mv telegram-cli-1222 tg
 chmod +x tg
 chmod +x Faeder.sh
 ./Faeder.sh

}

if [ "$1" = "install" ]; then
  install
  else

if [ ! -f ./tg ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
 fi
if [ ! $token ]; then
  echo -e "\e[1;36mToken Not found\e[0m"
 exit 1
 fi
   curl "https://core.telegram.org/bot"$token"/sendmessage" -F
   ./tg -s ./FAEDER.lua $@ --bot=$token

fi

# Now All Argument Support after ./STORM.sh !
# Arguments :
#   #   #   #   #   #   #   #   #   #
#  --phone/-u                           specify username (would not be asked during authorization)
#  --verbosity/-v                       increase verbosity (0-ERROR 1-WARNIN 2-NOTICE 3+-DEBUG-levels)
#  --enable-msg-id/-N                   message num mode
#  --config/-c                          config file name
#  --profile/-p                         use specified profile
#  --wait-dialog-list/-W                send dialog_list query and wait for answer before reading input
#  --disable-colors/-C                  disable color output
#  --disable-readline/-R                disable readline
#  --alert/-A                           enable bell notifications
#  --daemonize/-d                       daemon mode
#  --logname/-L <log-name>              log file name
#  --username/-U <user-name>            change uid after start
#  --groupname/-G <group-name>          change gid after start
#  --disable-output/-D                  disable output
#  --tcp-port/-P <port>                 port to listen for input commands
#  --udp-socket/-S <socket-name>        unix socket to create
#  --exec/-e <commands>                 make commands end exit
#  --disable-names/-I                   use user and chat IDs in updates instead of names
#  --help/-h                            prints this help
#  --accept-any-tcp                     accepts tcp connections from any src (only loopback by default)
#  --disable-link-preview               disables server-side previews to links
#  --bot/-b                             bot mode
#  --json                               prints answers and values in json format
#  --permanent-msg-ids                  use permanent msg ids
#  --permanent-peer-ids                 use permanent peer ids
#   #   #   #   #   #   #   #   #   #
#Example To launch with second profile :
# ./Faeder.sh -p second-profile

#     OR

# ./Faeder.sh --profile second-profile
