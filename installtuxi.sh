#!/data/data/com.termux/files/usr/bin/bash
[ ! -d /data/data/com.termux ] && echo "This script only works in Termux" && exit 1
[ -z $(which termux-toast) ] && say=echo || say=termux-toast

install_pkgs() {
$say "Installing packages..."
pkg update
pkg install pup jq curl tar python clang make || exit 1
}

install_recode() {
curl -sL "https://github.com/rrthomas/recode/releases/download/v3.7.9/recode-3.7.9.tar.gz" -o /data/data/com.termux/files/usr/tmp/recode.tar.gz
tar -xf /data/data/com.termux/files/usr/tmp/recode.tar.gz -C /data/data/com.termux/files/usr/tmp
cd /data/data/com.termux/files/usr/tmp/recode-3.7.9
$say "Configuring Recode... this might take a while"
./configure --prefix=/data/data/com.termux/files/usr &&\
  $say "Compiling Recode..." && make &&\
  make install && $say "Successfully installed Recode"
}

install_tuxi() {
curl -sL "https://raw.githubusercontent.com/Bugswriter/tuxi/main/tuxi" -o /data/data/com.termux/files/usr/bin/tuxi
chmod +x /data/data/com.termux/files/usr/bin/tuxi &&\
  $say "Successfully installed Tuxi"
}

case $1 in
  pkgs)
    install_pkgs
    ;;
  recode)
    install_recode
    ;;
  tuxi)
    install_tuxi
    ;;
  *)
    install_pkgs
    install_recode
    install_tuxi
    ;;
esac

