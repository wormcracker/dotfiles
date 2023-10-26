<!-- To install  -->

yay -S python-pythondialog
yay -S dialog
sudo mv /usr/lib/python3.11/EXTERNALLY-MANAGED /usr/lib/python3.11/EXTERNALLY-MANAGED.old
sudo pacman -S python-pip
pip install protonvpn-cli

<!-- To setup -->

sudo protonvpn init

<!-- To conenct and disconnect -->

sudo protonvpn connect
sudo protonvpn disconnect
