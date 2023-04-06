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
zinit lucid for as"command" from"gh-r" \
    atinit'export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"' atload'eval "$(starship init zsh)"' \
    starship/starship

##########################
# OMZ Libs and Plugins   #
##########################
# IMPORTANT:
# Ohmyzsh plugins and libs are loaded first as some these sets some defaults which are required later on.
# Otherwise something will look messed up
# ie. some settings help zsh-autosuggestions to clear after tab completion
setopt promptsubst
# Explanation:
# 1. Loading tmux first, to prevent jumps when tmux is loaded after .zshrc
# 2. History plugin is loaded early (as it has some defaults) to prevent empty history stack for other plugins

zinit lucid for \
  atinit"HIST_STAMPS=dd.mm.yyyy" \
        OMZL::history.zsh

zinit wait lucid for \
    OMZL::clipboard.zsh \
    OMZL::compfix.zsh \
    OMZL::completion.zsh \
    OMZL::correction.zsh \
    wazum/zsh-directory-dot-expansion \
    OMZL::directories.zsh \
    OMZL::git.zsh \
    OMZL::grep.zsh \
    OMZL::key-bindings.zsh \
    OMZL::spectrum.zsh \
    OMZP::git \
    OMZP::fzf \
        atload"alias dcupb='docker-compose up --build'" \
    OMZP::docker-compose \
        as"completion" \
    OMZP::docker/_docker \
    djui/alias-tips \
    hlissner/zsh-autopair \
    chriskempson/base16-shell \
        atinit"
            zstyle ':prezto:*:*' color 'yes'
            zstyle ':prezto:module:utility' safe-ops 'no'" \
    PZTM::utility

#####################
# PLUGINS           #
#####################
zinit wait lucid for \
        light-mode atinit"ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20" atload"_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions \
        light-mode atinit"
            typeset -gA FAST_HIGHLIGHT; FAST_HIGHLIGHT[git-cmsg-len]=100;
            zpcompinit; zpcdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
        atpull'zinit creinstall -q .' \
        atinit"
            zstyle ':completion:*' completer _expand _complete _ignored _approximate
            zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
            zstyle ':completion:*' menu select=2
            zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
            zstyle ':completion:*:*:*:*:processes' command 'ps -u $USER -o pid,user,comm,cmd -w -w'
            zstyle ':completion:*:descriptions' format '-- %d --'
            zstyle ':completion:*:processes' command 'ps -au$USER'
            zstyle ':completion:complete:*:options' sort false
            zstyle ':fzf-tab:complete:_zlua:*' query-string input
            zstyle ':fzf-tab:complete:cd:*' extra-opts --preview=$extract'exa -1 --color=always ${~ctxt[hpre]}$in'
            zstyle ':fzf-tab:complete:kill:argument-rest' extra-opts --preview=$extract'ps --pid=$in[(w)1] -o cmd --no-headers -w -w' --preview-window=down:3:wrap" \
        blockf light-mode \
    zsh-users/zsh-completions \
        atclone"local P=${${(M)OSTYPE:#*darwin*}:+g}
            \${P}sed -i \
            '/DIR/c\DIR 38;5;63;1' LS_COLORS; \
            \${P}dircolors -b LS_COLORS > c.zsh" \
        atpull'%atclone' pick"c.zsh" nocompile'!' \
        atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”' \
    trapd00r/LS_COLORS

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust