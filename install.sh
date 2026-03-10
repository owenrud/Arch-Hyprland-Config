#!/bin/bash
packages=(
	"nvim"
	"pavucontrol"
	"git"
	"cava"
	"waybar"
	"rofi"
	"swaync"
	"hyprshot"
	"cliphist"
	"blueman"
	"power-profiles-daemon"
	"rofi-calc"
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
sudo pacman -S --needed base-devel git --noconfirm
cd Downloads
git clone https://aur.archlinux.org/spotify.git
cd Spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -
makepkg -si --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yaypackages=(
	"tty-clock"
	"spotify"
	"sddm-theme-sugar-candy"
	"wlogout"
	"noto-fonts-cjk"
	"ttf-jetbrains-mono-nerd"
	"gazelle-tui"
)
for package in "${yaypackages[@]}"; do
	yay -S "$package" --noconfirm
done
sleep 5 && sudo reboot
echo "Required Packages Installation Complete, Rebooting in 5 seconds to apply changes...."
