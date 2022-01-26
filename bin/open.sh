find . 2>/dev/null / | grep -iF "$1" | dmenu -l 5 | xargs -0 -I {} xdg-open "{}"


