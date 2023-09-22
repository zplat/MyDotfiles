#!/usr/bin/env sh


DIR="/$HOME/Dropbox/Background"
DIr="/$HOME/Dropbox/Background/wall"
BkGd[0]="$DIR/2K/anime-girl-aqua-blue-4k-gu-3840x2160.jpg"
BkGd[1]="$DIR/6K/anime-girl-dark-hairs-sitting-window-side-5k-5z-3840x2160.jpg"
BkGd[2]="$DIR/Picture/anime-girl-fantasy-warrior-4K-83.jpg"
BkGd[3]="$DIR/1K/anime-girl-on-vacation-3840x2160.jpg"
BkGd[4]="$DIR/1K/anime-girl-water-lilies-moon-4k-c4-3840x2160.jpg"
BkGd[5]="$DIR/2K/anime-girl-raining-train-lines-yx-3840x2160.jpg"
BkGd[6]="$DIR/2K/anime-girl-winter-night-5k-bh-3840x2160.jpg"
BkGd[7]="$DIR/2K/anime-school-girl-watching-clear-sky-sy-3840x2160.jpg"
BkGd[8]="$DIR/2K/anime-girl-sky-clouds-sunrise-scenery-4K-67.jpg"
BkGd[9]="$DIR/1K/eat-sleep-code-repeat-background-digital-art-4k-wallpaper-uhdpaper.com-249@0@g.jpg"
BkGd[10]="$DIR/6K/hentai-anime-girl-3840x2160.jpg"
BkGd[11]="$DIR/2K/underwater-world-anime-girl-4k-ah-3840x2160.jpg"
BkGd[12]="$DIR/Picture/wallpapersden.com_anime-girl-in-sunset_3840x2160.jpg"
BkGd[13]="$DIR/2K/wallpapersden.com_sad-anime-girl-walking_3840x2160.jpg"
BkGd[14]="$DIR/wall/__nishikigi_chisato_inoue_takina_and_majima_lycoris_recoil_drawn_by_neko_yanshoujie__584cfcdb1430d146cbecdb896fd93528.jpg"
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
