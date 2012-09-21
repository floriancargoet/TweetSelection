#!/bin/sh
content=$(xclip -o)
if zenity --question --text "Tweet this: \n\"$content\"" ; then
    t update "$content"
fi
