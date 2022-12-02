#!/bin/bash
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
# Getting
#########################
# GETTING OS INFORMATION
source /etc/os-release
Versi_OS=$VERSION
ver=$VERSION_ID
Tipe=$NAME
URL_SUPPORT=$HOME_URL
basedong=$ID

# VPS ISP INFORMATION
#ITAM='\033[0;30m'
echo -e "$ITAM"
#REGION=$( curl -s ipinfo.io/region )
#clear
#COUNTRY=$( curl -s ipinfo.io/country )
#clear
#WAKTU=$( curl -s ipinfo.ip/timezone )
#clear
CITY=$( curl -s ipinfo.io/city )
#clear
#REGION=$( curl -s ipinfo.io/region )
#clear

MYIP=$(curl -sS ipinfo.io/ip)
#
# COLOR VALIDATION
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
clear
#
# OPENSSH
# CEK SSH OPENSSH
ssh_service=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE  SSH 
if [[ $ssh_service == "running" ]]; then 
   status_ssh=" ${GREEN}Running ${NC}( No Error )"
else
   status_ssh="${RED}  Not Running ${NC}  ( Error )"
fi
# OPENSSH

# DROPBEAR
# CEK SSH DROPBEAR
dropbear_service=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE DROPBEAR
if [[ $dropbear_service == "running" ]]; then 
   status_beruangjatuh=" ${GREEN}Running${NC} ( No Error )${NC}"
else
   status_beruangjatuh="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# SLOWDNS CLIENT
# CEK SLOWDNS CLIENT
slowdns_client_service=$(systemctl status client-sldns | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SLOWDNS SERVER
if [[ $slowdns_client_service == "running" ]]; then 
   status_slowdns_client=" ${GREEN}Running${NC} ( No Error )${NC}"
else
   status_slowdns_client="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# SLOWDNS SERVER
# CEK SLOWDNS SERVER
slowdns_server_service=$(systemctl status server-sldns | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SLOWDNS SERVER
if [[ $slowdns_server_service == "running" ]]; then 
   status_slowdns_server=" ${GREEN}Running${NC} ( No Error )${NC}"
else
   status_slowdns_server="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SLOWDNS SERVER

# SSLH
# CEK SSLH
sslh_service=$(systemctl status sslh | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSLH / SSH
if [[ $sslh_service == "running" ]]; then 
   status_sslh=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_sslh="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SSLH

# STUNNEL5
# CEK STUNNEL5
stunnel_service=$(/etc/init.d/stunnel5 status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE STUNNEL
if [[ $stunnel_service == "running" ]]; then 
   status_stunnel=" ${GREEN}Running ${NC}( No Error )"
else
   status_stunnel="${RED}  Not Running ${NC}  ( Error )}"
fi
# STUNNEL5

# SSH WEBSOCKET TLS
# CEK 
websocket_service_tls=$(systemctl status ws-tls | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSH WEBSOCKET TLS
if [[ $websocket_service_tls == "running" ]]; then 
   status_websocket_tls=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_websocket_tls="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SSH WEBSOCKET TLS

# SSH WEBSOCKET HTTP
websocket_service_http=$(systemctl status ws-nontls | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSH WEBSOCKET HTTP
if [[ $websocket_service_http == "running" ]]; then 
   status_websocket_http=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_websocket_http="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SSH WEBSOCKET HTTP

# XRAY
# CEK XRAY
xray_service=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSLH / SSH
if [[ $xray_service == "running" ]]; then 
   status_xray=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_xray="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# XRAY

#
# SUPER XRAY
# CEK SUPER XRAY
super_xray_service=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSLH / SSH
if [[ $super_xray_service == "running" ]]; then 
   status_super_xray=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_super_xray="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SUPER XRAY

# NGINX
# CEK NGINX
nginx_service=$(/etc/init.d/nginx status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE STUNNEL
if [[ $nginx_service == "running" ]]; then 
   status_nginx=" ${GREEN}Running ${NC}( No Error )"
else
   status_nginx="${RED}  Not Running ${NC}  ( Error )}"
fi
# NGINX
#
clear
# KERNEL TERBARU
kernelku=$(uname -r)
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))
# GETTING DOMAIN NAME
Domen="$(cat /etc/xray/domain)"
Slow="$(cat /root/nsdomain)"
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s ipinfo.io/ip )
ISPVPS=$( curl -s ipinfo.io/org )
clear
echo -e "$bl  ╔════════════════════════════════════════════╗$NC"
echo -e "   \E[45;1;39m               ⇱ INFO SERVER ⇲              \E[0m"
echo -e "$bl  ╚════════════════════════════════════════════╛$NC"
echo -e ""
echo -e "$mg    OS       $NC : $Tipe"
echo -e "$mg    IP      $NC  : $MYIP"
echo -e "$mg    ISP       $NC: $ISPVPS"
echo -e "$mg    Domain   $NC : $Domen"
echo -e "$mg    Total RAM $NC: ${totalram}MB"
echo -e ""
echo -e "$bl  ╔════════════════════════════════════════════╗$NC"
echo -e "   \E[45;1;39m               ⇱ MENU ACCOUNT ⇲             \E[0m"
echo -e "$bl  ╚════════════════════════════════════════════╝$NC"
echo -e ""
echo -e "$mg    01$NC. Create Account SSH & OpenVPN"
echo -e "$mg    02$NC. Create Account L2TP"
echo -e "$mg    03$NC. Create Account PPTP"
echo -e "$mg    04$NC. Create Account SSTP"
echo -e "$mg    05$NC. Create Account Wireguard"
echo -e "$mg    06$NC. Create Account Shadowsocks"
echo -e "$mg    07$NC. Create Account SSR"
echo -e ""
echo -e "$bl  ╔════════════════════════════════════════════╗$NC"
echo -e "   \E[45;1;39m               ⇱ MENU XRAY ⇲                \E[0m"
echo -e "$bl  ╚════════════════════════════════════════════╝$NC"
echo -e ""
echo -e "$mg    08$NC. Create Account XRAYS Vmess Websocket"
echo -e "$mg    09$NC. Create Account XRAYS Vless Websocket"
echo -e "$mg    10$NC. Create Account XRAYS Trojan"
echo -e "$mg    11$NC. Create Account Trojan Go"
echo -e ""
echo -e "$bl  ╔════════════════════════════════════════════╗$NC"
echo -e "   \E[45;1;39m               ⇱ MENU SETTING ⇲             \E[0m"
echo -e "$bl  ╚════════════════════════════════════════════╝$NC"
echo -e ""
echo -e "$mg    12$NC. Add Host/Domain"
echo -e "$mg    13$NC. Change Port"
echo -e "$mg    14$NC. Autobackup VPS"
echo -e "$mg    15$NC. Backup VPS"
echo -e "$mg    16$NC. Restore VPS"
echo -e "$mg    17$NC. Webmin Menu"
echo -e "$mg    18$NC. Limit Bandwith Server"
echo -e "$mg    19$NC. Check Usage of VPS Ram"
echo -e "$mg    20$NC. Reboot VPS"
echo -e "$mg    21$NC. Speedtest VPS"
echo -e "$mg    22$NC. Displaying System Information"
echo -e "$mg    23$NC. Info Script Auto Install"
echo -e ""
echo -e "$bl  ╔════════════════════════════════════════════╗$NC"
echo -e "$mg    Developer$NC : romisyafrial"
echo -e "$mg    Exp$NC : lifetime"
echo -e "$bl  ╚════════════════════════════════════════════╝$NC"
echo -e ""
read -p "  Select From Options [ 1 - 60 ] : " menu
echo -e ""
case $menu in
1)
addssh
;;
2)
trialssh
;;
3)
renewssh
;;
4)
cekssh
;;
5)
member
;;
6)
delssh
;;
7)
delexp
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
11)
addl2tp
;;
12)
dell2tp
;;
13)
renewl2tp
;;
14)
addpptp
;;
15)
delpptp
;;
16)
renewpptp
;;
17)
addsstp
;;
18)
delsstp
;;
19)
renewsstp
;;
20)
ceksstp
;;
21)
addwg
;;
22)
delwg
;;
23)
renewwg
;;
*)
clear
menu
;;
esac
