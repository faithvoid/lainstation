#!/bin/bash

rom="$1"

if [ "${1: -4}" == ".chd" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ psx "$1"
elif [ "${1: -4}" == ".bin" ] || [ "${1: -3}" == ".md" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ megadrive "$1"
elif [ "${1: -4}" == ".nes" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ nes "$1"
elif [ "${1: -4}" == ".smc" ] || [ "${1: -4}" == ".sfc" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ snes "$1"
elif [ "${1: -4}" == ".z64" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ n64 "$1"
elif [ "${1: -4}" == ".gba" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ gba "$1"
elif [ "${1: -4}" == ".zip" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ mame-libretro "$1"
elif [ "${1: -3}" == ".gb" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ gb "$1"
elif [ "${1: -4}" == ".gbc" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ gbc "$1"
elif [ "${1: -4}" == ".fds" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ fds "$1"
elif [ "${1: -4}" == ".nds" ]
then
/opt/retropie/supplementary/runcommand/runcommand.sh 0 _SYS_ nds "$1"
fi
