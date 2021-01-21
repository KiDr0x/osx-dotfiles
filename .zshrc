# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

export LC_ALL=en_US.UTF-8

export PYTHON_CONFIGURE_OPT="--enable-framework"

# Rust cargo environment
export PATH="$HOME/.cargo/bin:$PATH"

# libffi is keg-only, which means it was not symlinked into /usr/local,
#because some formulae require a newer version of libffi.
# For compilers to find libffi you may need to set:
export LDFLAGS="-L/usr/local/opt/libffi/lib"
# For pkg-config to find libffi you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# QT path and For pkg-config
# qt is keg-only, which means it was not symlinked into /usr/local,
# because Qt 5 has CMake issues when linked.
export PATH="/usr/local/opt/qt/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"

# Golang path
export GOROOT=/usr/local/go
export GOPATH=$HOME/MyProject/Golang
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

export DNS_DIAG="$HOME/Tools/Network/DNS/dnsdiag"
export PATH="$DNS_DIAG:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/darman/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="simple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  bundler
  dotenv
  osx
  rake
  rbenv
  brew
  ruby
  docker
  oc
  zsh-completions
  history-substring-search
  history-search-multi-word
)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Cek IP addresses
alias ip-publik="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip-lokal="ipconfig getifaddr en0"

# Download testing
alias test-dl="/usr/local/bin/wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"

# git
alias gstats="git log -1 --stat"
alias gsince="git log --since '2016-10-15' --format='%aE' | sort -u"
alias ggraph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative --all"
alias grv='git remote -v'
alias grst='git remote set-url'
alias glog='git log --oneline --decorate --graph -10 --all --branches'
alias gstatus='git status'
alias gpush='git push'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gfa='git fetch --all'
alias gra='git remote add'
alias gpull='git pull'
alias gcn='git clean -n'
alias gclean='git clean -f -i'
alias gwc="git whatchanged"
alias gst="git status"

# Apple software updates
alias update-appstore='sudo softwareupdate -i -a'

# docker
# if you get couldn't connect to docker daemon just run this: usermod -aG docker ${USER}
#alias dc-nginx="docker run -t -i nginx /bin/bash" >> start new container
alias dc-exited="docker ps -f 'status=exited'"
alias dc-stats-run="docker ps -a -f 'status=running'"
alias dc-engine-start="open /Applications/Docker.app && echo 'Docker baru saja UP. Harap tunggu sebentar gan...'"
alias dc-engine-stop="killall com.docker.hyperkit && Echo 'Docker telah dimatikan!'"
alias dc-cont-stop="docker ps -q | xargs -L1 docker stop && echo 'Docker containers has been killed'"
alias dpa="docker ps -a"
alias dim="docker images"
alias dlf="docker logs -f"
alias deti="docker exec -ti"
alias dcf="docker-compose -f"
alias dc-rebuild="docker-compose  build; docker-compose up --no-deps -d"
alias dbt="docker build -t"
alias drmi="docker rmi"
alias drm="docker rm"
#alias drm-dangling="docker rmi -f `$(docker images -f "dangling=true" -q)``"

# Cek top proses
alias cek-top="top -l 1 -s 0 | awk ' /Processes/ || /PhysMem/ || /Load Avg/{print}'"

# Cek disk usage
alias disk-usage="du -sh *"
alias disk-usage-total="du -ch | grep total"
alias disk-usage-most="du -hsx * | sort -rh | head -10"

## Restart network
alias wifi-restart="sudo ifconfig en0 down && sudo ifconfig en0 up"
alias lan-restart="sudo ifconfig en1 down && sudo ifconfig en1 up"

alias hm="cd ~"
alias l="ls -lha"
alias lfg="ls -aFG"
alias cls="clear"
alias sshcfg="less ~/.ssh/config"
alias ssh-start="sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist"
alias ssh-stop="sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist"
alias con="ssh"

# substring search
bindkey "^P" history-substring-search-up
bindkey "^N" history-substring-search-down

# Flushing DNS cache
alias dns-clean="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

# Logging checker
alias cek-login="egrep -r '(login|attempt|auth|success):' /var/log"

## Brew aliasing
alias brese="brew search"
alias brein="brew install"
alias breup="brew update && brew doctor"
alias brew-fresh="brew update && brew upgrade && brew cleanup && brew doctor"
alias breout="brew outdated"
alias bregrade="brew upgrade"
alias breclean="brew cleanup"
alias breclean-cek="brew cleanup -n"
alias bredoclist="brew docktor --list-checks"
alias breci="brew cask install"
alias brecu="brew cask upgrade"
alias brecs="brew search --casks"
alias bredep="brew deps"
alias bredepi="brew deps --installed"

alias pass-gen="openssl rand -base64 12 | colrm 32"
#alias pass-gen="echo -n @ && cat /dev/urandom | env LC_ALL=C tr -dc 'A-Za-z0-9_!@#$%^&*()\-+=' | head -c 15 && echo"

alias killsound='killall ControlStrip'
#alias killaudio='sudo killall coreaudiod'
#alias killaudio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"
alias killaudio="ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'"

alias hg='history | grep'

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# Killing chrome from PID
# check the PID: pgrep -x "Google Chrome"
# and then kill -9 PID
#
# Killing Chrome
alias kill-chrome="ps auxww | grep -i 'google chrome' | grep -v grep | awk '{ print $2 }' | xargs kill -9"

# Firefox stuff
alias kill-ff="ps auxww | grep -i 'Firefox Developer Edition' | grep -v grep | awk '{ print $2 }' | xargs kill -9"
#alias kill-ff="sudo kill -9 `ps ax|grep 'firefox-developer-edition' | awk '{print $1}'`"

# Get top proses eating cpu
alias ps-cpu-usage="ps aux | sort -nr -k 3 | head -10"

# Get top proses eating memory
alias ps-mem-usage="ps aux | sort -nr -k 4 | head -10"

# Ping count 5
alias ping="ping -c 5"


# SHASUM
alias shasum-cek="shasum -a 256"

# Jenkins
#To have launchd start jenkins now and restart at login:
# run:  brew services start jenkins
#Or, if you don't want/need a background service you can just run: jenkins
alias jenkins-start="brew services start jenkins"

# Users for jenkins
# echo -n 'admin123{admin}' | shasum -a 256
# ========================================


# TCP Dump cheatsheet
#
# And of course you can add all of that together in one line using the “and” keyword:
# tcpdump -i eth1 host 10.64.45.53 and port 8080

## Random Quotes start
# font color : green
color='\e[0;32m'

# font color : white
NC='\e[0m'

getquote(){
      num_online_quotes=9999
      rand_online=$[ ( $RANDOM % $num_online_quotes ) + 1 ]
      quote=$(wget -q -O - "http://www.quotationspage.com/quote/$rand_online.html" |
      grep -e "<dt>" -e "</dd>" | awk -F'[<>]' '{
          if($2 ~ /dt/)
          { print $3 }
          else if($4 ~ /b/)
          { print "-- " $7 "  n(" $19 ")"}
       }')
}
i=1
color='\e[0;32m'
NC='\e[0m'
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
    while [ $i -lt 5 ]
    do
        getquote
        echo "$quote" | grep ERROR > /dev/null
        if [ $? -eq 0 ];then
            getquote
            i = expr $i + 1
        else
            break
        fi
    done
else
    a=date|cut -c 19
    var=(" Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better.
    \n \t\t\t\t\t\t\t-Samuel Beckett " "Never give up, for that is just the place and time that the tide will turn.
    \n \t\t\t\t\t\t\t-Harriet Beecher Stowe " "Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.
    \n \t\t\t\t\t\t\t-Thomas A. Edison" "Life isn't about getting and having, it's about giving and being.
    \n \t\t\t\t\t\t\t-Kevin Kruse" "Strive not to be a success, but rather to be of value.
    \n \t\t\t\t\t\t\t-Albert Einstein" "You miss 100% of the shots you don't take.
    \n \t\t\t\t\t\t\t-Wayne Gretzky" "People who are unable to motivate themselves must be content with mediocrity, no matter how impressive their other talents.
    \n \t\t\t\t\t\t\t-Andrew Carnegie" "Design is not just what it looks like and feels like. Design is how it works.
    \n \t\t\t\t\t\t\t-Steve Jobs" "Only those who dare to fail greatly can ever achieve greatly.
    \n \t\t\t\t\t\t\t-Robert F. Kennedy" "All our dreams can come true, if we have the courage to pursue them.
    \n \t\t\t\t\t\t\t-Walt Disney " "Success consists of going from failure to failure without loss of enthusiasm.
    \n \t\t\t\t\t\t\t-Winston Churchill" )
    quote="${var[$a]}"
    # Welcome message ! Edit it with your name
    #end of code
fi
echo -e "${color}"
echo "****************             Welcome back BORRR!!             *****************"
echo "                                                                               "
echo "                                  ¯\_(ツ)_/¯                                   "
echo -e "\n"
echo -e "Quote of the day for you today is:"
echo -e "\n"
echo -e "$quote" | sed 's/n()//g'| xargs -0 echo | fmt -80
echo -e "${NC}"
## Random Quote End

# Memory Check
# ref: https://apple.stackexchange.com/questions/4286/is-there-a-mac-os-x-terminal-version-of-the-free-command-in-linux-systems
alias cek-mem="top -l 1 -s 0 | awk ' /Processes/ || /PhysMem/ || /Load Avg/{print}'"

## Oneliner subdomain enumeration
# curl -s "http://web.archive.org/cdx/search/cdx?url=*.hackerone.com/*&output=text&fl=original&collapse=urlkey" |sort| sed -e 's_https*://__' -e "s/\/.*//" -e 's/:.*//' -e 's/^www\.//' | sort -u

## Homebrew update & upgrade
alias brew-fresh="brew update && brew upgrade && brew cleanup && brew doctor"

## Create new profile for Firefox
alias ff-profile="/Applications/Firefox.app/Contents/MacOS/firefox-bin --profilemanager"

## Start MySQL
alias mysql-run="sudo mysql.server start"

## Python 3 path for module
#export PYTHONPATH=/usr/local/lib/python3.7/site-packages:$PYTHONPATH

## Python 2 path for module
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

### Dotfiles sync
## ref: https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dst='dotfiles status'
alias da='dotfiles add'
alias dcm='dotfiles commit -m'
alias dp='dotfiles push'

export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="/usr/local/opt/python/Frameworks/Python.framework/Versions/3.8/Python:$PATH"

# How fast is the connexion to a URL, some stats from curl
#alias cek-speed-stats=''URL="http://www.google.com";curl -L --w "$URL\nDNS %{time_namelookup}s conn %{time_connect}s time %{time_total}s\nSpeed %{speed_download}bps Size %{size_download}bytes\n" -o/dev/null -s $URL'

# QRencode function
qr() { qrencode "$" -t ANSIUTF8 -o -; }

alias start-chromium-without-security="~/Scripts/chromium-sec-disable.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.pyenv/shims:$PATH"

# Switch to namespace in kubernetes
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace '
alias kctl='kubectl'


# cek port listen
port_listen() {
  sudo lsof -n -i4TCP:$1 | grep LISTEN
}

alias pidport="port_listen"

# check web headers using wget
cek_headers() {
  clear && wget -q -S -O - $1 > /dev/null
}

alias cekheaders="cek_headers"

# oc okd stuff
alias ogp='oc get pod'
alias ogsvc='oc get svc'
alias ogsecret='oc get secret'
alias ogdc='oc get dc'
alias ogbc='oc get bc'
alias ogpvc='oc get pvc'
alias ogpv='oc get pv'
alias olf='oc logs -f'
alias op='oc project'
alias odp='oc delete pod'
alias odas='oc delete all --selector'

# zsh stuff
alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias cz="less ~/.zshrc"

# cat with beautiful colors
# sudo easy_install Pygments
alias c="pygmentize -O style=monokai -f console256 -g"

# Vim stuff
alias v="vim"

# Start tmux when terminal launched
if [ "$TMUX" = ""  ]; then tmux new -s activity; fi

# load function
fpath=( ~/.config/zshfn "${fpath[@]}"  )
autoload -Uz $fpath[1]/*(.:t)

alias gen_cert_server="openssl req -new -x509 -keyout server.pem -out server.pem -days 365 -nodes"
