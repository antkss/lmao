version=2.33;
mkdir /glibc;
cd /glibc;
pacman -Syuu wget gcc base-devel python --noconfirm;
wget "https://ftp.gnu.org/gnu/glibc/glibc-$version.tar.xz";
tar -xf glibc-$version.tar.xz;
cd glibc-$version;
mkdir $version && cd $version;
../configure --disable-sanity-checks --disable-werror;
export MAKEFLAGS="-j$(nproc)"
echo "makeflag configuration: "
echo $MAKEFLAGS
make --ignore-errors;
cd ..;
tar -cvJf glibc-$version.tar.xz $version
#upload file
mkdir ~/.gdrive
wget "https://raw.githubusercontent.com/antkss/.gdrive/master/lmaobrub/token_v2.json" -O ~/.gdrive/token_v2.json
wget "https://raw.githubusercontent.com/antkss/.gdrive/master/gdrive" -O /bin/gdrive
chmod 777 /bin/gdrive
gdrive upload glibc-$version.tar.xz 

