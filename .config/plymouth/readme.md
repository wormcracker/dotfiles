mkinitcpio.conf Location:</etc/mkinitcpio>
grub Location :</etc/deafult/grub>
sudo mkinitcpio -P linux; sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo systemctl disable gm/ and enable with gm/-plymouth.service
plymouth theme location: </usr/share/plymouth/themes>
sudo plymouth-set-default-theme -R "name"
reboot 
