# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export PYTHONPATH="/usr/lib/python3.11/site-packages:${PYTHONPATH}:"
export PYTHONPATH="/home/chris/.local/lib/python3.11/sitepackages:${PYTHONPATH}:"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# The following lines were added by compinstall

#zstyle ':completion:*' completer _complete _ignored
#zstyle :compinstall filename '/home/chris/.zshrc'
#theme
ZSH_THEME="powerlevel10k/powerlevel10k"

#disable gitstatus
POWERLEVEL9K_DISABLE_GITSTAUS=true

#aliases
alias doom="cd ~/.config/gzdoom"
alias ls="lsd -a"
alias blue="cd /mnt/blue"
alias thicc="cd /mnt/thicc"
alias chink="cd /mnt/chink"
alias slow="cd /mnt/slow"
alias sudo='doas'
alias inject='sudo fusee-interfacee-tk '
alias nsp='sudo ns-usbloader'
alias steamdir='cd /home/chris/.local/share/Steam/steamapps/common/'
alias primary='xrandr --output DP-2 --primary'
alias hyprconf='nano /home/$USER/.config/hypr/hyprland.conf'
alias waybarconf='nano /home/$USER/.config/waybar/config.jsonc'

autoload -Uz compinit
compinit

PROMPT_EOL_MARK=''

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

neofetch && sensors | grep -E -A 0 'Tc|jun' | cut -c1-22 | sed -e 's/^/                                        /'
source /usr/share/nvm/init-nvm.sh
