# Skyland Modding Setup

Modding the game should be relatively simple!
You'll need python installed. You might also want an installation of lua to run some of the scripts, but it's not strictly necessary.

1) First, run update.sh. This script fetches the latest Skyland.gba script and unpacks it into the current directory.

2) Next, you may edit any of the scripts in the unpacked rom filesystem that you want to change.
Then, run tools/encode_files.py, to pack everything back up into a Skyland.gba rom!