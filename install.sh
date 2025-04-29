#!/bin/bash

echo "🔗 Linking dotfiles into ~/.config..."

for dir in $(ls .config); do
    mkdir -p ~/.config/$dir
    for file in $(ls .config/$dir); do
        ln -sf "$(pwd)/.config/$dir/$file" ~/.config/$dir/$file
    done
done

echo "✅ Done. Restart Hyprland with SUPER+SHIFT+R."
