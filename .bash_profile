# Prompt
source ~/.bash_prompt

# bash completion.
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source "$(brew --prefix)/etc/bash_completion"
fi

# homebrew completion
if  which brew > /dev/null; then
  source "$(brew --prefix)/etc/bash_completion.d/brew"
fi;

# Aliases

## Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"

## List all files colorized in long format
alias l="ls -lF -G"

## List all files colorized in long format, including dot files
alias la="ls -laF -G"

## Disk size
alias ds="df -P -kHl"
alias fs="du -sch"

## IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

## Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias cleannpm="find . -name node_modules -type d -exec rm -rf {} +"

## Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

## Chrome w/o web security
alias bchrome="open -a Google\ Chrome --args --disable-web-security"
