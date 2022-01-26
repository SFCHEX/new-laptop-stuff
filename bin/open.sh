query=$(:| dmenu -i -p "search:")
find . 2>/dev/null / | grep -iF "$query" | dmenu -i -l 5 | xargs -0 -I {} xdg-open "{}"
