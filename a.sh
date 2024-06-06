running="4/0AdLIrYfWb8r1pJBwiEjfvWX3qnRDQ56UZzT_dMrx1u6PkkU3Z77WCpU9RFaxkvSLyAxGxw"
pacman -Syuu wget --noconfirm;
pacman-key --init;
pacman-key --populate;
wget "https://raw.githubusercontent.com/antkss/dots-hypr/master/pacman.conf";
wget "https://raw.githubusercontent.com/antkss/dots-hypr/master/source.sh";
bash source.sh;
pacman -Syuu xfce4 --noconfirm;
pacman -S yay chrome-remote-desktop --noconfirm;
echo "lmao"
useradd -m as
yes as | passwd as
yes 111111 | DISPLAY= /opt/google/chrome-remote-desktop/start-host --code=$running --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=archlinux --username as
