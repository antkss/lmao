# pacman -Syuu net-tools base-devel python git --noconfirm
curl https://storage.googleapis.com/git-repo-downloads/repo > repo
cp repo /usr/bin
chmod 777 /usr/bin/repo
mkdir kernel
cd kernel
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
repo init -u https://android.googlesource.com/kernel/manifest -b android-gs-raviole-5.10-android12L
repo sync
make
# repo init
# repo init --depth=1 -u https://github.com/ProjectSakura/android.git -b 14 --git-lfs
# repo sync --force-sync --optimized-fetch -j `nproc`
# sudo /usr/bin/sshd
# ifconfig

