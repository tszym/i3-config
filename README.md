i3 tiling window manager config
===============================

This repo holds the config I am using for [i3](http://i3wm.org).
It is made for a french oss kayboard layout so be careful about the bindings if you get a different layout.
It is always a good idea to customize the bindings to your convenience, specially for special keys, like music control.

# Installation

On [Arch](https://www.archlinux.org), use `# pacman -S i3 dmenu` to install the i3 group of packages and *dmenu* that will be the application launcher.

For specific hardware or particular cases, please see [the Arch Wiki page](https://wiki.archlinux.org/index.php/I3).

For Debian, you can do the same with `# apt-get install i3`.

You should clone this repo at `~/.config/i3`.

## Additional parts

This config uses `unclutter` to hide the X mouse cursor when not needed.
Use `# pacman -S unclutter` or remove this command in the `config` file.

It also uses [Conky](https://wiki.archlinux.org/index.php/Conky) as the status bar.
Use `# pacman -S conky` to install or `# apt-get install conky` if using Debian.

This config uses *ACPI* to get temperature & battery (if laptop) informations. `# pacman -S acpi`

# Terminal

Configuration is provided for [Alacritty](https://wiki.archlinux.org/index.php/Alacritty). You can switch to Urxvt with instructions below and replace de binding in the i3 config file.

You can get a sweet terminal with [rxtv unicode](https://wiki.archlinux.org/index.php/Urxvt).

Just install it: `# pacman -S rxvt-unicode` or with Debian: `# apt-get install rxvt-unicode-256color`.

You will also need to daemonize it. [The Arch wiki page](https://wiki.archlinux.org/index.php/Urxvt) shows how to do it.
If you are using a distro without systemd, you should find a way to daemonize it or change the terminal control to `urxvtcd`.

**Note:** you will need to run the following command each time you log in, in order to get the terminal's theme loaded:

`$ xrdb -merge ~/.config/i3/urxvt/Xresources`

The config file does it for you!

`exec_always xrdb -merge ~/.config/i3/urxvt/Xresources`

# Keyboard controls

This config swaps the CapsLock and Escape keys.
For this to work you need the `xmodmap` command to be avaliable.
You can install it with `# pacman -S xorg-xmodmap`.

To disable this, just comment or remove the line in `config`:

`exec_always xmodmap ~/.config/i3/speedswapper`

# Troubleshooting

## i3 does not appears in the wm list of KDM

Please check your `kdmrc` at `/usr/share/config/kdm/kdmrc` and find the line beginning with `SessionsDirs`. The following paths should be here:

`SessionsDirs=/usr/share/config/kdm/sessions,/usr/share/apps/kdm/sessions,/usr/share/xsessions,/etc/X11/sessions`

You should have a `i3.desktop` file in one of these locations.
