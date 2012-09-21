#!/bin/sh

# install and configure the 't' twitter client (https://github.com/sferik/t)
# configure a keyboard shortcut to run this script
# select something, hit your shortcut, confirm and it's done!

content=$(xclip -o)

# if you are on KDE, use 'kdialog' instead of 'zenity'

# if kdialog --yesno "Tweet this: \n\"$content\"" ; then
if zenity --question --text "Tweet this: \n\"$content\"" ; then
    t update "$content"
fi
