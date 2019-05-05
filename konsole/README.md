# Konsole Installation & Usage


## Installation
1. Get the install scripts either by cloning the repository
    ```
    git clone https://github.com/sonph/onehalf
    ```
or just download the files.
    ```
    wget https://raw.githubusercontent.com/sonph/onehalf/master/konsole/onehalf-dark.colorscheme
    wget https://raw.githubusercontent.com/sonph/onehalf/master/konsole/onehalf-light.colorscheme
    ```

2. Copy or symlink the files to `~/.local/share/konsole`
    ```
    # If you cloned the repo
    ln -s /path/to/onehalf/konsole/onehalf-*.colorscheme ~/.local/share/konsole

    # If you wget'ed the files
    ln -s /path/to/onehalf-*.colorscheme ~/.local/share/konsole
    ```

3. Close & reopen Konsole and configure the scheme in *Appearance, Color Schemes & Background*


## Troubleshooting/questions
Feel free to [open a new issue](https://github.com/sonph/onehalf/issues/new)
if you have questions or trouble getting it to work.
