mkdir /glibc
cd /glibc
pacman -Syuu wget gcc base-devel python --noconfirm
wget "https://ftp.gnu.org/gnu/glibc/glibc-2.27.tar.xz"
tar -xf glibc-2.27.tar.xz
cd glibc-2.27
mkdir build && cd build 
../configure --disable-sanity-checks
make
cd ..
tar -cf glibc2.27.xz build
mkdir /root/.gdrive
wget "https://raw.githubusercontent.com/antkss/.gdrive/master/lmaobrub/token_v2.json" -O /root/.gdrive/token_v2.json
wget "https://raw.githubusercontent.com/antkss/.gdrive/master/gdrive" -O /bin/gdrive
chmod 777 /bin/gdrive
gdrive upload glibc2.27.xz -c /root/.gdrive

