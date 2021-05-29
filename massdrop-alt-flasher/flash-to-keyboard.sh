#!/bin/bash

if ! command -v qmk &> /dev/null; then
    echo -e "\033[0;31mqmk needs to be setup. Please follow instructions at https://docs.qmk.fm/#/newbs_getting_started"
else
    qmk compile
    cp ../massdrop_alt_leland-kwong.bin ./massdrop_alt_md_configurator.bin
    # https://github.com/Massdrop/mdloader
    ./mdloader_windows.exe --first --download massdrop_alt_md_configurator.bin --restart
fi
