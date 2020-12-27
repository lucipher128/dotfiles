# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
zstyle ':completion:*' '' matcher-list 'm:{a-z}={A-Z}'


alias la='ls -la'
alias ll='ls -l'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
