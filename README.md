# Hyprland Dotfiles
personal dotfiles for a hyprland desktop

*yes very fun learning new WM (even tho you've only used DEs defore)*

## Install

- endeavoros was used as the base with no DE selected
- install packages using [install.sh](./install.sh)

### QT theme
change the contents of `/etc/environment` and add
```
QT_QPA_PLATFORMTHEME=qt5ct
```

### External Monitor Backlight Control
> see [backlight](https://wiki.archlinux.org/title/Backlight#External_monitors)

1. install `ddcutil`
2. add user to `i2c` group (*only if ddcutil <= 1.3*)
3. add `i2c-dev` kernel module (*only if `/dev/i2c-*` are not loaded*)

### Global Cursor Theme
to have a unified cursor theme before and after login change 

`/usr/share/icons/default`
```ini
[Icon Theme]
Inherits=<cursor theme>
```

### Git Config
1. add `username` & `email` to `git/config`
    ```
    [user]
        email = <email>
        name = <username>
    ```