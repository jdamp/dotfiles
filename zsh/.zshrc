# Path to your oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(adb git pip tmux)

# User configuration

source $ZSH/oh-my-zsh.sh
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='emacs'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias -s pdf=evince
alias -s tex=emacs
alias -s png=mirage
alias root="root -l"
alias rdmainz="rdesktop -u jdamp@uni-mainz.de -g 95% rds.zdv.uni-mainz.de" 
alias emnw='emacs -nw'
alias bat_80='tpacpi-bat -s SP 0 80'
alias bat_100='tpacpi-bat -s SP 0 0'
alias ...='cd ../..'
alias ....='cd ../../../'

wallpaper=$HOME/pics/wallpaper.png

alias xrandr_work='xrandr --output DP-2 --mode 1680x1050 --right-of eDP-1 && feh --bg-scale "$wallpaper"'
alias xrandr_home='xrandr --output DP-2 --mode 1680x1050 --left-of eDP-1 && feh --bg-scale "$wallpaper"'
alias xrandr_tv='xrandr --output HDMI-1 --mode 1920x1080 --right-of eDP-1 && feh --bg-scale "$wallpaper"'
 
screenfetch -c 3,4
mount_mogon() {
    ssh -f jdamp@linux.zdv.uni-mainz.de -L 22022:mogonetap:22 -N
    sshfs -p 22022 jdamp@127.0.0.1:/home/jdamp/masterthesis/ /home/jdamp/mnt/masterthesis
    }

mount_lxplus() {
    sshfs -p 22 jodamp@lxplus.cern.ch:/afs/cern.ch/work/j/jodamp/public/ /home/jdamp/mnt/lxplus
}

