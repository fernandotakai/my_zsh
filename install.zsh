if [[ -f ~/.zshrc ]]; then
    rm -fr ~/.zshrc
fi

ln -s ./zshrc ~/.zshrc

if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "You don't have oh my zsh, installing..."
    wget http://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
fi

if [[ -f ~/.oh-my-zsh/themes/takai.zsh-theme ]]; then
    rm -fr ~/.oh-my-zsh/themes/takai.zsh-theme
fi

ln -s ./takai.zsh-theme ~/.oh-my-zsh/themes/
