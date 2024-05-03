# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

alias sudo='sudo '
alias ll="lsd -l"
alias lla="lsd -la"
alias vi="nvim"
alias cat="bat"
alias ls="lsd"
alias dotfiles="/usr/bin/git --git-dir=/home/angel/dotfiles/ --work-tree=/home/angel"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export GPG_TTY=\$(tty)

