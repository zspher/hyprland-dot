
while read -r file
do 
    source "$ZDOTDIR/$file.zsh"
done << EOF
    env
    plugins
    options
EOF

export PATH=$PATH:/home/$USER/.local/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/.local/share/npm/bin:$HOME/.local/share/cargo/bin
