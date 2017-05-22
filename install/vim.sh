# Install vim proper
install-package vim

# Install apt-vim
curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
source ~/.bashrc || source ~/.bash_profile

# Install colors
VIVIDCHALK_DIR="$WORKSPACE_DIR/vim-vividchalk"
mkdir -p $HOME/.vim/colors && \
git clone https://github.com/tpope/vim-vividchalk.git $VIVIDCHALK_DIR
mv $VIVIDCHALK_DIR/colors/* $HOME/.vim/colors/

cat <<EOT >> $HOME/.vimrc
:colorscheme vividchalk
EOT

# Install vim extensions
apt-vim install -y https://github.com/scrooloose/nerdtree.git
