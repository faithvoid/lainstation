# LainStation
PSX-style RetroPie console, designed around the Raspberry Pi 3 A+, with a 1.3" SH1106 OLED display to display game / media data. Set up specifically for 480p/240p composite input.

## What this does so far
- Helps the user set up their RetroPie installation for composite output, and to boot in 480p and automatically switch to 240p for supported systems.
- Shortens RetroPie boot time as much as possible (excluding boot video)
- Adds Playstation-style "RetroPie" boot video on startup
- Helps the user set up a Playstation-style theme
- Hides terminal text that may show up in the background to make the system feel more "official"
- Adds a "Kodi" option on the ES home menu, as well as the 480p Confluence skin for the best possible 480p experience.
- Adds a "Disk" option in the home menu that allows you to mount and launch games directly from a burnt disk!
- Sets CPU governor to "performance" mode on game startup and back to default on game exit.
- Fixes "Enter" button on MX3 air mice/keyboard combos for better Kodi support

## Parts Needed:
- Raspberry Pi (3 A+ used here, any composite-capable Pi should be fine)
- SH1106 OLED display (3 button + 1 joystick type)
- (Powered) USB hub (optional for most setups, but a powered hub is absolutely required for proper disk drive support)
- MX3 Air Mouse + Keyboard (optional, nice to have as a Kodi, and this project specifically supports it)
- Controller of your choice (I use a translucent ocean blue PS2 controller connected to a generic USB adapter for nostalgia's sake, but use whatever's best for you!)

## Companion Scripts
- sakuraMarquee - Displays game / media / system data on a 1.3" SH1106 display, as well as allowing the user to properly shut down via KEY3, reboot via KEY2, and adjust display brightness via KEY1.
- sakuraPresence - Discord Rich Presence support (requires sakuraPresence server script!)

## Disk Support (experimental)
Currently, this can run files from disks, but not original game disks (yet). To try it, add the following to /etc/fstab, then insert a disk containing your selected files (ie; a disk with a .CHD file), and select "Launch Disk" from RetroPie menu.

``` /dev/sr0 /mnt/disk auto ro,user,auto,nofail 0 0 ```

## Further improving boot time
Services that can be disabled for optimization:
- nmbd / smbd (for file sharing, if not needed, cuts down ~11s) - ``` sudo systemctl disable nmbd smbd ```
- Bluetooth (if not needed for controllers/speakers, cuts down ~5s) - ``` sudo systemctl disable bluetooth hciuart ```
- triggerhappy (if not using GPIO for inputs, ~5s) - ``` sudo systemctl disable triggerhappy ```

For additional improvements, make sure you also have "Wait for network at boot" disabled in raspi-config, and "Only Parse from Gamelists" enabled in EmulationStation (ONLY if you've already done a full scan on your current library, or you won't see any (new) games!)

## TODO
- Custom boot video built for the system itself
- Custom 480p theme(?) (possibly based off of the Serial Experiments Lain PSX game's menu)
- Make & design a case capable of holding a laptop disk drive for full disk integration
- Design some sort of removable memory card situation (ideally, slim form factor USB sticks, or PS2 memory cards for direct PSX saving, or maybe formatted as a FAT32 drive? Or just use a MemCardPro via USB or something)
- More!

## Credits
- PoocianDoesStuff - PS Prototype startup video
- Sunbird - RetroPie PS-style startup video
- RetroFloppy08 - Disk support scripts
