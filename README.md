# Dotfiles

Clone into home directory and create symlinks with stow


```console
cd ~/
git clone git@github.com:kasperwelbers/dotfiles
cd dotfiles

sudo apt install stow build-essential
stow .
```

# Install packages

Install neovim, bat, fdfind, git, snap, zellij, gh, zed and starship

```console
sudo apt update
sudo apt install neovim bat fdfind git snapd
sudo snap install zellij --classic
sudo snap install gh
curl -f https://zed.dev/install.sh | sh
curl -sS https://starship.rs/install.sh | sh zed
```

Install brew, and use brew to install fzf

```console
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bashrc

brew install fzf
```









