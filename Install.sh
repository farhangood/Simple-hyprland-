#!/bin/bash

echo "🛠 Menginstall paket yang dibutuhkan..."
sudo pacman -S --noconfirm hyprland kitty rofi swww

echo "📁 Menyiapkan direktori konfigurasi..."
mkdir -p ~/.config/hypr
mkdir -p ~/.config/kitty
mkdir -p ~/.config/rofi

echo "📂 Menyalin file konfigurasi..."
cp hyprland.conf ~/.config/hypr/hyprland.conf
cp kitty.conf ~/.config/kitty/kitty.conf
cp config.rasi ~/.config/rofi/config.rasi
cp theme.rasi ~/.config/rofi/theme.rasi

echo "✅ Selesai! Silakan restart Hyprland"
