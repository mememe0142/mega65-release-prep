The files available here are meant to be on the internal SD card for the MEGA65 release.
Important note: The order they are added is important for optimal speed on warm/cold boots etc.

Here is the order in which the files should be copied to a freshly MEGA65-fdisk'ed SD card - make
sure your OS does not write additional crap like System Information:

1. MEGA65.ROM
2. BANNER.M65
3. FREEZER.M65
4. C64THUMB.M65
5. C65THUMB.M65
6. ROMLOAD.M65
7. MONITOR.M65
8. AUDIOMIX.M65
9. MAKEDISK.M65
10. SPRITED.M65
11. MEGA651.ROM
12. MEGA652.ROM
13. MEGA650.ROM
14. MEGA65.D81
15. BASIC65.D81
16. GEOS65.D81
17. ELEVEN.D81
18. C64.D81
19. SOLITAIR.D81
20. DEMOCOMP.D81
21. ONBOARD.M65
22. POPCORN.MOD
23. HEAVY.MOD

No other file should be on the SD card! Again, no deleting and re-adding for release image!

BEFORE CLONING, PLEASE

1. PREPARE CARD AS MENTIONED ABOVE
2. BOOT THIS CARD IN MEGA65
3. ENTER CONFIG/TOOLS MENU (HOLD ALT DURING COLD BOOT)
4. PRESS 1 FOR CONFIG
5. IN "VIDEO" SET MACHINE TO PAL
6. IN "CHIPSET" set DMAGIC REVISION to F018B
7. IN "NETWORK" enter SOME mac address; press F7 to save
8. SAVE AS DEFAULTS AND EXIT (OPTION 4 IN "DONE" MENU)
9. AGAIN ENTER CONFIG/TOOLS MENU (HOLD ALT DURING COLD BOOT)
10. PRESS 1 FOR CONFIG
11. EXIT AND REBOOT TO ONBOARDING (OPTION 3 IN "DONE" MENU)
12. SHUT DOWN COMPUTER IN (VIDEO-)ONBOARDING SCREEN
13. CLONE CARD
___________________________________________________________________________________________

Note:

1. This file (readme.md)
2. gen.py
3. border.s
4. screen.bin.prg
5. corfiles.txt
6. copy-flash.sh
7. sorted-files.txt
8. Makefile

...don't belong on the card!
