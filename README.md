# M3 Gallery

A Qt6 Quick + C++ + Meson component gallery that ports the **"illogical-impulse" (Material 3)** design from [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/).

It showcases a set of Material 3 styled QML components — buttons, switches, sliders, progress indicators, text fields, tooltips, navigation rails and morphing rounded shapes — driven by a C++ theme engine that derives the M3 color tokens from the system palette.

## README in other languages

- 简体中文 (Simplified Chinese): [README.zh-CN.md](readme/README.zh-CN.md)
- 繁體中文 (Traditional Chinese): [README.zh-TW.md](readme/README.zh-TW.md)
- 日本語 (Japanese): [README.ja.md](readme/README.ja.md)
- Русский (Russian): [README.ru.md](readme/README.ru.md)

## Dependencies

- **Build**: Meson (>= 1.1.0), Ninja, a C++17 compiler
- **Qt 6**: Core, Gui, Qml, Quick, QuickControls2, Svg, Core5Compat
- **Fonts**:
  - Material Symbols Rounded (variable font) — icons, **bundled** in the binary (`qml/fonts/MaterialSymbolsRounded.ttf`), no system install needed
  - Text fonts follow the desktop's Qt font configuration (KDE, qt6ct, ...); monospace follows the system fixed font

### Fedora / RHEL-based (dnf)

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

> On Ubuntu, the Qt 6 packages live in the `universe` repository — enable it first.

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

> The Material Symbols Rounded variable font is embedded in the binary, so icons render correctly even when the font is not installed on the system.

## Building

```sh
meson setup build
ninja -C build
```

## Running

```sh
./build/m3-gallery
```

## License

The project is licensed under the [GNU General Public License v3.0](LICENSE).

Third-party components shipped in this repository:

- `qml/Components/shapes/` — morphing rounded-polygon library, a QML port of [Knugel's rounded-polygon-ts](https://github.com/Knugel/rounded-polygon-ts) (itself a port of Androidx's shape library) — **Apache License 2.0** (see [qml/Components/shapes/LICENSE](qml/Components/shapes/LICENSE))
- Material Symbols Rounded font by Google — **Apache License 2.0** (see [qml/fonts/LICENSE](qml/fonts/LICENSE))
- Noto Sans / Noto Sans Mono fonts by Google — **SIL Open Font License 1.1**
- The "illogical-impulse" Material 3 design ported from [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/)
