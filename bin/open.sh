find . 2>/dev/null / | grep -iF "$*" | dmenu -i -l 5 | xargs -0 -I {} xdg-open "{}"
