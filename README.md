# hybrid.vim

A dark colourscheme for Vim that combines the:

-   colour palette from [Tomorrow-Night](https://github.com/chriskempson/vim-tomorrow-theme).

-   syntax group highlighting scheme from [jellybeans](https://github.com/nanotech/jellybeans.vim)

-   Vim code from [solarized](https://github.com/altercation/vim-colors-solarized)

## Requirements

This colourscheme is intended for use on:

-   gVim 7.3 for Linux, Mac and Windows.

-   Vim 7.3 for Linux, using a 256 colour enabled terminal.

By default, Vim will use the closest matching cterm equivalent of the RGB
colours.

## Recommendation for terminal vim users

Due to the limited 256 palette, colours in Vim and gVim will still be slightly
different. In order to get the same colours as gVim and use this colourscheme
the way that it was intended, it is highly recommended that you:

1.  Add these colours to ~/.Xresources:

        https://gist.github.com/3278077
        
    ![palette](http://ompldr.org/vZjFmcw/palette.png)

2.  Use Xresources colours by setting in ~/.vimrc:

        let g:hybrid_use_Xresources = 1
        colorscheme hybrid

## Screenshots

![vim-help](http://ompldr.org/vzjbpng/vim3.png)

![vim-bash](http://ompldr.org/vZjBpNA/vim1.png)

![vim-python](http://ompldr.org/vZjBpNQ/vim2.png)

![vim-markdown](http://ompldr.org/vZjExdg/vim4.png)

![vim-diff](http://ompldr.org/vZjExdA/vim5.png)

