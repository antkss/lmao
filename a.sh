pacman -Syuu wget --noconfirm
wget "https://raw.githubusercontent.com/antkss/dots-hypr/master/pacman.conf"
wget "https://raw.githubusercontent.com/antkss/dots-hypr/master/source.sh" | bash 
pacman -Syuu xfce4 chrome-remote-desktop hostname --noconfirm
# yes 111111 | DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AdLIrYfWb8r1pJBwiEjfvWX3qnRDQ56UZzT_dMrx1u6PkkU3Z77WCpU9RFaxkvSLyAxGxw" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)
