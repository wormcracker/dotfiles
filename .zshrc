
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="powerlevel10k/powerlevel10k"


# Source configs
for f in ~/.config/shellscripts/aliases; do source "$f"; done

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
