# ~.zshrc
export ZSH=~/.oh-my-zsh
# disable oh-my-zsh themes for pure prompt
ZSH_THEME=""
source $ZSH/oh-my-zsh.sh
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting", as:plugin, defer:2
zplug "zsh-users/zsh-autosuggestions", as:plugin, defer:2
zplug load
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Cursor: terminal `cursor` command (open files/folders from shell)
export PATH="/Applications/Cursor.app/Contents/Resources/app/bin:$PATH"

# melos
export PATH="$PATH":"$HOME/.pub-cache/bin"

# rbenv
export PATH="$HOME/.rbenv/shims:$PATH"

# alias
alias drbr="dart run build_runner build -d"
alias dart="fvm dart"
alias flutter="fvm flutter"
alias -g ug="--update-goldens"
alias -g cr="release/1.0.5"
