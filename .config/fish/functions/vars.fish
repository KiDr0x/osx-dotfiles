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
#alias l="ls -lha"
#alias lfg="ls -aFG"
alias cls="clear"
alias sshcfg="less ~/.ssh/config"
alias ssh-start="sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist"
alias ssh-stop="sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist"
alias con="ssh"

# LSD
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lha='ls -lha'
alias lt='ls --tree'

# Flushing DNS cache
alias dns-clean="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

# Logging checker
alias cek-login="egrep -r '(login|attempt|auth|success):' /var/log"

## Brew stuff
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

# generate random password
#alias pass-gen="cat /dev/urandom | env LC_ALL=C tr -dc 'A-Za-z0-9_!@#$%^&*()[\-+];.:{|}~<=>?' | head -c 24 && echo"

# audio stuff
alias killsound='killall ControlStrip'
#alias killaudio='sudo killall coreaudiod'
#alias killaudio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' | awk '{print $1}'`"
alias killaudio="ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'"

alias hg="history | grep"
# https://jorge.fbarr.net/2011/03/24/making-your-bash-history-more-efficient/
#HISTTIMEFORMAT="%h %d %H:%M:%S> "
# ignoredups and ignorespace
#HISTCONTROL=ignoreboth

# Killing chrome from PID
# check the PID: pgrep -x "Google Chrome"
# and then kill -9 PID
#
# kill Chrome
alias kill-chrome="ps auxww | grep -i 'google chrome' | grep -v grep | awk '{ print $2 }' | xargs kill -9"

# kill firefox
alias kill-ff="ps auxww | grep -i 'Firefox Developer Edition' | grep -v grep | awk '{ print $2 }' | xargs kill -9"

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

# How fast is the connexion to a URL, some stats from curl
#alias cek-speed-stats=''URL="http://www.google.com";curl -L --w "$URL\nDNS %{time_namelookup}s conn %{time_connect}s time %{time_total}s\nSpeed %{speed_download}bps Size %{size_download}bytes\n" -o/dev/null -s $URL'

alias start-chromium-without-security="~/Scripts/chromium-sec-disable.sh"

# Switch to namespace in kubernetes
#alias kcd='kubectl config set-context $(kubectl config current-context) --namespace '
#alias kctl='kubectl'

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

# Vim stuff
alias v="nvim"
alias vim="nvim"

alias gen_cert_server="openssl req -new -x509 -keyout server.pem -out server.pem -days 365 -nodes"

# Hide/show all desktop icons (useful when presenting)
alias hide_desktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias show_desktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Hide/show hidden files in Finder
alias hide_files="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias show_files="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
