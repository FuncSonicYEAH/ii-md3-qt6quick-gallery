# M3 Gallery

一個基於 Qt6 Quick + C++ + Meson 的元件畫廊，移植了 [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/) 的 **「illogical-impulse」（Material 3）** 設計。

它展示了一套 Material 3 風格的 QML 元件——按鈕、開關、滑桿、進度指示器、文字輸入框、提示框、導覽列，以及可平滑變形的圓角多邊形——由 C++ 主題引擎驅動，從系統調色板推導 M3 色彩權杖（color tokens）。

## 其他語言的自述檔案

- English: [README.md](../README.md)
- 简体中文（簡體中文）: [README.zh-CN.md](README.zh-CN.md)
- 日本語（日語）: [README.ja.md](README.ja.md)
- Русский（俄語）: [README.ru.md](README.ru.md)

## 相依項目

- **建置工具**：Meson（>= 1.1.0）、Ninja、支援 C++17 的編譯器
- **Qt 6**：Core、Gui、Qml、Quick、QuickControls2、Svg、Core5Compat
- **字型**：
  - Material Symbols Rounded（可變字型）——圖示，**已內嵌**在可執行檔中（`qml/fonts/MaterialSymbolsRounded.ttf`），無需系統安裝
  - 內文字型跟隨桌面的 Qt 字型設定（KDE、qt6ct 等）；等寬字型跟隨系統固定字型

### Fedora / 基於 RHEL 的系統（dnf）

```sh
sudo dnf install qt6-qtbase-devel qt6-qtdeclarative-devel qt6-qtsvg-devel qt6-qt5compat-devel meson ninja-build gcc-c++
```

### Arch Linux / Manjaro（pacman）

```sh
sudo pacman -S qt6-base qt6-declarative qt6-svg qt6-5compat base-devel meson ninja
```

### Debian / Ubuntu（apt）

```sh
sudo apt install qt6-base-dev qt6-declarative-dev libqt6svg6-dev qt6-5compat-dev meson ninja-build g++ pkg-config
```

> 在 Ubuntu 上，Qt 6 的套件位於 `universe` 軟體庫中——請先啟用該軟體庫。

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

> Material Symbols Rounded 可變字型已內嵌在可執行檔中，即使系統未安裝該字型，圖示也能正確顯示。

## 建置

```sh
meson setup build
ninja -C build
```

## 執行

```sh
./build/m3-gallery
```

## 授權條款

本專案以 [GNU 通用公共授權條款 v3.0](../LICENSE)（GPL-3.0）發布。

本倉庫包含的第三方元件：

- `qml/Components/shapes/` —— 變形圓角多邊形函式庫，為 [Knugel 的 rounded-polygon-ts](https://github.com/Knugel/rounded-polygon-ts)（Androidx shape 函式庫的移植）的 QML 移植版本 —— **Apache License 2.0**（見 [qml/Components/shapes/LICENSE](../qml/Components/shapes/LICENSE)）
- Google 的 Material Symbols Rounded 字型 —— **Apache License 2.0**（見 [qml/fonts/LICENSE](../qml/fonts/LICENSE)）
- Google 的 Noto Sans / Noto Sans Mono 字型 —— **SIL 開放字型授權條款 1.1**
- 移植自 [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/) 的「illogical-impulse」Material 3 設計
