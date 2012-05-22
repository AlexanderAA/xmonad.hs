#!/bin/sh
# LICENSE: PUBLIC DOMAIN
# switch between us and ru layouts

# If an explicit layout is provided as an argument, use it. Otherwise, select the next layout from
# the set [us, ru].
layout=$(setxkbmap -query | awk 'END{print $2}')
case $layout in
    us)
        setxkbmap ru
        ;;
    *)
        setxkbmap us
        ;;
esac
