######################### Environment Variables #########################

$env.config.show_banner = false

$env.EDITOR = 'nvim'
$env.VISUAL = 'nvim'
$env.config.buffer_editor = "nvim"
$env.config.edit_mode = "vi"

let colors = {
    vi_insert: {fg: green attr:b},
    vi_normal: {fg: yellow attr:b}
}

$env.config.cursor_shape.vi_insert = 'line'
$env.config.cursor_shape.vi_normal = 'block'


# FZF configuration variables
$env.FZF_CTRL_T_OPTS = "--preview 'bat --color=always --line-range=:500 {}'"
$env.FZF_DEFAULT_COMMAND = "fd --type f"
$env.FZF_ALT_C_COMMAND = "fd --type d"



########################## Aliases and Commands #########################

# `gh copilot` alias
alias exp = gh copilot explain

def nu-copy [] {
    let fname = explore --peek
    print $"Copied \"($fname)\""
    $fname | xclip -selection clipboard
}

def lsr [] {
    ls | sort-by modified
}

source $"($nu.home-path)/.cargo/env.nu"

