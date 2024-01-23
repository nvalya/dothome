# ~/.zshrc


alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias smerge="/Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/smerge"


export ETCD_UNSUPPORTED_ARCH="arm64"
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1
export PYTHONOPTIMIZE=


if command -v /opt/homebrew/bin/brew &>/dev/null ; then
  export HOMEBREW_AUTO_UPDATE_SECS=3
  export HOMEBREW_NO_ANALYTICS=1
  export HOMEBREW_NO_AUTO_UPDATE=1

  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ ! -d "$HOME/.oh-my-zsh" ]] ; then
  echo "  !!! Not installed oh-my-zsh. See https://ohmyz.sh"
else
  export ZSH="$HOME/.oh-my-zsh"
  export DISABLE_AUTO_UPDATE=true

  ZSH_THEME="robbyrussell"
  plugins=(git)

  source $ZSH/oh-my-zsh.sh
fi
