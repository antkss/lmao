apt update && apt upgrade -y 
wget "https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb"
dpkg -i chrome-remote-desktop_current_amd64.deb
apt update && apt upgrade -y 
apt --fix-broken install
