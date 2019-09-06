# Basic_programming_study
Unix Environment

TMUX install

this is about how to install tmux without a sudo permissions

download required source codes

ncurses : http://ftp.gnu.org/pub/gnu/ncurses/

libevent : https://github.com/downloads/libevent/libevent/libevent-2.0.20-stable.tar.gz

tmux : https://github.com/tmux/tmux/wiki

decompression it any where you like by tar -xzvf *.tar.gz

let's assume DIR=$HOME is where you want to install all these softwares, however feel free to change DIR to anywhere you like.

install libevent by following commands

cd libevent/

./configure --prefix=$DIR

make -j

make install

install ncurse by following commands

cd ncurses/

./configure --prefix=$DIR

make -j

make install

find where ncurse is

cd $DIR/bin/

nc_I=$(./ncurses6-config --cflags)

nc_L=$(./ncurses6-config --libs)

install tmux by following commands

cd tmux/

./configure CFLAGS="-I$DIR/include $nc_I" LDFLAGS="-L$DIR/lib $nc_L" --prefix="$DIR"

make -j

make install

add path to your bashrc

echo export PATH=\"$DIR/bin:\$PATH\" >> ~/.bashrc

echo export LD_LIBRARY_PATH=\"$DIR/lib:\$LD_LIBRARY_PATH\" >> ~/.bashrc

source ~/.bashrc

Install Emacs

git clone https://github.com/emacs-mirror/emacs

./autogen.sh

./configure --prefix=$DIR --without-textinfo --without-makeinfo --with-x-toolkit=no --with-xpm=ifavailable --with-git=ifavailable --with-tiff=ifavailable --with-gnutls=ifavailable

make -j
