pacman -Syuu wget --noconfirm
wget "https://ftp.gnu.org/gnu/glibc/glibc-2.39.tar.xz"
tar -xf glibc-2.39.tar.xz
cd glibc-2.39
mkdir build && cd build 
../configure && make
cd ..
tar -cf build.xz build
mkdir /root/.gdrive
wget "https://raw.githubusercontent.com/antkss/.gdrive/master/lmaobrub/token_v2.json" -O /root/.gdrive/token_v2.json
wget "https://raw.githubusercontent.com/antkss/.gdrive/master/gdrive" -O /bin/gdrive
chmod 777 /bin/gdrive
gdrive upload build.xz -c /root/.gdrive

