# Buildroot for wifibroadcast

## Building
To build buildroot for wifibroadcast, do the following:
0) sudo apt-get install build-essential mercurial git
1) select one of the following commands based on the raspi you want to use:
1a) 'make raspberrypi_defconfig' (recommended for testing and as tx)
1b) 'make raspberrypi0_defconfig' (recommended as tx)
1c) 'make raspberrypi2_defconfig' (recommended as rx)
1d) 'make raspberrypi3_defconfig' (recommended as rx)
3) run 'make'
4) wait while it compiles
5) find the image in output/images

Current Status
- Uses RamFS -> it is possible to remove the sdcard after boot, prevents freeze in flight because of accidentally ejected sd card
- wbc is compiled and built in with latest version
- raspivid + hello_video.bin (modified for wbc) is built in

TODO
- befis frsky OSD
- rangarids multi protocoll OSD
- start scripts for automated usage
- config files to configure channels and so on

------

Buildroot is a simple, efficient and easy-to-use tool to generate embedded
Linux systems through cross-compilation.

The documentation can be found in docs/manual. You can generate a text
document with 'make manual-text' and read output/docs/manual/manual.text.
Online documentation can be found at http://buildroot.org/docs.html

To build and use the buildroot stuff, do the following:

1) run 'make menuconfig'
2) select the target architecture and the packages you wish to compile
3) run 'make'
4) wait while it compiles
5) find the kernel, bootloader, root filesystem, etc. in output/images

You do not need to be root to build or run buildroot.  Have fun!

Buildroot comes with a basic configuration for a number of boards. Run
'make list-defconfigs' to view the list of provided configurations.

Please feed suggestions, bug reports, insults, and bribes back to the
buildroot mailing list: buildroot@buildroot.org
You can also find us on #buildroot on Freenode IRC.

If you would like to contribute patches, please read
https://buildroot.org/manual.html#submitting-patches
