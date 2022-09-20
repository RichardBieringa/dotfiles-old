export PATH=/Users/richardbieringa/.local/bin:$PAT
export XDG_CONFIG_HOME=$HOME/.config
export EDITOR='nvim'
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
