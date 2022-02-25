# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/asdf-vm/asdf.sh

alias ls="exa --icons"
alias cat="bat --style=auto"
alias vi="lvim"
alias vim="lvim"

# Firebase - Push notification messaging
export FIREBASE_FCM_KEY=AIzaSyCfjAZ1p70HUhbCq006bnAwxgEO6nP4Bag
export FIREBASE_REALTIME=https://dk-push-notification.firebaseio.com


source /home/fmilan/.antigen.zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply
