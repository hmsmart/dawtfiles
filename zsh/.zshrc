# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh//.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#set history file
HISTFILE=~/.cache/.zshcache
#load completions
fpath=(${ZDOTDIR}/plugins/zsh-completions/src $fpath)
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

#load ZSH auto-sugg
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source ${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

#load ZSH Powerlevel 10k
source ${ZDOTDIR}/themes/gentoo.zsh-theme
