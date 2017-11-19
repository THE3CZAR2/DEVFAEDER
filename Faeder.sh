#!/usr/bin/env bash
token="451801727:AAGO_WYovGNkptuaY-dSFopOyLKPHRz-PmM"
function print_logo() {
	echo -e "\e[38;5;77m"   
echo -e "               "
echo -e "                  "
echo -e "         "
echo -e "      "
echo -e "             \e[38;5;88m"
echo -e ""
echo -e ""
echo -e ""
echo -e "\e[33m        @Team_faeder\e[0m"
echo -e "\e[33m   @Team_faeder\e[0m"
echo -e "\e[33m          @Team_faeder\e[0m"
echo -e "\e[33m        @Team_faeder\e[0m"
echo -e "\e[33m         @Team_faeder\e[0m"
echo -e "\e[33m  @Team_faeder\e[0m"
}

if [ ! -f ./tg ]; then
echo -e ""
echo -e "\e[33m    @Team_faeder"
echo -e "\e[33m    @Team_faeder"
echo -e "\e[33m      @Team_faeder"
echo -e "\e[33m   @Team_faeder"
echo -e "\e[33m    @Team_faeder"
echo -e "\e[33m       @Team_faeder"
    echo "\e[31;1mtg not found"
    echo "Run $0 install"
    exit 1
 fi
if [ ! $token ]; then
echo -e ""
echo -e "\e[33m      @Team_faeder"
echo -e "\e[33m    @Team_faeder"
echo -e "\e[33m     @Team_faeder"
echo -e "\e[33m       @Team_faeder"
echo -e "\e[33m      @Team_faeder"
echo -e "\e[33m      @Team_faeder\e[0m"
  echo -e "\e[31;1mToken Not found\e"
 exit 1
 fi


  print_logo
   echo -e ""
echo -e ""
echo -e "        \e[38;5;300mOperation "
echo -e "       "
echo -e " @Team_faeder"
echo -e "  @Team_faeder"
echo -e "    @Team_faeder"
echo -e "  @Team_faeder"
echo -e "   @Team_faeder"
echo -e "     @Team_faeder"
echo -e "  @Team_faeder"
echo -e "        \e[38;5;40m"

curl "https://api.telegram.org/bot"$token"/sendmessage" -F
./tg -s ./FAEDER.lua $@ --bot=$token



