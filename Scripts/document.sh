#!/bin/bash

(fd .pdf ~; fd .djvu ~; fd .epub ~)  | wofi --dmenu --width 1000 | xargs -I R zathura R

