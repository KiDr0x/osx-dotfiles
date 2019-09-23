# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/darm/.oh-my-zsh"

## Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source ~/.oh-my-zsh/custom/powerlevel9k/powerlevel9k.zsh-theme
## Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
##POWERLEVEL9K_USER_ICON="\uF415" # 
##POWERLEVEL9K_ROOT_ICON="#"
##POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 

# Advanced `vi_mode` color customization
#POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="spaceship"

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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
  ruby
  docker
  rust
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Dockers
# if you get couldn't connect to docker daemon just run this: usermod -aG docker ${USER}
#alias dc-nginx="docker run -t -i nginx /bin/bash" >> start new container
alias dc-nginx="docker start eb3e7c672c61 && docker exec -it eb3e7c672c61 /bin/bash"
#alias dc-kali="docker run -t -i kalilinux/kali-linux-docker /bin/bash"
alias dc-kali="docker start ffd4c4218eda && docker exec -it ffd4c4218eda /bin/bash"
alias dc-alpine="docker start 713e2c88122b && docker exec -it 713e2c88122b /bin/sh"
alias dc-stats-run="docker ps -a --filter status=running"
alias dc-stats-exit="docker ps -a --filter 'exited=0'"
alias dc-start="open /Applications/Docker.app && echo 'Docker baru saja UP. Harap tunggu sebentar...'"
alias dc-stop="killall com.docker.hyperkit"
#alias dc-stop="test -z '"$(docker ps -q 2>/dev/null)"' && osascript -e 'quit app "Docker"'"
alias dc-stop-cont="docker ps -q | xargs -L1 docker stop && echo 'Docker containers has been killed'"

## source: https://medium.com/rootpath/replacing-bash-with-zsh-on-osx-9d88d9d7eaa5
# IP addresses
alias cek-ip-publik="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w — | grep -a -o -E \"Host\: .*|GET \/.*\""

#For compilers to find mysql@5.6 you may need to set:
export LDFLAGS="-L/usr/local/opt/mysql@5.6/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.6/include"

## MySQL
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

alias test-dl="/usr/local/bin/wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"

# git
alias  gitlog-stat="git log -1 --stat"
alias gitlog-since="git log --since '2016-10-15' --format='%aE' | sort -u"
alias gitlog-graph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative --all"
alias gRv='git remote -v'

# cek besaran pemakaian disk
alias disk-usage="du -sh *"

## Restart network
alias restart_lan="sudo ifconfig en0 down && sudo ifconfig en0 up"
alias restart_wifi="sudo ifconfig en1 down && sudo ifconfig en1 up"

alias hm="cd ~"
alias ll="ls -lha"
alias clr="clear"
alias sshcfg="cat ~/.ssh/config"
alias ssh-start="sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist"
alias ssh-stop="sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist"


# Flushing DNS cache
alias dns-clean="dscacheutil -flushcache"

# Logging checker
alias cek-login="egrep -r '(login|attempt|auth|success):' /var/log"

## Brew aliasing
alias brese="brew search"
alias brein="brew install"
alias breudoc="brew update && brew doctor"

# Jenkins
#To have launchd start jenkins now and restart at login:
# run:  brew services start jenkins
#Or, if you don't want/need a background service you can just run: jenkins
alias jenkins-start="brew services start jenkins"

# Users for jenkins
# echo -n 'admin123{admin}' | shasum -a 256
# ========================================

# Create a random password 
# if in linux use this one: tr -dc [:alnum:] 
alias random-pass="echo -n @ && cat /dev/urandom | env LC_CTYPE=C tr -dc 0-9 | head -c 15 && echo"

# For metasploit
export PATH=/opt/metasploit-framework/bin:$PATH

## example: export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:/usr/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

#antigen bundle thewtex/tmux-mem-cpu-load

# JAVA
export JAVA_HOME=$(/usr/libexec/java_home)

# ANDROID SDK & NDK
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export NDK_HOME=$ANDROID_HOME/ndk-bundle/android-ndk-r15c

# Killing chrome from PID
# check the PID: pgrep -x "Google Chrome"
# and then kill -9 PID
#
# Killing Chrome
alias chrome-kill="ps auxww | grep -i 'google chrome' | grep -v grep | awk '{ print $2 }' | xargs kill -9"

# SHASUM
alias shasum-cek="shasum -a 256"

# TCP Dump cheatsheet
#
# And of course you can add all of that together in one line using the “and” keyword:
# tcpdump -i eth1 host 10.64.45.53 and port 8080
export PATH="/usr/local/sbin:$PATH"

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
echo "****************             Welcome back DARMANEX!             *****************"
echo -e "\n"
echo -e "Quote of the day for you today is:"
echo -e "\n"
echo -e "$quote" | sed 's/n()//g'| xargs -0 echo | fmt -80
echo -e "${NC}"
## Random Quote End

# Memory Check
# ref: https://apple.stackexchange.com/questions/4286/is-there-a-mac-os-x-terminal-version-of-the-free-command-in-linux-systems
alias cek-mem="top -l 1 -s 0 | awk ' /Processes/ || /PhysMem/ || /Load Avg/{print}'"
export PATH="/usr/local/opt/openssl/bin:$PATH"

# start Chromium without security enable
alias chromium-start="~/Scripts/chromium-sec-disable.sh"

## Oneliner subdomain enumeration
# curl -s "http://web.archive.org/cdx/search/cdx?url=*.hackerone.com/*&output=text&fl=original&collapse=urlkey" |sort| sed -e 's_https*://__' -e "s/\/.*//" -e 's/:.*//' -e 's/^www\.//' | sort -u

## Start tmux when terminal launched
#if [ "$TMUX" = "" ]; then tmux; fi

# Ruby ENV
eval "$(rbenv init -)"

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
export PATH="/usr/local/sbin:$PATH"

## Clear DNS cache
alias clear-dns="sudo killall -HUP mDNSResponder; sleep 2; echo macOS DNS Cache Reset | say"
export GOPATH=/Users/darm/Documents/Lesson/go

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/darm/Desktop/kubernetes/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/darm/Desktop/kubernetes/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/darm/Desktop/kubernetes/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/darm/Desktop/kubernetes/google-cloud-sdk/completion.zsh.inc'; fi

## Dotfiles sync
## ref: https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html
alias dotfiles='/usr/bin/git --git-dir=$HOME/osx-dotfiles/ --work-tree=$HOME'
