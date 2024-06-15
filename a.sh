#install packages
pacman -Sy base-devel git --noconfirm
git clone https://github.com/antkss/packages
for i in $(find . -name "*pkg.tar*");do
    mv $i packages
done
cd packages
for i in $(find . -name "antk.*");do
    rm $i
done
repo-add antk.db.tar.gz *pkg.tar*
mv antk.db.tar.gz antk.db
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git add .
git commit -m "update packages"
git push origin master

