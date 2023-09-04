## Replace snes9x core with mesen-s

This script is used to replace snes9x core with mesen-s,
since the later is more accurate and it still works quite good with RPi4.

## Instructions

Copy the whole directory inside your roms/scripts directory,
so that you have a structure like this:

    /media/usb1/roms/scripts
    └── mesen-s
        ├── opt
        │   └── retroarch
        │       └── cores
        │           ├── mesen-s_libretro.info
        │           └── mesen-s_libretro.so
        ├── mesen-s_install.sh
        ├── mesen-s_status.sh
        ├── mesen-s_uninstall.sh
        └── README.md

Now you just need to Scan Games and launch `mesen-s_install.sh` (to install it),
`mesen-s_uninstall.sh` (to uninstall it) or `mesen-s_status.sh`
(to see if it's currently installed or not) from `Scripts` / `mesen-s`,
if you use `Navigation` -> `Folders`, or, `Scripts` directly,
if you use `Navigation` -> `Plain List`.

## Note
`mesen-s_libretro.info` and `mesen-s_libretro.so` are copied
(without any modification) from `Lakka-RPi4.aarch64-4.3.img`.
