# Dotfiles

Clone into home directory and create symlinks with stow

```console
cd ~/
git clone git@github.com:kasperwelbers/dotfiles
cd dotfiles

sudo apt install stow build-essential
stow .
```

# Install i3

Also install picom (window visuals) and feh (background image)

```console
sudo apt install i3 picom feh
```

# Install packages

```console
sudo apt update
sudo apt install git btop roli snapd
sudo snap install zellij --classic
sudo snap install ghostty --classic
sudo snap install gh
sudo snap install nushell
curl -f https://zed.dev/install.sh | sh
```

# Install neovim

```console
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
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

