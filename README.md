A script for resizing images and videos and a service file that adds an option to use it from Dolphin and Plasma.

The service provides 3 default size options: 10mb, 4mb, 2mb and an option to set you own target size with kdialog.

Dependencies:
- bash
- kdialog
- ffmpeg
- imagemagick

You can install both the script and the service with the provided `install.sh` script, `uninstall.sh` uninstalls them.

For manual installation:
- resize                  goes in ~/.local/bin/ (or other folder in your PATH)
- compress-media.desktop  goes in ~/.local/share/kio/servicemenus/
