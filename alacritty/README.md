# Alacritty

[Alacritty](https://github.com/jwilm/alacritty) is a cross-platform,
GPU-accelerated terminal emulator.

Alacritty's config file is a YAML formatted file in either one of these paths:

  1. `$XDG_CONFIG_HOME/alacritty/alacritty.yml`
  2. `$XDG_CONFIG_HOME/alacritty.yml`
  3. `$HOME/.config/alacritty/alacritty.yml`
  4. `$HOME/.alacritty.yml`

(`$XDG_CONFIG_HOME` often defaults to `$HOME/.config` on most systems)

Simply open up your current config file (or make a copy of the sample one from
the project's repo), comment out the current colors and add the following code:

```
# Colors (One Half Light)
colors:
  primary:
    background: '0xfafafa'
    foreground: '0x383a42'

  normal:
    black: '0x383a42'
    red: '0xe45649'
    green: '0x50a14f'
    yellow: '0xc18401'
    blue: '0x0184bc'
    magenta: '0xa626a4'
    cyan: '0x0997b3'
    white: '0xfafafa'

  bright:
    black: '0x383a42'
    red: '0xe45649'
    green: '0x50a14f'
    yellow: '0xc18401'
    blue: '0x0184bc'
    magenta: '0xa626a4'
    cyan: '0x0997b3'
    white: '0xfafafa'
```

and/or

```
# Colors (One Half Dark)
colors:
  primary:
    background: '0x282c34'
    foreground: '0xdcdfe4'

  normal:
    black: '0x282c34'
    red: '0xe06c75'
    green: '0x98c379'
    yellow: '0xe5c07b'
    blue: '0x61afef'
    magenta: '0xc678dd'
    cyan: '0x56b6c2'
    white: '0xdcdfe4'

  bright:
    black: '0x282c34'
    red: '0xe06c75'
    green: '0x98c379'
    yellow: '0xe5c07b'
    blue: '0x61afef'
    magenta: '0xc678dd'
    cyan: '0x56b6c2'
    white: '0xdcdfe4'
```

then restart alacritty.
