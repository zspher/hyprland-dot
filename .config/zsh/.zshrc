
while read -r file
do 
    source "$ZDOTDIR/$file.zsh"
done << EOF
    env
    plugins
    options
EOF
