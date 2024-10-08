# .bashrc

export EDITOR='nvim'
export VISUAL='notepadqq'

#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Source global definitions
# if [ -f /etc/bashrc ]; then
#     . /etc/bashrc
# fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# if [ -d ~/.bashrc.d ]; then
#     for rc in ~/.bashrc.d/*; do
#         if [ -f "$rc" ]; then
#             . "$rc"
#         fi
#     done
# fi

unset rc

#Completition for PATH
# if [ -d "$HOME/.bin" ] ;
# then PATH="$HOME/.bin:$PATH"
# fi

# if [ -d "$HOME/.local/bin" ] ;
# then PATH="$HOME/.local/bin:$PATH"
# fi

# Add directory to the $PATH variable for adi1090x rofi scripts
# echo "PATH=$PATH:~/.config/rofi/scripts" >> ~/.profile

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

## # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1   ;;
            *.tar.gz)    tar xzf $1   ;;
            *.bz2)       bunzip2 $1   ;;
            *.rar)       unrar x $1   ;;
            *.gz)        gunzip $1    ;;
            *.tar)       tar xf $1    ;;
            *.tbz2)      tar xjf $1   ;;
            *.tgz)       tar xzf $1   ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1;;
            *.7z)        7z x $1      ;;
            *.deb)       ar x $1      ;;
            *.tar.xz)    tar xf $1    ;;
            *.tar.zst)   tar xf $1    ;;
            *)           echo "'$1' cannot be extracted via ex()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

alias ls='eza --long --binary --group --header --created --modified -am --group-directories-first --color=auto --sort=modified'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lse='ls -lhCF --color=auto'
alias vim='nvim'
alias svim='sudo nvim'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias bcat='batcat'
alias mv='mv -iv'
alias rm='rm -iv'
alias cp='cp -iv'
alias mkdir='mkdir -vp'
alias rmdir='rmdir -vp'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown'
alias df='df -h'
alias free="free -mt"
alias wget="wget -c"
#userlist
alias userlist="cut -d: -f1 /etc/passwd"
# add new fonts
alias update-fc='sudo fc-cache -fv'
#hardware info --short
alias hw="hwinfo --short"
# pacman and yay
alias update-arch='yay && flatpak update'
alias clean-arch='yay -Sc && yay -Yc && flatpak remove --unused'
alias update-mirrors='sudo reflector --verbose --score 100 --latest 20 --fastest 5 --sort rate --save /etc/pacman.d/mirrorlist'
alias fix-key='sudo rm /var/lib/pacman/sync/* && sudo rm -rf /etc/pacman.d/gnupg/* && sudo pacman-key --init && sudo pacman-key --populate && sudo pacman -Sy --noconfirm archlinux-keyring && sudo pacman --noconfirm -Su'
alias unlock='sudo rm /var/lib/pacman/db.lck'                       # remove pacman lock
alias cleanup='sudo pacman -R $(pacman -Qtdq) && sudo pacman -Scc'  # remove orphaned packages
alias neofetch='fastfetch'

#Starship prompt
eval "$(starship init bash)"