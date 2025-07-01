#!/bin/bash

WALLPAPERS_DIR="$HOME/dwm-config/dwm/wallpapers"

# Проверяем существование папки
if [ ! -d "$WALLPAPERS_DIR" ]; then
    notify-send "Ошибка" "Папка с обоями не найдена: $WALLPAPERS_DIR"
    exit 1
fi

# Получаем список изображений
WALLPAPERS=($(find "$WALLPAPERS_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \)))

# Проверяем, есть ли обои
if [ ${#WALLPAPERS[@]} -eq 0 ]; then
    notify-send "Ошибка" "В папке нет изображений: $WALLPAPERS_DIR"
    exit 1
fi

# Создаем ассоциативный массив (имя файла -> полный путь)
declare -A WALLPAPER_MAP
for fullpath in "${WALLPAPERS[@]}"; do
    filename=$(basename "$fullpath")
    WALLPAPER_MAP["$filename"]="$fullpath"
done

# Получаем только имена файлов для отображения в Rofi
FILENAMES=("${!WALLPAPER_MAP[@]}")

# Выводим меню выбора через Rofi (только имена файлов)
SELECTED_NAME=$(printf '%s\n' "${FILENAMES[@]}" | sort | rofi -dmenu -i -p "Wallpapers" -theme-str 'window {width: 60%;} listview {columns: 1; lines: 10;}')

# Если выбрали обои - устанавливаем через feh (используя полный путь)
if [ -n "$SELECTED_NAME" ]; then
    SELECTED_PATH="${WALLPAPER_MAP[$SELECTED_NAME]}"
    feh --bg-fill "$SELECTED_PATH"
 #   notify-send "Обои изменены" "$SELECTED_NAME"
fi
