
# install zsh
sudo apt install zsh


# change default shell：
chsh -s $(which zsh)


# install oh-my-zsh
sudo apt install curl
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

chmod -R 777 .oh-my-zsh 


# .zshrc config file:
# ---------------------------------------------------------------------------------------------------------
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/loong/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git node npm bower git-flow nvm github svn svn-fast-info)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/root/.nvm/versions/node/v6.4.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export MANPATH="/root/.nvm/versions/node/v6.4.0/share/man:/usr/local/man:/usr/local/share/man:/usr/share/man"
export NVM_BIN="/root/.nvm/versions/node/v6.4.0/bin"
export NVM_CD_FLAGS=""
export NVM_DIR="/root/.nvm"
export NVM_IOJS_ORG_MIRROR="https://iojs.org/dist"
export NVM_NODEJS_ORG_MIRROR="https://nodejs.org/dist"
export NVM_PATH="/root/.nvm/versions/node/v6.4.0/lib/node"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# -------------------------------------------------------------------
# some alias settings, just for fun
# -------------------------------------------------------------------
# alias 'today=calendar -A 0 -f ~/calendar/calendar.mark | sort'
alias 'today=calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
alias 'dus=du -sckx * | sort -nr'
alias 'adventure=emacs -batch -l dunnet'
alias 'mailsize=du -hs ~/Library/mail'
alias 'bk=cd $OLDPWD'
alias 'ttop=top -ocpu -R -F -s 2 -n30'
alias lh='ls -a | egrep "^\."'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'

#
# Tmux
#
alias tnew='tmux -f ~/.tmux.conf new-session \; split-window -h \; split-window -v \; attach'


# -------------------------------------------------------------------
# OTHER aliases
# -------------------------------------------------------------------

alias cl='clear'



# myIP address
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
    ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

# ------------------------------------------------------------------------------------------------------------------


# install plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# .zshrc add:
plugins=(zsh-autosuggestions)
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


其中注意几个重点：
1.主题的设置，我这里使用了随机主题，每次启动都是不一样的^_^
2.环境变量的设置，即export PATH等等，记得将其从之前的Shell中复制过来
3.alias的设置，非常有用的，将那些常用的命令在这里使用缩写的形式配置出来
4.tnew命令的设置，用来直接启用tmux并且出现三个窗口(一纵两横)
5.如果ZSH_THEME=""则不启用任何主题.
6.如果ZSH_THEME="random",那么每次打开一个新的终端窗口时，电脑会随机选择一个主题使用，echo $RANDOM_THEME可输出当前主题名称.
7.如果你想从你最喜欢的主题列表中选择随机主题，那么ZSH_THEME="random"且ZSH_THEME_RANDOM_CANDIDATES的值设置为你喜欢的主题名称,例如：ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )


其他：
oh-my-zsh插件：https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
oh-my-zsh插件推荐：https://www.jianshu.com/p/9189eac3e52d

参考：
https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
https://github.com/robbyrussell/oh-my-zsh/wiki
https://github.com/robbyrussell/oh-my-zsh
https://gist.github.com/spikegrobstein/5724689
https://github.com/tmux/tmux
https://coderwall.com/p/4b0d0a/how-to-copy-and-paste-with-tmux-on-ubuntu
//www.rushiagr.com/blog/2016/06/16/everything-you-need-to-know-about-tmux-copy-pasting-ubuntu/

