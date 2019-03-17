sudo apt-get update
sudo apt-get install python3-dev
echo 'clone form git repo'
cd vim/src
./configure --enable-python3interp --with-features=huge --prefix=$HOME/opt/vim --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu --enable-fail-if-missing
make && make install
mkdir -p $HOME/bin
cd $HOME/bin
ln -s $HOME/opt/vim/bin/vim
which vim
vim --version

