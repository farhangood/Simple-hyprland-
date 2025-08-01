#!/bin/bash

echo "🔧 Installing all required packages for Minimal Hyprland..."

# Pastikan sudah update sistem
sudo pacman -Syu --noconfirm

# Install paket utama
sudo pacman -S --noconfirm hyprland kitty waybar rofi swww \
    thunar networkmanager network-manager-applet blueman \
    pipewire wireplumber pipewire-audio \
    polkit-kde-agent grim slurp wl-clipboard \
    ttf-jetbrains-mono-nerd xdg-utils xdg-user-dirs

# Enable layanan penting
sudo systemctl enable NetworkManager
sudo systemctl enable bluetooth

# Buat folder config
mkdir -p ~/.config/hypr
mkdir -p ~/.config/waybar
mkdir -p ~/.config/rofi

# Salin config
cp -r .config/hypr/* ~/.config/hypr/
cp -r .config/waybar/* ~/.config/waybar/
cp -r .config/rofi/* ~/.config/rofi/

echo "✅ Semua config dan paket sudah diinstall!"
echo "➡️ Jalankan Hyprland lalu tekan SUPER+SPACE untuk toggle floating."
