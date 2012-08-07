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

## Recommendations for terminal vim users

Due to the limited 256 palette, colours in Vim and gVim will still be slightly
different. In order to get the same colours as gVim and use this colourscheme
the way that it was intended, it is HIGHLY recommended that you:

1.  Add these colours to ~/.Xresources:

        https://gist.github.com/3278077

2.  Use Xresources colours by setting in ~/.vimrc:

        let g:hybrid_use_Xresources = 1
        colorscheme hybrid

## Screenshots

![shot-help](http://ompldr.org/vZjBpNg/vim3.png)

![shot-bash](http://ompldr.org/vZjBpNA/vim1.png)

![shot-python](http://ompldr.org/vZjBpNQ/vim2.png)

![shot-markdown](http://ompldr.org/vZjBpNw/vim4.png)
