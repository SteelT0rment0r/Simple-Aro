Its a basic Aro dotfile repo that has pretty much everything you need for a complete Aro desktop setup.

Aro is an excellent compositor especially for its age, so i immediately decided to rice it and made this pretty minimal but still capable setup.

aro --> https://github.com/simeulinuxkaliaiwr/aro

## what this rice has

The main components i use are:

* Aro — compositor / window management
* Rofi — app launcher + system menus
* Waybar — status bar
* Pywal — dynamic wallpaper-based colors
* Hyprlock — lock screen
* Kitty — terminal
* Fish — shell
* Fastfetch — system info
* Neovim — editor
* MPD + rmpc — music player setup
* Aro's native tools — wallpapers and compositor-specific stuff

and there are a bunch of smaller utilities behind the menus so the desktop is actually usable and not just a pretty screenshot

## what you can actually do with it

The desktop comes with:

* 📱 app launcher through Rofi
* 🎨 dynamic Pywal theming
* 🖼️ wallpaper picker / wallpaper management
* 🔊 volume controls
* ☀️ brightness controls
* 🎚️ scrollable volume + brightness widgets
* 🔊 volume slider directly in Waybar
* 📶 Wi-Fi menu
* 🟦 Bluetooth menu
* ⏻ power menu
* 📸 screenshot menu
* 🎥 screen recording menu
* 🔒 Hyprlock lock screen
* 🎵 MPD / rmpc music controls
* 📊 Waybar system/status modules
* 🖥️ terminal setup with Kitty
* 🐟 Fish shell setup
* 🧠 Neovim config
* 🖼️ wallpaper colors automatically fed into the rest of the desktop through Pywal

So yeah, its meant to be an actual usable desktop rather than just an Aro config with a bar slapped on it.

## dependencies

### Main

* `aro`
* `rofi`
* `waybar`
* `pywal`
* `hyprlock`
* `kitty`
* `fish`
* `fastfetch`
* `neovim`
* `mpd`
* `rmpc`

### Desktop utilities

* `brightnessctl`
* `wpctl`
* `playerctl`
* `nmcli`
* `bluetoothctl`
* `grim`
* `slurp`

These handle things like:

* `brightnessctl` → brightness control
* `wpctl` → PipeWire volume control
* `playerctl` → media controls
* `nmcli` → Wi-Fi / NetworkManager control
* `bluetoothctl` → Bluetooth control
* `grim` → screenshots
* `slurp` → selecting an area for screenshots / recording

For audio, this setup expects a working PipeWire + WirePlumber setup.

For networking, it expects NetworkManager.

For Bluetooth, it expects BlueZ.

## manual installation

There isn't an installer script atm, so the setup is pretty simple.

First install the dependencies above using your distro's package manager.

Then clone the repo:

```fish
git clone https://github.com/SteelT0rment0r/Simple-Aro.git
cd Simple-Aro
```

Then copy the configs into your home directory:

```fish
cp -r config/* ~/.config/
```

If `~/.config` doesn't exist yet:

```fish
mkdir -p ~/.config
cp -r config/* ~/.config/
```

The repo also contains shell / other home-directory configs if you want to use those, so check the repo structure before copying anything directly into `~`.

## wallpapers

The wallpaper scripts expect wallpapers to be available in:

```text
~/Pictures/Wallpapers
```

So create the directory if you don't already have it:

```fish
mkdir -p ~/Pictures/Wallpapers
```

Then put your wallpapers there.

## starting Aro

After copying the configs, start an Aro session from your display manager or launch Aro manually according to your Aro installation.

Once Aro starts, the Waybar, Rofi menus, wallpaper setup and the rest of the rice should load from the configs you just copied.

If something doesn't work, check that all the dependencies above are installed and that the relevant system service is running.

## changing the rice

Most of the stuff is in:

```text
~/.config/aro
~/.config/rofi
~/.config/waybar
~/.config/hypr
~/.config/kitty
~/.config/fish
~/.config/wal
```

Feel free to change whatever you want (especially the keyboard layout because mine is tr). This is a rice, not a sacred artifact lmao you can also take it as a base, customize it and publish it I dont really care as long as you give the link to this repo.

## a few notes

This isn't meant to be a universal installer for every distro. Its basically the stuff i actually use on my own Aro setup.

The configs are also pretty easy to modify, so if you don't want one of the menus or utilities you can just remove the corresponding Rofi script / Waybar module.

The compositor itself is the main reason this exists. Aro is surprisingly capable and i wanted to see how far i could take a proper rice with it.

I will be adding stuff to the repo like rofi animations once the compositor supports it or anything else that i find useful for this rice so if you use it you might wanna check it out occasionally, see if there is anything new you might want.

Have fun and hope u enjoy it :)

