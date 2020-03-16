# sudo-font

Sudo is a monospaced font designed for terminal and programming. Use at 16 pixels size for optimal results.

Download the fonts at <https://www.kutilek.de/sudo-font/.>

<img src="https://raw.github.com/jenskutilek/sudo-font/master/images/sudo-textmate-py.png">

Sudo Regular and Bold in TextMate

<img src="https://raw.github.com/jenskutilek/sudo-font/master/images/sudo-light-powerline.png">

Sudo Light in vim on macOS with [Powerline](https://github.com/powerline/powerline)

## Installation

### FreeBSD

Sudo is available in the FreeBSD Ports Collection.

```sh
pkg install sudo-font
```

### macOS

Download the [latest release](https://www.kutilek.de/download/sudo.zip) and copy the fonts into `/Library/Fonts` or `~/Library/Fonts`.

Sudo is also available as a [Homebrew](https://brew.sh/) package.

```sh
brew tap homebrew/cask-fonts
brew cask install font-sudo
```

### Arch Linux

Sudo is available in the [Arch User Repository](https://wiki.archlinux.org/index.php/Arch_User_Repository) as [ttf-sudo](https://aur.archlinux.org/packages/ttf-sudo).

## Patch Fonts

There is a custom shell script included `patch-fonts.sh` that will rebuild larger versions of this font. The patched fonts will be written to `dist/sudo.zip`. Note, the Sudo Variable font is omitted from this script.

On macOS, add FontTools and GNU Sed prior to running shell script. Optionally, for patching fonts with Nerd Font's `font-patcher` install fontforge and place font-patcher python script in PATH. See `patch-fonts.sh` for example.

```sh
brew install fonttools gnu-sed
```

optionally, add fontforge for Nerd Fonts patching.

```sh
brew install fontforge
```
