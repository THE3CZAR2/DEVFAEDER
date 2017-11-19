#!/usr/bin/env bash
token="التوكن هنا"
function print_logo() {
	echo -e ""   
echo -e "                  "
echo -e "            "
echo -e "       "
echo -e "      "
echo -e "        "
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
}

if [ ! -f ./tg ]; then
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
    echo ""
    echo ""
    exit 1
 fi
if [ ! $token ]; then
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e ""
  echo -e ""
 exit 1
 fi


  print_logo
   echo -e ""
echo -e ""
echo -e "        "
echo -e "     "
echo -e "     "
echo -e "    "
echo -e "   "
echo -e "    "
echo -e "   "
echo -e "     "
echo -e "     "
echo -e "  "

curl "https://api.telegram.org/bot"$token"/sendmessage" -F
./tg -s ./FAEDER.lua $@ --bot=$token



