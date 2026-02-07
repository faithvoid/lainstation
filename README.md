# LainStation
PSX-style RetroPie console, designed around the Raspberry Pi 3 A+ and a 1.3" SH1106 OLED display, and set up specifically for 480p/240p composite input.

## What this does so far
- Helps the user set up their RetroPie installation for composite output, and to boot in 480p and automatically switch to 240p for supported systems.
- Shortens RetroPie boot time as much as possible (excluding boot video)
- Adds Playstation-style "RetroPie" boot video on startup
- Helps the user set up a Playstation-style theme
- Hides terminal text that may show up in the background to make the system feel more "official"
- Adds a "Kodi" option on the ES home menu, as well as the 480p Confluence skin for the best possible 480p experience.
- Adds a "Disk" option in the home menu that allows you to mount and launch games directly from a burnt disk!

## Disk Support (experimental)
Currently, this can run files from disks, but not original game disks (yet). To try it, add the following to /etc/fstab, then insert a disk containing your selected files (ie; a disk with a .CHD file), and select "Launch Disk" from RetroPie menu.

``` /dev/sr0 /mnt/disk auto ro,user,auto,nofail 0 0 ```

## TODO
- Make & design a case capable of holding a laptop disc drive
- More!

## Credits
PoocianDoesStuff - PS Prototype startup video

Sunbird - RetroPie PS-style startup video
