install-package fonts-powerline

mkdir -p $HOME/.bash/themes/agnoster-bash
git clone https://github.com/speedenator/agnoster-bash.git $HOME/.bash/themes/agnoster-bash

cat <<EOT >> $HOME/.bashrc
export THEME=\$HOME/.bash/themes/agnoster-bash/agnoster.bash
if [[ -f \$THEME ]]; then
    export DEFAULT_USER=`whoami`
    source \$THEME
fi
EOT
