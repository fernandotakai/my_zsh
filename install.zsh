if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "You don't have oh my zsh, installing..."
    wget http://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
    cp ./hg.zsh ~/.oh-my-zsh/lib/
fi

if [[ -f ~/.zshrc ]]; then
    rm -fr ~/.zshrc
fi

ln -s "$(pwd)/zshrc" ~/.zshrc
  
# Remove any version of the old theme
rm -fr ~/.oh-my-zsh/themes/takai.zsh-theme

# Install theme
ln -s "$(pwd)/takai.zsh-theme" ~/.oh-my-zsh/themes/

# Remove any old version of j
if [[ -f ~/.j.sh ]]; then
    rm ~/.j.sh
fi

# Install j
ln -s "$(pwd)/j.sh" ~/.j.sh

chsh -s /bin/zsh
