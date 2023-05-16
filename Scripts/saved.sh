#!/bin/bash

exa ~/.scripts/saved/ | dmenu -l 30 | xargs -I R cat ~/.scripts/saved/R | dmenu -l 30 | xargs xdotool type
