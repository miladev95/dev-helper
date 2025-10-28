#!/bin/bash
nohup goland &>/dev/null &
nohup google-chrome --restore-last-session &>/dev/null &
tmux
nohup xdg-open ~/Desktop/Notes.txt &>/dev/null &
