# My Dotfiles & Config
![Screenshot of my desktop](https://i.imgur.com/3pXb6xj.png)
## Installation

**Warning:** 
If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk.

I'll be uploading stuff of my others configs like alacritty so keep your eyes open im working on it.

## Clone this repository

```bash
git clone https://github.com/snapcamel/dotfiles.git
```
## Install an AUR package manager (yay)
```bash
https://github.com/Jguer/yay
```
## Unlock [multilib] support
```bash
Enable multilib in the pacman config by uncommenting these two lines in pacman.conf

vim /etc/pacman.conf

[multilib]
Include = /etc/pacman.d/mirrorlist

Then upgrade your system

sudo pacman -Syu
```

## Index

- [Qtile](./qtile)

## Author
**Felix Sanchez** ![@snapcamel]((http://twitter.com/snapcamel "Follow me on twitter")

## Credits
**Qtile:** The qtile folder is a modified and more user friendly version from https://github.com/antoniosarosi go check his job.
