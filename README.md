# Apple2-IO-RPi
Apple II expansion card using a Raspberry Pi for I/O

![Image of Board](/Hardware/Apple2IORPi.jpg)

## Purpose
The purpose of this project is to provide I/O for an Apple II series 8 bit computer via a Raspberry Pi Zero W which is powered by the Apple II expansion bus. This includes using the attached RPi Zero W for it's storage, network and processor to provide new functionality for the Apple II.

## Features
1. Boot message which waits for RPi to be ready
2. ProDOS bootable drive from image stored on RPi
3. Execute Linux bash shell on the RPi from the Apple II
4. Load binary files directly from the RPi to the II
5. Update Apple II firmware in place from image on RPi
6. Supports two drive images at the same time (Note: backward compatible with previous firmware but requires firmware update in order to work with two drives)
7. Supports "RPI" command from BASIC to execute Linux commands from the command prompt or inside BASIC programs: `10 PRINT CHR$(4);"RPI ls -al /"`

## Project Status
So far, this is a project and not a finished product. The current prototype is on the fifth revision and a few have been assembled and tested. It is now possible for the Apple II to boot from and write to a virutal hard drive image stored on the RPi in any slot and run a bash shell on the RPi via the Apple II. The code has very few tests and is incomplete. Note that currently the firmware assumes an 80 column card is in slot 3 and than you have lowercase support. If you have a problem or idea for enhancement, log an issue [here](https://github.com/tjboldt/Apple2-IO-RPi/issues). I recommend starring/watching the project for updates on GitHub. You are welcome to fork the project and submit pull requests which I will review.

## Roadmap
1. Extend BASIC.SYSTEM commands
    1. RPI - Execute a single Linux command (DONE)
    2. SH - Open a Linux shell
    3. WGET - Download and save to file 
2. Shell improvements
3. Proper ProDOS clock driver (currently just directly sets values on block reads)
4. Bi-directional image conversion between common formats and HIRES
5. Remote code execution 
6. Proxy VNC connection, rendering as Apple II compatible graphics

## Setup
[Setup card from scratch](https://github.com/tjboldt/Apple2-IO-RPi/discussions/63)

[Setup if you received a complete board from me](https://github.com/tjboldt/Apple2-IO-RPi/discussions/64)

[Update to latest](https://github.com/tjboldt/Apple2-IO-RPi/discussions/65)

[Additional steps to upgrade Golang and use new command line parameters for the service (if you had set up before October 11, 2021)](https://github.com/tjboldt/Apple2-IO-RPi/discussions/66)

## Similar Project
If you prefer having Apple II peripherals control a Raspberry Pi rather than simply using the Raspberry Pi to provide storage, network access and processing to the Apple II, have a look at David Schmenk's excellent [Apple2Pi](https://github.com/dschmenk/apple2pi) project. I am often asked about differences between these two projects. They are similar in some ways but essentially opposite. The Apple2Pi is meant for the primary machine to be the RPi, using the Apple II for it's peripherals. The Apple2-IO-RPi is meant to have the Apple II as the primary machine and just use the RPi for its processing, storage and network.
