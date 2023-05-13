# Install Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [[ ! -f ${ZINIT_HOME}/zinit.zsh ]]; then
    print -P "%F{14}▓▒░ Installing Flexible and fast ZSH plugin manager %F{13}(zinit)%f"
    command mkdir -p "${ZINIT_HOME}" && command chmod g-rwX "${ZINIT_HOME}"
    command git clone https://github.com/zdharma-continuum/zinit.git "${ZINIT_HOME}" && \
        print -P "%F{10}▓▒░ Installation successful.%f%b" || \
        print -P "%F{9}▓▒░ The clone has failed.%f%b"
fi

# Enable Zinit completions
source "${ZINIT_HOME}/zinit.zsh" \
  && autoload -Uz _zinit \
  && (( ${+_comps} )) \
  && _comps[zinit]=_zinit

# Prompt
zinit lucid for "joke/zim-starship"

zinit wait'0a' lucid for \
    "zimfw/environment" \
        atinit"zstyle ':zim:git' aliases-prefix 'g'"\
        atload"            
            unalias gm
            alias gme='git merge'"\
    "zimfw/git" \
        atinit"zstyle ':zim:input' double-dot-expand yes" \
    "zimfw/input" \
    "OMZL::key-bindings.zsh" \
    "djui/alias-tips" \
    "OMZP::fzf" \
    "hlissner/zsh-autopair" \
    "zimfw/termtitle" \
        atinit"
            zstyle ':prezto:*:*' color 'yes'
            zstyle ':prezto:module:utility' safe-ops 'no'" \
    "PZTM::utility" \

zinit wait'1' lucid for \
        atinit"zicompinit; zicdreplay" \
    "zdharma-continuum/fast-syntax-highlighting" \
        atload"_zsh_autosuggest_start" \
    "zsh-users/zsh-autosuggestions" \
        blockf atpull'zinit creinstall -q .' \
        atinit"
            zstyle ':completion:*' completer _expand _complete _ignored _approximate
            zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
            zstyle ':completion:*' menu select=2
            zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
            zstyle ':completion:*:*:*:*:processes' command 'ps -u $USER -o pid,user,comm,cmd -w -w'
            zstyle ':completion:*:descriptions' format '[%d]'
            zstyle ':completion:*:processes' command 'ps -au$USER'
            zstyle ':completion:complete:*:options' sort false" \
    "zsh-users/zsh-completions" \
        atinit"
            zstyle ':fzf-tab:*' switch-group ',' '.'
            zstyle ':fzf-tab:complete:_zlua:*' query-string input
            zstyle ':fzf-tab:complete:kill:argument-rest' extra-opts --preview=$extract'ps --pid=$in[(w)1] -o cmd --no-headers -w -w' --preview-window=down:3:wrap" \
        atload'zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"' \
    "Aloxaf/fzf-tab"