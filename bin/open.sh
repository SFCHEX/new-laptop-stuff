shopt -s nocasematch
find . 2>/dev/null / | grep "$1" | dmenu -l 5 | xargs -I {} xdg-open "{}"


