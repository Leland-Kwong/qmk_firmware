qmk compile
cp ../massdrop_alt_leland-kwong.bin ./massdrop_alt_md_configurator.bin
./mdloader_windows.exe --first --download massdrop_alt_md_configurator.bin --restart
