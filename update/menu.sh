#!/bin/bash
clear
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
# COLOR VALIDATION
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
echo -e "$bl ╒════════════════════════════════════════════╕$NC"
echo -e "  \E[41;1;39m               ⇱ MENU UTAMA ⇲               \E[0m"
echo -e "$bl ╘════════════════════════════════════════════╛$NC"
echo -e "$NC  [$bl 1$NC ]$NC  SSH & OpenVPN MENU  $NC"
echo -e "$NC  [$bl 2$NC ]$NC  L2TP MENU$NC"
echo -e "$NC  [$bl 3$NC ]$NC  PPTP MENU$NC"
echo -e "$NC  [$bl 4$NC ]$NC  SSTP MENU$NC"
echo -e "$NC  [$bl 5$NC ]$NC  WIREGUARD MENU$NC"
echo -e "$NC  [$bl 6$NC ]$NC  SHADOWSOCKS MENU$NC"
echo -e "$NC  [$bl 7$NC ]$NC  SHADOWSOCKSR MENU$NC"
echo -e "$bl ╒════════════════════════════════════════════╕$NC"
echo -e "  \E[41;1;39m               ⇱ MENU XRAY ⇲                \E[0m"
echo -e "$bl ╘════════════════════════════════════════════╛$NC"
echo -e "$NC  [$bl 8$NC ]$NC  XRAY VMESS MENU$NC"
echo -e "$NC  [$bl 9$NC ]$NC  XRAY VLESS MENU$NC"
echo -e "$NC  [$bl 10$NC ]$NC XRAY TROJAN MENU$NC"
echo -e "$NC  [$bl 11$NC ]$NC TROJAN GO MENU$NC"
echo -e "$NC  [$bl 12$NC ]$NC XRAY GRPC MENU$NC"
echo -e "$bl ╒════════════════════════════════════════════╕$NC"
echo -e "  \E[41;1;39m               ⇱ MENU SETTING ⇲             \E[0m"
echo -e "$bl ╘════════════════════════════════════════════╛$NC"
echo -e "$NC  [$bl 13$NC ]$NC SLOWDNS MENU (OFF)$NC"
echo -e "$NC  [$bl 14$NC ]$NC CEK SEMUA IP PORT$NC"
echo -e "$NC  [$bl 15$NC ]$NC CEK SEMUA SERVICE VPN$NC"
echo -e "$NC  [$bl 16$NC ]$NC UPDATE MENU (Update 2x)$NC"
echo -e "$NC  [$bl 17$NC ]$NC SL-FIX (Perbaiki Error SSLH+WS-TLS setelah reboot)$NC"
echo -e "$NC  [$bl 18$NC ]$NC Settings (Pengaturan)$NC"
echo -e "$NC  [$bl 19$NC ]$NC Exit (Keluar)$NC"
echo -e "$NC  [$bl 20$NC ]$NC copyrepo (Salin Repo Script Mantap)$NC"
echo -e "$NC  [$bl 21$NC ]$NC menuinfo (Untuk Mendapatkan Informasi)$NC"
echo -e "$NC  [$bl 22$NC ]$NC grpcmenu2 (GRPC BARU)$NC"
echo -e ""
echo -e "$NC  [ Ctrl+Z ] Untuk Stop Script$NC"
echo -e "$bl ╒════════════════════════════════════════════╕$NC"
echo -e "$NC   VERSION  : $mg XRAY WEBSOCKET"
echo -e "$NC   STATUS   : $gl AKTIF"
echo -e "$NC   CREATOR  :  ROMY STORE"
echo -e "$bl ╘════════════════════════════════════════════╛$NC"
read -p "  Select From Options [ 1 - 22 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
grpcmenu
;;
13)
clear
slowdnsmenu
;;
14)
clear
ipsaya
;;
15)
clear
running
;;
16)
clear
updatemenu
;;
17)
clear
sl-fix
;;
18)
clear
setmenu
;;
19)
clear
exit
;;
20)
clear
copyrepo
;;
21)
clear
menuinfo
;;
22)
clear
grpcmenu2
;;
*)
clear
menu
;;
esac
