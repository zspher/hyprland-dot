# Hyprland Dotfiles
personal dotfiles for a hyprland desktop

- **Window Manager** • [hyprland](https://github.com/hyprwm/Hyprland)
- **Shell** • [zsh](https://www.zsh.org) w/ [starship](https://github.com/starship/starship) 
- **Terminal** • [kitty](https://github.com/kovidgoyal/kitty)
- **Panel** • [waybar](https://aur.archlinux.org/packages/waybar-hyprland-git)
- **Notify Daemon** • [swaync](https://github.com/ErikReider/SwayNotificationCenter)
- **Launcher** • [rofi](https://github.com/davatorium/rofi)

## Install
<details>
<summary>install instructions</summary>

- endeavoros was used as the base with no DE selected
- install packages using [install.sh](./install.sh)
```
./install.sh
```

## Misc

### External Monitor Backlight Control
> see [backlight](https://wiki.archlinux.org/title/Backlight#External_monitors)

1. install `ddcutil`
2. add user to `i2c` group (*only if ddcutil <= 1.3*)
3. add `i2c-dev` kernel module (*only if `/dev/i2c-*` are not loaded*)


### Git Config
1. add `username` & `email` to `git/config`
    ```
    [user]
        email = <email>
        name = <username>
    ```

## some issues & their solutions
### can't detect `.local` domain resolution (*avahi*)

1. `systemctl enable --now avahi-daemon.service`
2. change contents of `/etc/nsswitch.conf` *use sudoedit*

```
hosts: mymachines mdns_minimal [NOTFOUND=return] resolve [!UNAVAIL=return] files myhostname dns
```
3. (firewalld) `firewall-cmd --permanent --add-port=5353/udp`

### VM stuck in boot
1. *possible solution* set kernel parameter `ibt=off`

</details>