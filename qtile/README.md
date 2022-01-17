# Qtile

![Qtile](https://i.imgur.com/3pXb6xj.png)

## Installation (Arch based)

Install Qtile and dependencies

```
sudo pacman -S qtile pacman-contrib
yay -S nerd-fonts-ubuntu-mono
yay -S kora-icon-theme
git clone https://github.com/dracula/gtk
sudo pacman -S udiskie cbatticon nitrogen
pip install psutil
```

Clone this repository and copy my configs:

```bash
git clone https://github.com/snapcamel/dotfiles.git
cp -r dotfiles/qtile ~/.config
```

If the network widget doesn't work check ```./settings/widgets.py``` and look
for this line, you should find it inside a list called *primary_widgets*:

```python
# Change interface arg, use ip address to find which one you need
 widget.Net(**base(bg='color3'), interface='wlp2s0'),
```

Once that's done type in your bash ```ip link``` then write your PCI, keep in mind keybindings will not work
unless you have the same programs that I use and the same configs. You can
either change keybindings or install the software I use and my config files,
check out [this section](https://github.com/snapcamel/dotfiles/tree/master/qtile#keybindings)
for instructions.

## Structure

In ```config.py```, which is the file where most people write all their config,
I only have an *autostart* function and some other variables like
*cursor_warp*.

```python
@hook.subscribe.startup_once
def autostart():
    subprocess.call([path.join(qtile_path, 'autostart.sh')])
```

If you want to change *autostart* programs, open  ```./autostart.sh```.

```bash
#!/bin/sh

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
# systray disk
udiskie -t &
# systray
nm-applet &
# nitrogen
nitrogen --restore &
# Keymap
setxkbmap -layout us -variant intl &
```

# Keybindings

These are the keybindings.

## Windows

| Key                          | Action                           |
| -----------------------------| -------------------------------- |
| **mod + Up-Arrow**           | move (up)                        |
| **mod + Down-Arrow**         | move (down)                      |
| **mod + Left-Arrow**         | move (left)                      |
| **mod + Right-Arrow**        | move (right)                     |
| **mod + shift + Left-arrow** | decrease master                  |
| **mod + shift + Right-arrow**| increase master                  |
| **mod + shift + Down-arrow** | move window down                 |
| **mod + shift + Up-arrow**   | move window up                   |
| **mod + shift + f**          | toggle floating                  |
| **ctrl + e**                 | next mode                        |
| **ctrl + q**                 | previus mode                     |
| **mod + [1-9]**              | Switch to workspace N (1-9)      |
| **mod + shift + [1-9]**      | Send Window to workspace N (1-9) |
| **mod + period**             | Focus next monitor               |
| **mod + comma**              | Focus previous monitor           |
| **mod + w**                  | kill window                      |
| **mod + ctrl + r**           | restart wm                       |
| **mod + ctrl + q**           | quit                             |
| **mod + p**                  | shutdown PC                      |
| **mod + i**                  | restart PC                       |
| **mod + t**                  | thunar                           |
| **mod + m**                  | drun                             |
| **mod + r**                  | redshift toggle                  |
| **mod + shift + r**          | redshift disable                 |
| **mod + f**                  | firefox                          |

The following keybindings will only work if you install all programs needed:

```bash
sudo pacman -S rofi thunar firefox alacritty redshift scrot
```

If you want to modify keybindings, open ```./settings/keys.py```. To modify
workspaces, use ```./settings/groups.py```. Finally, if you want to add more
layouts, check ```./settings/layouts.py```, the rest of files don't need any
configuration.
