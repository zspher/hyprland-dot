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

### External Monitor Control
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

### Hyprland Wrapper
> see [wrapper](https://wiki.hyprland.org/Getting-Started/Quick-start/#wrapping-the-launcher-recommended)

To launch hyprland via wrapper `~/.local/bin/wrappedhl` 

1. add the ff. file for adding `~/.local/bin` to path

    `/etc/profile.d/home-local-bin.sh`
    ```sh
    case ":${PATH}:" in
      *:"$HOME/.local/bin":*) ;;
      *) export PATH="$HOME/.local/bin:$PATH" ;;
    esac
    ```

2. add the ff. file

    `/usr/share/wayland-sessions`
    ```ini
    [Desktop Entry]
    Name=Hyprland Wrapper
    Comment=An intelligent dynamic tiling Wayland compositor
    Exec=wrappedhl
    Type=Application
    ```
3. choose `Hyprland Wrapper` in your login manager