#!/bin/bash

# Получаем текущий заряд батареи
capacity=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)

# Если батарея не найдена, выходим
if [ -z "$capacity" ]; then
    echo " Battery not found!"
    exit 1
fi

# Выбираем иконку в зависимости от уровня заряда
if [ "$capacity" -ge 90 ]; then
    icon=" "  # Полная батарея
elif [ "$capacity" -ge 60 ]; then
    icon=" "  # Почти полная
elif [ "$capacity" -ge 30 ]; then
    icon=" "  # Средний заряд
elif [ "$capacity" -ge 10 ]; then
    icon=" "  # Низкий заряд
else
    icon=" "  # Почти разряжена
fi

# Выводим результат (иконка + процент)
echo "$icon $capacity%"
