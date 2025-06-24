# 🖥️ jdunDWM — мой первый конфиг dwm

![my dwm](~/dwm-config/image.png)

*Минималистичный оконный менеджер для Arch Linux*

---

## 📦 Зависимости
Установите перед сборкой:
```bash
sudo pacman -S xorg-server xorg-xinit git base-devel libx11 libxft libxinerama freetype2 fontconfig rofi firefox
```


---

## ⚙️ Установка

### 1. Для пользователей с другим DE/WM
Скопируйте файлы вручную:
```bash
cp -r ~/dwm-config/temp/rofi/ ~/.config/
cp ~/dwm-config/startdwm.sh /usr/local/bin/
cp ~/dwm-config/temp/dwm.desktop /usr/local/share/xsessions/
make
sudo make install
```

Или используйте установочный скрипт:
```bash
sudo bash ./install.sh
```

### 2. Для чистого Arch (без DE)
Добавьте автозапуск в `~/.xinitrc`:
```bash
echo 'exec dwm' >> ~/.xinitrc
```

---

## ⌨️ Горячие клавиши
| Комбинация         | Действие                     |
|--------------------|-----------------------------|
| `Ctrl+Shift+d`     | Запуск Rofi (app launcher)  |
| `Ctrl+Shift+Esc`   | Power menu                  |
| `Ctrl+Shift+f`     | Открыть Firefox            |
| `Super+Shift+Enter` | Открыть терминал|
| `+Shift+f`     | Открыть Firefox            |
| `Super + b`  | Переключить dmenu          |
| `Super + Space`    | Смена раскладки (us/ru)    |

---

## 🖼️ Обои
1. Поместите ваше изображение в:  
   `~/jdunDWM/dwm/wallpapers/`
2. Переименуйте в `wp.jpg`

---

## 🔧 Кастомизация
### 1. Смена терминала
Отредактируйте **строку 63** в `config.h`:
```c
static const char *termcmd[] = { "ваш_терминал", NULL };
```
> Примеры:  `kitty`, `st`, `alacritty`.

### 2. Пересборка после изменений
```bash
make clean install
```
---
## 🔧 Особенности
- Патчи: vanitygaps, pertag, alwayscenter
- Готовые скрипты для быстрого старта

> 💡 Совет: Для кастомизации редактируйте `config.h` и пересобирайте dwm:
> ```bash
> make clean install
> ```
*Минималистичный оконный менеджер для Arch Linux*

---

## 📦 Зависимости
Установите перед сборкой:
```bash
sudo pacman -S xorg-server xorg-xinit git base-devel libx11 libxft libxinerama freetype2 fontconfig rofi firefox
```


---

## ⚙️ Установка

### 1. Для пользователей с другим DE/WM
Скопируйте файлы вручную:
```bash
cp -r ~/jdunDWM/temp/rofi/ ~/.config/
cp ~/jdunDWM/temp/startdwm.sh /usr/local/bin/
cp ~/jdunDWM/temp/dwm.desktop /usr/local/share/xsessions/
make
sudo make install
```

Или используйте установочный скрипт:
```bash
sudo bash ./install.sh
```

### 2. Для чистого Arch (без DE)
Добавьте автозапуск в `~/.xinitrc`:
```bash
echo 'exec dwm' >> ~/.xinitrc
```

---

## ⌨️ Горячие клавиши
| Комбинация         | Действие                     |
|--------------------|-----------------------------|
| `Ctrl+Shift+d`     | Запуск Rofi (app launcher)  |
| `Ctrl+Shift+Esc`   | Power menu                  |
| `Ctrl+Shift+f`     | Открыть Firefox            |
| `Super+Shift+Enter` | Открыть терминал|
| `+Shift+f`     | Открыть Firefox            |
| `Super + b`  | Переключить dmenu          |
| `Super + Space`    | Смена раскладки (us/ru)    |

---

## 🖼️ Обои
1. Поместите ваше изображение в:  
   `~/jdunDWM/dwm/wallpapers/`
2. Переименуйте в `wp.jpg`

---

## 🔧 Кастомизация
### 1. Смена терминала
Отредактируйте **строку 63** в `config.h`:
```c
static const char *termcmd[] = { "ваш_терминал", NULL };
```
> Примеры:  `kitty`, `st`, `alacritty`.

### 2. Пересборка после изменений
```bash
make clean install
```
---
## 🔧 Особенности
- Патчи: vanitygaps, pertag, alwayscenter
- Готовые скрипты для быстрого старта

> 💡 Совет: Для кастомизации редактируйте `config.h` и пересобирайте dwm:
> ```bash
> make clean install
> ```
