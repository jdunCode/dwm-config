current_layout=$(setxkbmap -query | grep layout | awk '{print $2}' | cut -d, -f1)

if [ "$current_layout" = "us" ]; then
    echo "EN"
elif [ "$current_layout" = "ru" ]; then
    echo "RU"
else
    echo "Unknown ($current_layout)"
fi
