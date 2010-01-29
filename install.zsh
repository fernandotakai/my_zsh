if [[ -f ~/.zshrc ]]; then
    rm -fr ~/.zshrc
fi

ln -s "$(pwd)/zshrc" ~/.zshrc

if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "You don't have oh my zsh, installing..."
    wget http://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
fi

rm -fr ~/.oh-my-zsh/themes/takai.zsh-theme

ln -s "$(pwd)/takai.zsh-theme" ~/.oh-my-zsh/themes/
