#!/bin/bash
repo=ansible-dotfiles
< $repo/dotfiles xargs -n1 -I% ln -sf $repo/% .
