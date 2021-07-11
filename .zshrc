# TODO:
# - Set variables
# - Create aliases
# - Customize the prompt
# - Write handy functions
# - Change ZSH options
# - Adjust history functionality
# - Improve line editor (completions, menu, navigation, etc.)
# - Add locations to $PATH variable (or $path array)
# - Use ZSH plugins
# - Change key bindings
# - Add "zstyles" for completions & more

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/leosol/.oh-my-zsh"

# powerlevel10k oh-my-zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme


# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

###########
# ALIASES #
###########

alias l="exa -abhHlS"

# config files
alias zshrc="nvim ~/.zshrc"
alias z="zshrc"
alias yabairc="nvim ~/.config/yabai/yabairc"
alias yrc="yabairc"
alias skhdrc="nvim ~/.config/skhd/skhdrc"
alias skhd="skhdrc"
alias vimrc="v ~/.config/nvim/init.vim"
alias iv="vimrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias spacebarrc="nvim ~/.config/spacebar/spacebarrc"

# folders
alias dev="cd ~/m/dev/"
# alias config="cd ~/.config/"

# restart brew services
alias restart_yabai="brew services restart yabai"
alias ry="restart_yabai"
alias restart_spacebar="brew services restart spacebar"
alias rsp="restart_spacebar"

# keyboards keyboards
alias kb_flash_zygote="qmk flash -kb zygote -km leosolid"
alias kb_edit_zygote="nvim ~/m/dev/qmk_firmware/keyboards/zygote/keymaps/leosolid/keymap.c"

# github
alias gh_web="gh repo view --web"
alias ghw="gh_web"

# vim 
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# vimwiki
alias ww="nvim -c ':VimwikiIndex'"
alias w="nvim -c ':VimwikiIndex'"
alias wi="nvim -c ':VimwikiDiaryIndex'"
alias i="nvim -c ':VimwikiDiaryIndex'"
alias n="nvim -c ':VimwikiMakeDiaryNote'"

# taskwarrior
alias  t="task"

# yadm
alias y='yadm'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
