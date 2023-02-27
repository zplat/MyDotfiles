#!/usr/bin/env sh


DIR="/run/media/phlight/Storage2/Dropbox/Background/4K"
DIr="/run/media/phlight/Storage2/Dropbox/Background/wall"
BkGd[0]="$HOME/Pictures/anime-girl-aqua-blue-4k-gu-3840x2160.jpg"
BkGd[1]="$DIR/anime-girl-dark-hairs-sitting-window-side-5k-5z-3840x2160.jpg"
BkGd[2]="$DIR/anime-girl-fantasy-warrior-4K-83.jpg"
BkGd[3]="$DIR/anime-girl-on-vacation-3840x2160.jpg"
BkGd[4]="$DIR/anime-girl-water-lilies-moon-4k-c4-3840x2160.jpg"
BkGd[5]="$DIR/anime-girl-raining-train-lines-yx-3840x2160.jpg"
BkGd[6]="$DIR/anime-girl-winter-night-5k-bh-3840x2160.jpg"
BkGd[7]="$DIR/anime-school-girl-watching-clear-sky-sy-3840x2160.jpg"
BkGd[8]="$DIR/anime-girl-sky-clouds-sunrise-scenery-4K-67.jpg"
BkGd[9]="$DIR/eat-sleep-code-repeat-background-digital-art-4k-wallpaper-uhdpaper.com-249@0@g.jpg"
BkGd[10]="$DIR/hentai-anime-girl-3840x2160.jpg"
BkGd[11]="$DIR/underwater-world-anime-girl-4k-ah-3840x2160.jpg"
BkGd[12]="$DIR/wallpapersden.com_anime-girl-in-sunset_3840x2160.jpg"
BkGd[13]="$DIR/wallpapersden.com_sad-anime-girl-walking_3840x2160.jpg"
BkGd[14]="$DIr/__nishikigi_chisato_inoue_takina_and_majima_lycoris_recoil_drawn_by_neko_yanshoujie__584cfcdb1430d146cbecdb896fd93528.jpg"
BkGd[15]="$DIr/Lo\ Fi\ Anime\ Wallpapers\ \ \ Top\ Lo\ Fi\ Anime\ Backgrounds.png "
if [ $# -eq 0 ]; then
    BG=0
else
    BG="$1"
fi

echo "$BG"

riverctl spawn "swaybg -m fill -i ${BkGd[$BG]}"
#feh -bg-scale "$HOME/Dropbox/Background/anime-girl-aqua-blue-4k-gu-3840x2160.jpg" &
#    [[ -e ${BkGd[ $i ]} ]] && riverctl spawn "swaybg -m fill -i ${BkGd[ $i ]}" &
