# M3 Gallery

Галерея компонентов на Qt6 Quick + C++ + Meson, портирующая дизайн **"illogical-impulse" (Material 3)** из [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/).

В ней представлен набор QML-компонентов в стиле Material 3 — кнопки, переключатели, слайдеры, индикаторы прогресса, текстовые поля, всплывающие подсказки, панель навигации и плавно морфирующие скруглённые многоугольники — управляемые C++-движком темы, который выводит цветовые токены M3 из системной палитры.

## README на других языках

- English: [README.md](../README.md)
- 简体中文 (упрощённый китайский): [README.zh-CN.md](README.zh-CN.md)
- 繁體中文 (традиционный китайский): [README.zh-TW.md](README.zh-TW.md)
- 日本語 (японский): [README.ja.md](README.ja.md)

## Зависимости

- **Сборка**: Meson (>= 1.1.0), Ninja, компилятор с поддержкой C++17
- **Qt 6**: Core, Gui, Qml, Quick, QuickControls2, Svg, Core5Compat
- **Шрифты**:
  - Material Symbols Rounded (вариативный шрифт) — иконки, **встроен** в исполняемый файл (`qml/fonts/MaterialSymbolsRounded.ttf`), установка в систему не требуется
  - Текстовые шрифты следуют конфигурации шрифтов Qt рабочего стола (KDE, qt6ct и т. д.); моноширинный — системному фиксированному шрифту

### Fedora / системы на базе RHEL (dnf)

```sh
sudo dnf install qt6-qtbase-devel qt6-qtdeclarative-devel qt6-qtsvg-devel qt6-qt5compat-devel meson ninja-build gcc-c++
```

### Arch Linux / Manjaro (pacman)

```sh
sudo pacman -S qt6-base qt6-declarative qt6-svg qt6-5compat base-devel meson ninja
```

### Debian / Ubuntu (apt)

```sh
sudo apt install qt6-base-dev qt6-declarative-dev libqt6svg6-dev qt6-5compat-dev meson ninja-build g++ pkg-config
```

> В Ubuntu пакеты Qt 6 находятся в репозитории `universe` — сначала включите его.

### openSUSE (zypper)

```sh
sudo zypper install qt6-base-devel qt6-declarative-devel qt6-svg-devel qt6-qt5compat-devel meson ninja gcc-c++
```

### Gentoo (portage)

```sh
sudo emerge --ask dev-qt/qtbase dev-qt/qtdeclarative dev-qt/qtsvg dev-qt/qt5compat dev-build/meson dev-build/ninja
```

### NixOS / nix

```sh
nix-shell -p qt6.qtbase qt6.qtdeclarative qt6.qtsvg qt6.qt5compat meson ninja gcc
```

> Вариативный шрифт Material Symbols Rounded встроен в исполняемый файл, поэтому иконки отображаются корректно даже без установки шрифта в систему.

## Сборка

```sh
meson setup build
ninja -C build
```

## Запуск

```sh
./build/m3-gallery
```

## Лицензия

Проект распространяется под лицензией [GNU General Public License v3.0](../LICENSE) (GPL-3.0).

Сторонние компоненты, включённые в этот репозиторий:

- `qml/Components/shapes/` — библиотека морфирующих скруглённых многоугольников, QML-порт [rounded-polygon-ts от Knugel](https://github.com/Knugel/rounded-polygon-ts) (порт библиотеки shape из Androidx) — **Apache License 2.0** (см. [qml/Components/shapes/LICENSE](../qml/Components/shapes/LICENSE))
- Шрифт Material Symbols Rounded от Google — **Apache License 2.0** (см. [qml/fonts/LICENSE](../qml/fonts/LICENSE))
- Шрифты Noto Sans / Noto Sans Mono от Google — **SIL Open Font License 1.1**
- Дизайн "illogical-impulse" Material 3, портированный из [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/)
