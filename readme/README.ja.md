# M3 Gallery

[end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/) の **「illogical-impulse」(Material 3)** デザインを移植した、Qt6 Quick + C++ + Meson 製のコンポーネントギャラリーです。

ボタン、スイッチ、スライダー、プログレスバー、テキストフィールド、ツールチップ、ナビゲーションレール、そして滑らかに変形する角丸ポリゴンなど、Material 3 スタイルの QML コンポーネントを展示します。C++ 製テーマエンジンがシステムパレットから M3 カラートークンを導出し、全体を駆動します。

## 他の言語の README

- English: [README.md](../README.md)
- 简体中文（簡体字中国語）: [README.zh-CN.md](README.zh-CN.md)
- 繁體中文（繁体字中国語）: [README.zh-TW.md](README.zh-TW.md)
- Русский（ロシア語）: [README.ru.md](README.ru.md)

## 依存関係

- **ビルドツール**: Meson（>= 1.1.0）、Ninja、C++17 対応コンパイラ
- **Qt 6**: Core、Gui、Qml、Quick、QuickControls2、Svg、Core5Compat
- **フォント**:
  - Material Symbols Rounded（可変フォント）— アイコン、**バイナリに同梱**（`qml/fonts/MaterialSymbolsRounded.ttf`）、システムへのインストールは不要
  - 本文フォントはデスクトップの Qt フォント設定（KDE、qt6ct など）に従います。等幅フォントはシステムの固定フォントに従います

### Fedora / RHEL 系（dnf）

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

> Ubuntu では Qt 6 パッケージは `universe` リポジトリにあります。先に有効にしてください。

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

> Material Symbols Rounded 可変フォントはバイナリに同梱されているため、システムにフォントがインストールされていなくてもアイコンは正しく表示されます。

## ビルド

```sh
meson setup build
ninja -C build
```

## 実行

```sh
./build/m3-gallery
```

## ライセンス

本プロジェクトは [GNU General Public License v3.0](../LICENSE)（GPL-3.0）で提供されています。

リポジトリに含まれるサードパーティ製コンポーネント:

- `qml/Components/shapes/` — [Knugel の rounded-polygon-ts](https://github.com/Knugel/rounded-polygon-ts)（Androidx shape ライブラリの移植）の QML 移植である、変形角丸ポリゴンライブラリ — **Apache License 2.0**（[qml/Components/shapes/LICENSE](../qml/Components/shapes/LICENSE) 参照）
- Google の Material Symbols Rounded フォント — **Apache License 2.0**（[qml/fonts/LICENSE](../qml/fonts/LICENSE) 参照）
- Google の Noto Sans / Noto Sans Mono フォント — **SIL Open Font License 1.1**
- [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland/) から移植した「illogical-impulse」Material 3 デザイン
