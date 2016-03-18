#!/bin/bash

< ansible-dotfiles/dotfiles xargs -n1 -I ln -s {} .
