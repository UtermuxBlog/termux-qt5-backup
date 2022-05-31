#!/data/data/com.termux/files/usr/bin/bash
pkg up -y
pkg upgr -y
pkg i coreutils gnupg wget -y
mkdir -p $PREFIX/etc/apt/sources.list.d
rm $PREFIX/etc/apt/sources.list.d/qt5.list > /dev/null 2>&1
rm $PREFIX/etc/apt/trusted.gpg.d/UtermuxBlog.gpg > /dev/null 2>&1
echo deb https://utermuxblog.github.io/termux-qt5-backup termux qt5 > $PREFIX/etc/apt/sources.list.d/qt5.list
wget -qO $PREFIX/etc/apt/trusted.gpg.d/UtermuxBlog.gpg https://utermuxblog.github.io/termux-qt5-backup/UtermuxBlog.gpg