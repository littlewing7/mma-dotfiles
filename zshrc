export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="danguita"
export DISABLE_AUTO_UPDATE="true"
export DISABLE_AUTO_TITLE="true"
export DOTFILES=${DOTFILES:-$HOME/workspace/dotfiles}
export ZSH_CUSTOM=$DOTFILES/zsh/custom

plugins=(git)

# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# Load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
  [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
    eval "$("$BASE16_SHELL/profile_helper.sh")"
