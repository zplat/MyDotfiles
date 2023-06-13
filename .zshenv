
###############################
#      ENVIRONMENT VARIABLES   #
###############################

# XDG
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME="$HOME/.cache"}

# Data
#export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GOPATH="$XDG_DATA_HOME"/go
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# X11
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_CONFIG_HOME/X11/Xauthority"

# nix
if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
if [ -e /home/phlight/.nix-profile/etc/profile.d/nix.sh ]; then . /home/phlight/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# fcitx5
#export GTK_IM_MODULE='fcitx'
#export QT_IM_MODULE='fcitx'
#export SDL_IM_MODULE='fcitx'
#export XMODIFIERS='@im=fcitx'
export QT_IM_MODULE=fcitx5
export GTK_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
export QT4_IM_MODULE=fcitx5
export CLUTTER_IM_MODULE=fcitx5
export GLFW_IM_MODULE=fcitx5
