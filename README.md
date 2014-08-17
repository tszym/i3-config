i3 tiling window manager config
===============================

This repo holds the config I am using for [i3](http://i3wm.org).
It is made for a french oss kayboard layout so be careful about the bindings if you get a different layout.
It is always a good idea to customize the bindings to your convenience, specially for special keys, like music control.

# Installation

On [Arch](https://www.archlinux.org), use `pacman -S i3 dmenu` to install the i3 group of packages and *dmenu* that will be the application launcher.

For specific hardware or particular cases, please see [the Arch Wiki page](https://wiki.archlinux.org/index.php/I3).

You should clone this repo at `~/.i3`.

## Additional parts

This config uses `unclutter` to hide the X mouse cursor when not needed.
Use `pacman -S unclutter` or remove this command in the `config` file.

It also uses [Conky](https://wiki.archlinux.org/index.php/Conky) as the status bar.
Use `pacman -S conky` to install.

# Terminal

You can get a sweet terminal with [rxtv unicode](https://wiki.archlinux.org/index.php/Urxvt).

Just install it: `pacman -S rxvt-unicode`

**Note:** you will need to run the following command each time you log in, in order to get the terminal's theme loaded:

`$ xrdb -merge ~/.i3/urxvt/Xresources`

The config file does it for you!

`exec_always xrdb -merge ~/.i3/urxvt/Xresources`

# Troubleshooting

## i3 does not appears in the wm list of KDM

Please check your `kdmrc` at `/usr/share/config/kdm/kdmrc` and find the line beginning with `SessionsDirs`. The following paths should be here:

`SessionsDirs=/usr/share/config/kdm/sessions,/usr/share/apps/kdm/sessions,/usr/share/xsessions,/etc/X11/sessions`

You should have a `i3.desktop` file in one of these locations.
