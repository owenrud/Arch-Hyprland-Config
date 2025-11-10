#!/bin/bash
packages=(
	"nvim"
	"git"
	"cava"
	"waybar"
	"rofi"
	"swaync"
)
folders=("cava" "hypr" "kitty" "rofi" "swaync" "waybar" "eww")
for package in "${packages[@]}"; do
	sudo pacman -S "$package" --noconfirm
done
cd Downloads
git clone https://github.com/owenrud/Arch-Hyprland-Config.git
cd Arch-Hyprland-Config
for folder in "${folders[@]}"; do
	cp -r "$folder" "$HOME/.config/"
done
cd 
sudo pacman -S --needed base-devel git
cd Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -S tty-clock --noconfirm
echo "Required Packages Installation Complete"
