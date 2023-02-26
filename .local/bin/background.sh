#!/usr/bin/env sh


DIR="/run/media/phlight/Storage2/Dropbox/Background/4K"
BkGd[0]="$DIR/anime-girl-aqua-blue-4k-gu-3840x2160.jpg"
BkGd[1]="$DIR/anime-girl-dark-hairs-sitting-window-side-5k-5z-3840x2160.jpg"
BkGd[2]="$DIR/anime-girl-fantasy-warrior-4K-83.jpg"
BkGd[3]="$DIR/anime-girl-on-vacation-3840x2160.jpg"
BkGd[4]="$DIR/anime-girl-with-umbrella-outdoors-looking-back-5k-qx-3840x2160.jpg"
BkGd[5]="$DIR/anime-girl-with-umbrella-in-rain-co-3840x2160.jpg"
BkGd[6]="$DIR/anime-girl-winter-night-5k-bh-3840x2160.jpg"
BkGd[7]="$DIR/anime-original-girl-5k-21-3840x2160.jpg"
BkGd[8]="$DIR/anime-girl-sky-clouds-sunrise-scenery-4K-67.jpg"

if [ $# -eq 0 ]; then
    BG=0
else
    BG="$1"
fi

echo "$BG"

riverctl spawn "swaybg -m fill -i ${BkGd[$BG]}"
#feh -bg-scale "$HOME/Dropbox/Background/anime-girl-aqua-blue-4k-gu-3840x2160.jpg" &
#    [[ -e ${BkGd[ $i ]} ]] && riverctl spawn "swaybg -m fill -i ${BkGd[ $i ]}" &
