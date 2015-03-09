# hybrid.vim

A dark colourscheme for Vim that combines the:

-   colour palette from [Tomorrow-Night](https://github.com/chriskempson/vim-tomorrow-theme).

-   syntax group highlighting scheme from [Jellybeans](https://github.com/nanotech/jellybeans.vim)

-   Vimscript from [Solarized](https://github.com/altercation/vim-colors-solarized)

## Requirements

This colourscheme is intended for use on:

-   gVim 7.3 for Linux, Mac and Windows.

-   Vim 7.3 for Linux and Mac, using a 256 colour enabled terminal.

By default, Vim will use the closest matching cterm equivalent of the RGB
colours.

## Installation

To install this theme, manually copy colors/hybrid.vim to:

    ~/.vim/colors/hybrid.vim

or instead, consider using a Vim plugin manger such as
[NeoBundle](https://github.com/Shougo/neobundle.vim),
[Vundle](https://github.com/gmarik/Vundle.vim), or
[Pathogen](https://github.com/tpope/vim-pathogen).

To load this theme in Vim:

    :colorscheme hybrid

## Recommended terminal colours

Due to the limited 256 palette, colours in Vim and gVim will still be slightly
different.

In order to get the same colours as gVim and use this colourscheme
the way that it was intended, change the basic 16 colours in your terminal.

### Linux users (rxvt-unicode, xterm)

1.  Add these colours to ~/.Xresources:

        https://gist.github.com/3278077

    ![palette](http://dl.dropbox.com/u/23813887/Xresources-palette.png)

2.  Use Xresources colours by setting in ~/.vimrc:

        let g:hybrid_use_Xresources = 1
        colorscheme hybrid

### OSX users (iTerm2)

1.  Import this color preset:

        https://github.com/w0ng/dotfiles/blob/master/iterm2/hybrid.itermcolors

    ![iterm_palette](http://i.imgur.com/wSWCyen.png)

2. Use iTerm colours by setting in ~/.vimrc:

        let g:hybrid_use_Xresources = 1
        colorscheme hybrid

## Screenshots

Help

![vim-help](http://dl.dropbox.com/u/23813887/vim-help.png)

Python

![vim-python](http://dl.dropbox.com/u/23813887/vim-python.png)

Markdown

![vim-markdown](http://dl.dropbox.com/u/23813887/vim-markdown.png)

Diff

![vim-diff](http://dl.dropbox.com/u/23813887/vim-diff.png)

Spell check

![vim-spell](https://dl.dropboxusercontent.com/u/23813887/vim-spell.png)
