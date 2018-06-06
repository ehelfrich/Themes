XFCE Theme Switcher
=====================

This is a bash script that will change your theme based off of the parameter passed to the script.  This changes Conky scripts, LUA scripts, and the XFCE4 terminal configuration.  

## Prereqs
- Conky installed
- XFCE Desktop Environment
*This has been devloped on GalliumOS 2.1 x86_64 (Ubuntu 16.04)*


## Install
- Clone repo to your machine
- Place files in a folder called "Themes" under your home directory
- Ensure your configuration scripts are in the following locations
	- **terminalrc**
		- ~/.config/xfce4/terminal/terminalrc
	- **Lua Script**
		- ~/.conky/rings-v1.3.1.lua
	- **Conkyrc**
		- ~/.conkyrc
- Run the theme-switch script from the Themes directory or add it to your PATH

## Usage
- Run the scipt by calling theme-switch [THEME]
	- ex. ./theme-switch.sh red or ./theme-switch.sh green

## Currently Available Themes
- red
- green

### Notes
You may have to customize the provided Conky files in order to change samplers to monitor 4 cores (script only does 2 since it was developed on a Chrombook with only 2 cores) and monitor the correct NIC

### Acknowledgements
Conkyrc and the lua script original come from Deviantart user IzNoGud78's Conky Numix Light script.  It has been modified slightly from the original.  
[Deviantart - Conky Numix Light](https://www.deviantart.com/art/Conky-Numix-Light-706394114)

