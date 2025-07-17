######################### Environment Variables #########################

# Set standard editor variables
$env.EDITOR = 'nvim'
$env.VISUAL = 'nvim'

# FZF configuration variables
$env.FZF_CTRL_T_OPTS = "--preview 'bat --color=always --line-range=:500 {}'"
$env.FZF_DEFAULT_COMMAND = "fd --type f"
$env.FZF_ALT_C_COMMAND = "fd --type d"

$env.config.show_banner = false

########################## Aliases and Commands #########################

# `gh copilot` alias
alias exp = gh copilot explain



