# XFCE4-Terminal Colorscheme

## Manual Installation

1. Download theme files:
    ```
    wget https://raw.githubusercontent.com/sonph/onehalf/master/xfce4-terminal/OneHalfDark.theme
    wget https://raw.githubusercontent.com/sonph/onehalf/master/xfce4-terminal/OneHalfLight.theme
    ```

    or just clone the repository:
    ```
    git clone https://github.com/sonph/onehalf
    cd onehalf/xfce4-terminal
    ```

2. Create XFCE4 colorschemes directory in your home directory (if it does not exist already)
    ```
    mkdir --parents --verbose ~/.local/share/xfce4/terminal/colorschemes
    ```

3. Copy theme files to the XFCE4 colorschemes directory
    ```
    cp --interactive --verbose OneHalfDark.theme ~/.local/share/xfce4/terminal/colorschemes/
    cp --interactive --verbose OneHalfLight.theme ~/.local/share/xfce4/terminal/colorschemes/
    ```

4. Open XFCE4-Terminal and select Preferences -> Colors -> One Half (dark) / One Half (light)
