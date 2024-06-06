running="4/0AdLIrYfyEvR6D1QJPizBfs31YX4hz2iagwMBe_dEkqAJpcgY3kBjjr_6nRfM642c8zV8Ww"
pacman -Syuu wget --noconfirm;
pacman-key --init;
pacman-key --populate;
wget "https://raw.githubusercontent.com/antkss/dots-hypr/master/pacman.conf";
wget "https://raw.githubusercontent.com/antkss/dots-hypr/master/source.sh";
bash source.sh;
pacman -Syuu xfce4 --noconfirm;
pacman -S yay chrome-remote-desktop sudo --noconfirm;
echo "lmao"
useradd -m as
yes as | passwd as
yes 111111 | DISPLAY= /opt/google/chrome-remote-desktop/start-host --user-name=as --code=$running --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=archlinux 
