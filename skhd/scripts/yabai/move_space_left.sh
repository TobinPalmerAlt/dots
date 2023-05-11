#!/bin/bash

source "/Users/tobin/.config/skhd/scripts/yabai/util.sh"

if [[ $CURRENT_SPACE_INDEX -eq $DISPLAY_FIRST_NUMBER ]]; then
  LEFT_SPACE_INDEX=$DISPLAY_LAST_NUMBER
else
  LEFT_SPACE_INDEX=$((CURRENT_SPACE_INDEX - 1))
fi

yabai -m space --move "$LEFT_SPACE_INDEX"

sh ~/.config/yabai/create_spaces.sh

