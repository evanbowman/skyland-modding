echo Fetching rom...
curl -s https://skylandgame.io/beta/download > Skyland.gba
echo Unpacking rom...
python3 unpack_rom.py
echo "Done! Now you can edit any of the game's scripts, \nand then run compile.sh to rebuild Skyland.gba!"
