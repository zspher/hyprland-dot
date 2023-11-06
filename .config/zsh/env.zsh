export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export _Z_DATA="$XDG_DATA_HOME/z"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export DVDCSS_CACHE="$XDG_DATA_HOME"/dvdcss
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export IPYTHONDIR="${XDG_CONFIG_HOME}/ipython"
export KDEHOME="$XDG_CONFIG_HOME"/kde
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export PLATFORMIO_CORE_DIR="$XDG_DATA_HOME"/platformio
export RANDFILE="$XDG_CONFIG_HOME/openssl/rnd"
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export SSB_HOME="$XDG_DATA_HOME"/zoom
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant
export WINEPREFIX="$XDG_DATA_HOME"/wine
export WAKATIME_HOME="$XDG_CONFIG_HOME"/wakatime
export XCURSOR_PATH=/usr/share/icons:${XDG_DATA_HOME}/icons

alias irssi='irssi --config="$XDG_CONFIG_HOME/irssi/config" --home="$XDG_DATA_HOME/irssi"'
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME/nvidia/settings"'
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'

# extra
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export MANPAGER="less"
export MANROFFOPT="-c"
export LESS='-R --use-color -Dd+r$Du+b$'
export TERMINAL="kitty"
export PATH=$PATH:/home/$USER/.local/bin

export FZF_ALT_C_COMMAND="fd --type d --hidden --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_ALT_C_COMMAND --type f"

# theme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
export GTK_THEME="Catppuccin-Mocha-Standard-Mauve-Dark"
export GREP_COLORS=${GREP_COLORS:-"mt=01;41;30"}
export LS_COLORS="$(vivid generate catppuccin-mocha)"
