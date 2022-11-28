country="default";
while getopts c: flag
do
    case "${flag}" in
        c) country=${OPTARG};;
    esac
done


nl="nl-free-16.protonvpn.net.udp.ovpn";
jp="jp-free-01.protonvpn.net.udp.ovpn";
us="us-free-04.protonvpn.net.udp.ovpn";

case $country in
    nl) file="$nl";;
    jp) file="$jp";;
    us) file="$us";;
    default)  file="$jp";;
    *);;
esac

sudo sh ~/.config/shellscripts/vpn/switchIvp6.sh
sudo openvpn --config ~/.config/shellscripts/vpn/$file --auth-user-pass ~/.config/shellscripts/vpn/pass.txt
sudo sh ~/.config/shellscripts/vpn/switchIvp6.sh
