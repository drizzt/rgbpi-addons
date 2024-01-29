## Enable/disable root access (with sudo) easily

This scripts below deliver the following options
1. give the pi user root access (using sudo).
2. modify the root users password

## Instructions

Copy the whole directory inside your roms/scripts directory,
so that you have a structure like this:

    /media/usb1/roms/scripts
    └── root
        ├── root_disable.sh
        ├── root_enable.sh
        ├── root_status.sh
        ├── root_change_pw.sh
        └── README.md

Now you just need to Scan Games and launch `root_enable.sh` (to enable pi user root access),
`root_disable.sh` (to disable pi user root access)  or `root_status.sh`
Modify root_change_pw.sh XXX to a password of your choice. This will change the root user password
(to see if root is currently enabled or not) from `Scripts` / `root`,
if you use `Navigation` -> `Folders`, or, `Scripts` directly,
if you use `Navigation` -> `Plain List`.
