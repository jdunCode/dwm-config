#!/bin/bash

# Пути
PATH_DWM="$(pwd)"
PATH_BIN="/usr/local/bin"
PATH_SESSIONS="/usr/local/share/xsessions/"  
FILE_SCRIPT="startdwm.sh"
FILE_DESKTOP="dwm.desktop"
PATH_CONFIG="$HOME/.config"

# ---- Копирование startdwm.sh ----
if [ ! -f "$PATH_DWM/temp/$FILE_SCRIPT" ]; then
    echo "Ошибка: Файл $PATH_DWM/temp/$FILE_SCRIPT не найден!" >&2
    exit 1
fi

if [ ! -w "$PATH_BIN" ]; then
    echo "Требуются права root для копирования в $PATH_BIN"
    sudo cp -v "$PATH_DWM/temp/$FILE_SCRIPT" "$PATH_BIN/"
else
    cp -v "$PATH_DWM/temp/$FILE_SCRIPT" "$PATH_BIN/"
fi

if [ $? -ne 0 ]; then
    echo "Ошибка копирования $FILE_SCRIPT!" >&2
    exit 1
fi

# ---- Копирование dwm.desktop ----
if [ ! -f "$PATH_DWM/temp/$FILE_DESKTOP" ]; then
    echo "Ошибка: Файл $PATH_DWM/temp/$FILE_DESKTOP не найден!" >&2
    exit 1
fi

if [ ! -w "$PATH_SESSIONS" ]; then
    echo "Требуются права root для копирования в $PATH_SESSIONS"
    sudo cp -v "$PATH_DWM/temp/$FILE_DESKTOP" "$PATH_SESSIONS/"
else
    cp -v "$PATH_DWM/temp/$FILE_DESKTOP" "$PATH_SESSIONS/"
fi

if [ $? -ne 0 ]; then
    echo "Ошибка копирования $FILE_DESKTOP!" >&2
    exit 1
fi

echo "Успешно: Оба файла скопированы!"

# ---- Копирование конфига Rofi ----
echo "Копируем Rofi конфиг..."
if [ -d "$PATH_DWM/temp/rofi" ]; then
    mkdir -p "$PATH_CONFIG/rofi"
    cp -rf "$PATH_DWM/temp/rofi/"* "$PATH_CONFIG/rofi/"
    echo "Готово! Rofi конфиг скопирован в ~/.config/rofi/"
else
    echo "Ошибка: Папка $PATH_DWM/temp/rofi не найдена!" >&2
    exit 1
fi

exit 0
