# M3 Gallery

一款基于 Qt6 Quick + C++ + Meson 的组件画廊，移植了 [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/) 的 **「illogical-impulse」（Material 3）** 设计。

它展示了一套 Material 3 风格的 QML 组件——按钮、开关、滑块、进度指示器、文本输入框、提示框、导航栏，以及可平滑形变的圆角多边形——由 C++ 主题引擎驱动，从系统调色板派生 M3 颜色令牌（color tokens）。

## 其他语言的自述文件

- English: [README.md](../README.md)
- 繁體中文（繁体中文）: [README.zh-TW.md](README.zh-TW.md)
- 日本語（日语）: [README.ja.md](README.ja.md)
- Русский（俄语）: [README.ru.md](README.ru.md)

## 依赖

- **构建工具**：Meson（>= 1.1.0）、Ninja、支持 C++17 的编译器
- **Qt 6**：Core、Gui、Qml、Quick、QuickControls2、Svg、Core5Compat
- **字体**：
  - Material Symbols Rounded（可变字体）——图标，**已内嵌**在可执行文件中（`qml/fonts/MaterialSymbolsRounded.ttf`），无需系统安装
  - 正文字体跟随桌面的 Qt 字体配置（KDE、qt6ct 等）；等宽字体跟随系统固定字体

### Fedora / 基于 RHEL 的系统（dnf）

```sh
sudo dnf install qt6-qtbase-devel qt6-qtdeclarative-devel qt6-qtsvg-devel qt6-qt5compat-devel meson ninja-build gcc-c++
```

### Arch Linux / Manjaro（pacman）

```sh
sudo pacman -S qt6-base qt6-declarative qt6-svg qt6-5compat base-devel meson ninja
# 字体
sudo pacman -S noto-fonts ttf-material-symbols-variable
```

### Debian / Ubuntu（apt）

```sh
sudo apt install qt6-base-dev qt6-declarative-dev libqt6svg6-dev qt6-5compat-dev meson ninja-build g++ pkg-config
# 字体
sudo apt install fonts-noto-core fonts-noto-cjk fonts-noto-mono
```

> 在 Ubuntu 上，Qt 6 的软件包位于 `universe` 软件源中——请先启用该软件源。

### openSUSE（zypper）

```sh
sudo zypper install qt6-base-devel qt6-declarative-devel qt6-svg-devel qt6-qt5compat-devel meson ninja gcc-c++
```

### Gentoo（portage）

```sh
sudo emerge --ask dev-qt/qtbase dev-qt/qtdeclarative dev-qt/qtsvg dev-qt/qt5compat dev-build/meson dev-build/ninja
```

### NixOS / nix

```sh
nix-shell -p qt6.qtbase qt6.qtdeclarative qt6.qtsvg qt6.qt5compat meson ninja gcc
```

> Material Symbols Rounded 可变字体已内嵌在可执行文件中，即使系统未安装该字体，图标也能正确显示。

## 构建

```sh
meson setup build
ninja -C build
```

## 运行

```sh
./build/m3-gallery
```

## 许可证

本项目采用 [GNU 通用公共许可证 v3.0](../LICENSE)（GPL-3.0）发布。

仓库中包含的第三方组件：

- `qml/Components/shapes/` —— 形变圆角多边形库，是 [Knugel 的 rounded-polygon-ts](https://github.com/Knugel/rounded-polygon-ts)（Androidx shape 库的移植）的 QML 移植版本 —— **Apache License 2.0**（见 [qml/Components/shapes/LICENSE](../qml/Components/shapes/LICENSE)）
- Google 的 Material Symbols Rounded 字体 —— **Apache License 2.0**（见 [qml/fonts/LICENSE](../qml/fonts/LICENSE)）
- Google 的 Noto Sans / Noto Sans Mono 字体 —— **SIL 开源字体许可证 1.1**
- 移植自 [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/) 的「illogical-impulse」Material 3 设计
