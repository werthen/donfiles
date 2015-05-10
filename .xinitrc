xset +fp /usr/share/fonts/local
xset fp rehash

pkill panel

hsetroot -fill $WALLPAPER
xsetroot -cursor_name left_ptr
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
compton --config /home/don/.config/compton.conf &
dunst -config /home/don/.dunstrc &

# Lol java
export _JAVA_AWT_WM_NONREPARENTING=1

sxhkd &
exec bspwm -c $HOME/dotfiles/bspwmrc
