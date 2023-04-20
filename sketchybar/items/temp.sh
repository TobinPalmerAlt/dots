#!/usr/bin/env bash

DATE='sketchybar -m --set date label="$(date "+%a %b. %d")"'
TIME='sketchybar -m --set time label="$(date "+%I:%M %p")"'

sketchybar --add item time right                       \
    --set time update_freq=3                           \
    script="$TIME"                                     \
    background.padding_right=0                         \
    background.padding_left=0                          \
    label.padding_left=0                               \
    label.padding_right=10                             \
    icon.padding_left=0                                \
    icon.padding_right=0                               \
                                                       \
    --add item date right                              \
    --set date update_freq=60                          \
    script="$DATE"                                     \
    icon.padding_right=0                               \
    icon.padding_left=0                                \
                                                       \
    --add item weather right                           \
    --set weather update_freq=1800                     \
    background.padding_left=10                         \
    background.padding_right=0                         \
    icon.padding_left=0                                \
    script="$PLUGIN_DIR/weather.sh"                    \
                                                       \
    --add bracket time_temp                            \
    weather                                            \
    time                                               \
    date                                               
#...
