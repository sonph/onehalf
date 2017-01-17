# Vim Installation & Usage

![screenshot: vim](../screenshots/vim.png)
NeoVim + Tmux with true colors on iTerm2.

## Installation
### Using a plugin manager (recommended)

Use [Pathogen](http://github.com/tpope/vim-pathogen),
[Vundle](http://github.com/gmarik/vundle),
[Neobundle](http://github.com/Shougo/neobundle.vim) or your favourite Vim
package manager.

To install with Vundle, put

    Plugin 'sonph/onehalf', {'rtp': 'vim/'}

in your `.vimrc`, restart vim then execute `:PluginInstall`. This will install
both the color schemes and vim-airline themes.

### Manual Installation
Download the files in [vim/](./vim/) and put them in their respective folders
(`./vim/colors/` and `./vim/autoload/airline/themes/`)

## Usage
Put `colorscheme <scheme>` and `let g:airline_theme='<theme>'`, if using airline
or `let g:lightline.colorscheme='<theme>'`, if using lightline, in your `.vimrc`
to set the color scheme and airline (or lightline) theme. Make sure you have
syntax highlighting on, and 256 colors set. Vim version >= 7.4 recommended.

For example:

    syntax on
    set t_Co=256
    set cursorline
    colorscheme onehalflight
    let g:airline_theme='onehalfdark'
	" lightline
	" let g:lightline.colorscheme='onehalfdark'


If you want to use true colors in terminal vim like in the screenshots, try
_nvim_ (with `let $NVIM_TUI_ENABLE_TRUE_COLOR=1` or `set termguicolors` option,
depending on your neovim version;
[see here](https://github.com/neovim/neovim/wiki/Following-HEAD) for more
details) and a terminal emulator with true colors support such as _iTerm2_.
For _tmux_ use version 2.2 or newer. You can use
[this script](https://github.com/sonph/dotfiles/blob/master/bin/truecolor.sh)
to test if your terminal/tmux supports true colors or not.

![truecolors](./truecolors.png)

## Troubleshooting/questions
Feel free to [open a new issue](https://github.com/sonph/onehalf/issues/new)
if you have questions or trouble getting it to work.
