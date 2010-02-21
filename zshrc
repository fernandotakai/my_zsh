# My exports

export GROOVY_HOME=/Users/takai/Java/groovy
export GRAILS_HOME=/Users/takai/Java/grails
export GRIFFON_HOME=/opt/local/share/java/griffon
export MAVEN_HOME=/Users/takai/Java/apache-maven-2.0.9
export SVN_EDITOR='mvim'
export PYTHONSTARTUP="$HOME/.pystartup"
export SEAM_HOME="/Users/takai/Java/jboss-seam-2.0.2.SP1/"
export ANDROID_HOME="/Users/takai/Java/android/"
export SCALA_HOME="/Users/takai/Java/scala"
export APPENGINE_HOME="/Users/takai/Java/appengine"
export PLAY_HOME="/Users/takai/Java/play/"

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export HISTSIZE=100000000000000000
export SAVEHIST=100000000000000000

export GIT_EDITOR="mvim -v"

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="takai"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
#export DISABLE_LS_COLORS="true"

autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
colors
fi
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
(( count = $count + 1 ))
done
PR_NO_COLOR="%{$terminfo[sgr0]%}" 

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin:/Users/takai/bin:/usr/local/mysql/bin:/Users/takai/Java/groovy/bin:/Users/takai/Java/grails/bin:/Users/takai/Java/apache-maven-2.0.9/bin:/Users/takai/Java/play/:/opt/local/bin:/Users/takai/Java/jboss-seam-2.0.2.SP1/:/Users/takai/Java/android//tools:/Users/takai/Java/scala/bin:/Users/takai/Java/appengine/bin

alias ls='ls -G'

function search {
    cat ~/.bash_history | grep $*
}

source $HOME/.j.sh

bindkey "^[[3~" delete-char

echo ""
fortune
echo ""
