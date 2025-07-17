# Dotfiles

Clone into home directory and create symlinks with stow

```console
cd ~/
git clone git@github.com:kasperwelbers/dotfiles
cd dotfiles

sudo apt install stow build-essential
stow .
```

# Install i3 or sway

Also install picom (window visuals) and feh (background image)

```console
sudo apt install i3 picom feh
```

# Install packages

Install neovim, bat, fdfind, git, snap, zellij, gh, zed, ghostty, and starship

```console
sudo apt update
sudo apt install neovim bat fd-find git snapd
sudo snap install zellij --classic
sudo snap install ghostty --classic
sudo snap install gh
curl -f https://zed.dev/install.sh | sh
curl -sS https://starship.rs/install.sh | sh
```

Install brew, and use brew to install fzf

```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bashrc

brew install fzf
```

## I3 stuff I need to remember and other nice stuff

### Connect to wifi

```
nmcli dev wifi
nmcli device wifi connect [sid] password [password]
```

### Set second screen

If not auto detected, use xrandr, and afterwards restart i3 settings (meta+shift+r)

```
xrandr
xrandr --output DP-4 --right-of eDP-1
```

### Set default programs

Let's you select program, and sets as default

```
mimeopen -d file.ext
```

