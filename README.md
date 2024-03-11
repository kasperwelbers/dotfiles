# workflow stuff

The purpose of this repo is simply to have a findable place where I keep track of software and config that I use in my daily workflow. For now it's just names of things I don't want to forget. When I find myself installing a new laptop or something I'll also add bash scripts.

## Terminal stuff

Currently like running the Alacritty terminal emulator with a regular bash shell, and a dash of tmux. 

For navigation I use fzf, customized with bat (for previewing) and fd-find (enhanced find command). As nicer replacements I use "btop" for top, "lsd" for ls, and "tldr" for man. Also like starship for making things look nice.

My default editor for small things is neovim. For programming I prefer VSCode (and RStudio for R), which both support vim motions. In VSCode I tweak some key settings, such as using the normal undo/redo stack (RStudio does this by default). See my User/settings.json in the config folder.

VSCode and RStudio both support vim motions, and use neovim as default editor.

I add the following to my bashrc.

```bash

export EDITOR='nvim'
export VISUAL='nvim'

eval "$(starship init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# customize fzf (requires having installed bat and fd-find
# https://www.redhat.com/sysadmin/fzf-linux-fuzzy-finder (but fdfind and batcat in bash)
export FZF_CTRL_T_OPTS="--preview 'batcat --color=always --line-range=:500 {}'"
export FZF_DEFAULT_COMMAND="fdfind --type f"
export FZF_ALT_C_COMMAND='fdfind --type d'
```

## Keymapping

I only use some light keymapping, since I tend to use mappable keyboards. But one key that I never use, and that I really need remapped whenever I do use a regular keyboard, is the replace my capslock with an escape (mostly for vim). 

Multiple ways to do this, but when I'm running Ubuntu I can just do this in Gnome Tweaks. HOWEVER, one thing to remember is then to add the following setting to the user settings.json in vscode

```json
"keyboard.dispatch": "keyCode":
```
