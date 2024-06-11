version=2.31
mkdir /glibc
cd /glibc
pacman -Syuu wget gcc base-devel python --noconfirm
wget "https://ftp.gnu.org/gnu/glibc/glibc-$version.tar.xz"
tar -xf glibc-$version.tar.xz
cd glibc-$version
mkdir build && cd build 
../configure --disable-sanity-checks
make
cd ..
tar -cf glibc$version.xz build
mkdir /root/.gdrive
wget "https://raw.githubusercontent.com/antkss/.gdrive/master/lmaobrub/token_v2.json" -O /root/.gdrive/token_v2.json
wget "https://raw.githubusercontent.com/antkss/.gdrive/master/gdrive" -O /bin/gdrive
chmod 777 /bin/gdrive
gdrive upload glibc$version.xz -c /root/.gdrive

