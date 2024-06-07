pacman -S base-devel --noconfirm
curl https://storage.googleapis.com/git-repo-downloads/repo > repo
cp repo /usr/bin
chmod 777 /usr/bin/repo
repo init --depth=1 -u https://github.com/ProjectSakura/android.git -b 14 --git-lfs
repo sync --force-sync --optimized-fetch -j `nproc`
