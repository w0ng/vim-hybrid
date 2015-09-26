" File:       hybrid.vim
" Maintainer: Andrew Wong (w0ng)
" URL:        https://github.com/w0ng/vim-hybrid
" Modified:   27 Jan 2013 07:33 AM AEST
" License:    MIT

" Description:"{{{
" ----------------------------------------------------------------------------
" The RGB colour palette is taken from Tomorrow-Night.vim:
" https://github.com/chriskempson/vim-tomorrow-theme
"
" The syntax highlighting scheme is taken from jellybeans.vim:
" https://github.com/nanotech/jellybeans.vim
"
" The is code taken from solarized.vim:
" https://github.com/altercation/vim-colors-solarized

"}}}
" Requirements And Recommendations:"{{{
" ----------------------------------------------------------------------------
" This colourscheme is intended for use on:
"   - gVim 7.3 for Linux, Mac and Windows
"   - Vim 7.3 for Linux, using a 256 colour enabled terminal
"
" By default, Vim will use the closest matching cterm equivalent of the RGB
" colours.
"
" However, Due to the limited 256 palette, colours in Vim and gVim will still
" be noticeably different. In order to get a uniform appearance and the way
" that this colourscheme was intended, it is HIGHLY recommended that you:
"
" 1.  Add these colours to ~/.Xresources:
"
"       https://gist.github.com/3278077
"
" 2.  Use Xresources colours by setting in ~/.vimrc:
"
"       let g:hybrid_use_Xresources = 1
"       colorscheme hybrid
"
" For iTerm2 users:
"
" 1.  Install this color preset on your iTerm2:
"
"       https://github.com/w0ng/dotfiles/blob/master/iterm2/hybrid.itermcolors
"
" 2. Use iTerm colours by setting in ~/.vimrc:
"
"       let g:hybrid_use_Xresources = 1
"       colorscheme hybrid
"

"}}}
" Initialisation:"{{{
" ----------------------------------------------------------------------------

if !exists("g:hybrid_use_Xresources")
  let g:hybrid_use_Xresources = 0
endif

hi clear

if exists("syntax_on")
  syntax reset
endif

let s:style = &background

let g:colors_name = "hybrid"

"}}}
" GUI And Cterm Palettes:"{{{
" ----------------------------------------------------------------------------

let s:palette = {'gui' : {} , 'cterm' : {}}

let s:palette.gui.background = { 'dark' : "#1d1f21", 'light' : "#e4e4e4" }
let s:palette.gui.foreground = { 'dark' : "#c5c8c6", 'light' : "#000000" }
let s:palette.gui.selection  = { 'dark' : "#373b41", 'light' : "#bcbcbc" }
let s:palette.gui.line       = { 'dark' : "#282a2e", 'light' : "#d0d0d0" }
let s:palette.gui.comment    = { 'dark' : "#707880", 'light' : "#5f5f5f" }
let s:palette.gui.red        = { 'dark' : "#cc6666", 'light' : "#5f0000" }
let s:palette.gui.orange     = { 'dark' : "#de935f", 'light' : "#875f00" }
let s:palette.gui.yellow     = { 'dark' : "#f0c674", 'light' : "#5f5f00" }
let s:palette.gui.green      = { 'dark' : "#b5bd68", 'light' : "#005f00" }
let s:palette.gui.aqua       = { 'dark' : "#8abeb7", 'light' : "#005f5f" }
let s:palette.gui.blue       = { 'dark' : "#81a2be", 'light' : "#00005f" }
let s:palette.gui.purple     = { 'dark' : "#b294bb", 'light' : "#5f005f" }
let s:palette.gui.window     = { 'dark' : "#303030", 'light' : "#9e9e9e" }
let s:palette.gui.darkcolumn = { 'dark' : "#1c1c1c", 'light' : "#808080" }
let s:palette.gui.addbg      = { 'dark' : "#5F875F", 'light' : "#d7ffd7" }
let s:palette.gui.addfg      = { 'dark' : "#d7ffaf", 'light' : "#005f00" }
let s:palette.gui.changebg   = { 'dark' : "#5F5F87", 'light' : "#d7d7ff" }
let s:palette.gui.changefg   = { 'dark' : "#d7d7ff", 'light' : "#5f005f" }
let s:palette.gui.delbg      = { 'dark' : "#cc6666", 'light' : "#ffd7d7" }
let s:palette.gui.darkblue   = { 'dark' : "#00005f", 'light' : "#d7ffd7" }
let s:palette.gui.darkcyan   = { 'dark' : "#005f5f", 'light' : "#005f00" }
let s:palette.gui.darkred    = { 'dark' : "#5f0000", 'light' : "#d7d7ff" }
let s:palette.gui.darkpurple = { 'dark' : "#5f005f", 'light' : "#5f005f" }

let s:palette.cterm.background = { 'dark' : "234", 'light' : "254" }
let s:palette.cterm.window     = { 'dark' : "236", 'light' : "247" }
let s:palette.cterm.darkcolumn = { 'dark' : "234", 'light' : "244" }
let s:palette.cterm.addbg      = { 'dark' : "65" , 'light' : "194" }
let s:palette.cterm.addfg      = { 'dark' : "193", 'light' : "22"  }
let s:palette.cterm.changebg   = { 'dark' : "60" , 'light' : "189" }
let s:palette.cterm.changefg   = { 'dark' : "189", 'light' : "53"  }
let s:palette.cterm.darkblue   = { 'dark' : "17",  'light' : "194" }
let s:palette.cterm.darkcyan   = { 'dark' : "24",  'light' : "22" }
let s:palette.cterm.darkred    = { 'dark' : "52",  'light' : "189" }
let s:palette.cterm.darkpurple = { 'dark' : "53",  'light' : "53" }

if g:hybrid_use_Xresources == 1
  let s:palette.cterm.foreground = { 'dark' : "15" }  " White
  let s:palette.cterm.selection  = { 'dark' : "8" }   " DarkGrey
  let s:palette.cterm.line       = { 'dark' : "0" }   " Black
  let s:palette.cterm.comment    = { 'dark' : "7" }   " LightGrey
  let s:palette.cterm.red        = { 'dark' : "9" }   " LightRed
  let s:palette.cterm.orange     = { 'dark' : "3" }   " DarkYellow
  let s:palette.cterm.yellow     = { 'dark' : "11" }  " LightYellow
  let s:palette.cterm.green      = { 'dark' : "10" }  " LightGreen
  let s:palette.cterm.aqua       = { 'dark' : "14" }  " LightCyan
  let s:palette.cterm.blue       = { 'dark' : "12" }  " LightBlue
  let s:palette.cterm.purple     = { 'dark' : "13" }  " LightMagenta
  let s:palette.cterm.delbg      = { 'dark' : "9" }   " LightRed
else
  let s:palette.cterm.foreground = { 'dark' : "250" }
  let s:palette.cterm.selection  = { 'dark' : "237" }
  let s:palette.cterm.line       = { 'dark' : "235" }
  let s:palette.cterm.comment    = { 'dark' : "243" }
  let s:palette.cterm.red        = { 'dark' : "167" }
  let s:palette.cterm.orange     = { 'dark' : "173" }
  let s:palette.cterm.yellow     = { 'dark' : "221" }
  let s:palette.cterm.green      = { 'dark' : "143" }
  let s:palette.cterm.aqua       = { 'dark' : "109" }
  let s:palette.cterm.blue       = { 'dark' : "110" }
  let s:palette.cterm.purple     = { 'dark' : "139" }
  let s:palette.cterm.delbg      = { 'dark' : "167" }
endif

let s:palette.cterm.foreground.light = "16"
let s:palette.cterm.selection.light  = "250"
let s:palette.cterm.line.light       = "252"
let s:palette.cterm.comment.light    = "59"
let s:palette.cterm.red.light        = "52"
let s:palette.cterm.orange.light     = "94"
let s:palette.cterm.yellow.light     = "58"
let s:palette.cterm.green.light      = "22"
let s:palette.cterm.aqua.light       = "23"
let s:palette.cterm.blue.light       = "17"
let s:palette.cterm.purple.light     = "53"
let s:palette.cterm.delbg.light      = "224"

"}}}
" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

"}}}
" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------
function! s:build_prim(hi_elem, field)
  " Given a:hi_elem = bg, a:field = comment
  let l:vname = "s:" . a:hi_elem . "_" . a:field " s:bg_comment
  let l:gui_assign = "gui".a:hi_elem."=".s:palette.gui[a:field][s:style] " guibg=...
  let l:cterm_assign = "cterm".a:hi_elem."=".s:palette.cterm[a:field][s:style] " ctermbg=...
  exe "let " . l:vname . " = ' " . l:gui_assign . " " . l:cterm_assign . "'"
endfunction

let s:bg_none = ' guibg=NONE ctermbg=NONE'
call s:build_prim('bg', 'foreground')
call s:build_prim('bg', 'background')
call s:build_prim('bg', 'selection')
call s:build_prim('bg', 'line')
call s:build_prim('bg', 'comment')
call s:build_prim('bg', 'red')
call s:build_prim('bg', 'orange')
call s:build_prim('bg', 'yellow')
call s:build_prim('bg', 'green')
call s:build_prim('bg', 'aqua')
call s:build_prim('bg', 'blue')
call s:build_prim('bg', 'purple')
call s:build_prim('bg', 'window')
call s:build_prim('bg', 'darkcolumn')
call s:build_prim('bg', 'addbg')
call s:build_prim('bg', 'addfg')
call s:build_prim('bg', 'changebg')
call s:build_prim('bg', 'changefg')
call s:build_prim('bg', 'delbg')
call s:build_prim('bg', 'darkblue')
call s:build_prim('bg', 'darkcyan')
call s:build_prim('bg', 'darkred')
call s:build_prim('bg', 'darkpurple')

let s:fg_none = ' guifg=NONE ctermfg=NONE'
call s:build_prim('fg', 'foreground')
call s:build_prim('fg', 'background')
call s:build_prim('fg', 'selection')
call s:build_prim('fg', 'line')
call s:build_prim('fg', 'comment')
call s:build_prim('fg', 'red')
call s:build_prim('fg', 'orange')
call s:build_prim('fg', 'yellow')
call s:build_prim('fg', 'green')
call s:build_prim('fg', 'aqua')
call s:build_prim('fg', 'blue')
call s:build_prim('fg', 'purple')
call s:build_prim('fg', 'window')
call s:build_prim('fg', 'darkcolumn')
call s:build_prim('fg', 'addbg')
call s:build_prim('fg', 'addfg')
call s:build_prim('fg', 'changebg')
call s:build_prim('fg', 'changefg')
call s:build_prim('fg', 'darkblue')
call s:build_prim('fg', 'darkcyan')
call s:build_prim('fg', 'darkred')
call s:build_prim('fg', 'darkpurple')

exe "let s:fmt_none = ' gui=NONE".          " cterm=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb = ' gui=NONE".s:u.s:b.  " cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl = ' gui=NONE".s:c.      " cterm=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital = ' gui=NONE".s:i.      " cterm=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd = ' gui=NONE".s:s.      " cterm=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr = ' gui=NONE".s:r.      " cterm=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb = ' gui=NONE".s:r.s:b.  " cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

exe "let s:sp_none       = ' guisp=".s:none      ."'"
exe "let s:sp_foreground = ' guisp=". s:palette.gui.foreground[s:style] ."'"
exe "let s:sp_background = ' guisp=". s:palette.gui.background[s:style] ."'"
exe "let s:sp_selection  = ' guisp=". s:palette.gui.selection[s:style]  ."'"
exe "let s:sp_line       = ' guisp=". s:palette.gui.line[s:style]       ."'"
exe "let s:sp_comment    = ' guisp=". s:palette.gui.comment[s:style]    ."'"
exe "let s:sp_red        = ' guisp=". s:palette.gui.red[s:style]        ."'"
exe "let s:sp_orange     = ' guisp=". s:palette.gui.orange[s:style]     ."'"
exe "let s:sp_yellow     = ' guisp=". s:palette.gui.yellow[s:style]     ."'"
exe "let s:sp_green      = ' guisp=". s:palette.gui.green[s:style]      ."'"
exe "let s:sp_aqua       = ' guisp=". s:palette.gui.aqua[s:style]       ."'"
exe "let s:sp_blue       = ' guisp=". s:palette.gui.blue[s:style]       ."'"
exe "let s:sp_purple     = ' guisp=". s:palette.gui.purple[s:style]     ."'"
exe "let s:sp_window     = ' guisp=". s:palette.gui.window[s:style]     ."'"
exe "let s:sp_addbg      = ' guisp=". s:palette.gui.addbg[s:style]      ."'"
exe "let s:sp_addfg      = ' guisp=". s:palette.gui.addfg[s:style]      ."'"
exe "let s:sp_changebg   = ' guisp=". s:palette.gui.changebg[s:style]   ."'"
exe "let s:sp_changefg   = ' guisp=". s:palette.gui.changefg[s:style]   ."'"
exe "let s:sp_darkblue   = ' guisp=". s:palette.gui.darkblue[s:style]   ."'"
exe "let s:sp_darkcyan   = ' guisp=". s:palette.gui.darkcyan[s:style]   ."'"
exe "let s:sp_darkred    = ' guisp=". s:palette.gui.darkred[s:style]    ."'"
exe "let s:sp_darkpurple = ' guisp=". s:palette.gui.darkpurple[s:style] ."'"

"}}}
" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
"   Conceal"
"   Cursor"
"   CursorIM"
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_addfg       .s:bg_addbg       .s:fmt_none
exe "hi! DiffChange"    .s:fg_changefg    .s:bg_changebg    .s:fmt_none
exe "hi! DiffDelete"    .s:fg_background  .s:bg_delbg       .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_background  .s:bg_red         .s:fmt_stnd
exe "hi! VertSplit"     .s:fg_window      .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_comment     .s:bg_darkcolumn  .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
exe "hi! SignColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
"   Incsearch"
exe "hi! LineNr"        .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! MatchParen"    .s:fg_background  .s:bg_changebg    .s:fmt_none
exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"      .s:fg_foreground  .s:bg_selection   .s:fmt_revr
"   PmenuSbar"
"   PmenuThumb"
exe "hi! Question"      .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Search"        .s:fg_background  .s:bg_yellow      .s:fmt_none
exe "hi! SpecialKey"    .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! SpellCap"      .s:fg_blue        .s:bg_darkblue    .s:fmt_undr
exe "hi! SpellLocal"    .s:fg_aqua        .s:bg_darkcyan    .s:fmt_undr
exe "hi! SpellBad"      .s:fg_red         .s:bg_darkred     .s:fmt_undr
exe "hi! SpellRare"     .s:fg_purple      .s:bg_darkpurple  .s:fmt_undr
exe "hi! StatusLine"    .s:fg_comment     .s:bg_background  .s:fmt_revr
exe "hi! StatusLineNC"  .s:fg_window      .s:bg_comment     .s:fmt_revr
exe "hi! TabLine"       .s:fg_foreground  .s:bg_darkcolumn  .s:fmt_revr
"   TabLineFill"
"   TabLineSel"
exe "hi! Title"         .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! Visual"        .s:fg_none        .s:bg_selection   .s:fmt_none
"   VisualNos"
exe "hi! WarningMsg"    .s:fg_red         .s:bg_none        .s:fmt_none
hi LongLineWarning  guifg=NONE        guibg=#371F1C     gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
"   WildMenu"

" Use Xresources for background colour
if has('gui_running') || g:hybrid_use_Xresources != 1
  exe "hi! Normal"        .s:fg_foreground  .s:bg_background  .s:fmt_none
else
  exe "hi! Normal"        .s:fg_foreground  .s:bg_none        .s:fmt_none
endif

"}}}
" Generic Syntax Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------
exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none

exe "hi! Constant"        .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
"   Character"
"   Number"
"   Boolean"
"   Float"

exe "hi! Identifier"      .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_yellow      .s:bg_none        .s:fmt_none

exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fmt_none
"   Conditional"
"   Repeat"
"   Label"
exe "hi! Operator"        .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Keyword"
"   Exception"

exe "hi! PreProc"         .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Include"
"   Define"
"   Macro"
"   PreCondit"

exe "hi! Type"            .s:fg_orange      .s:bg_none        .s:fmt_none
"   StorageClass"
exe "hi! Structure"       .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Typedef"

exe "hi! Special"         .s:fg_green       .s:bg_none        .s:fmt_none
"   SpecialChar"
"   Tag"
"   Delimiter"
"   SpecialComment"
"   Debug"
"
exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none

exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none

exe "hi! Error"           .s:fg_red         .s:bg_darkred     .s:fmt_undr

exe "hi! Todo"            .s:fg_addfg       .s:bg_none        .s:fmt_none

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

"}}}
" Diff Syntax Highlighting:"{{{
" ----------------------------------------------------------------------------
" Diff
"   diffOldFile
"   diffNewFile
"   diffFile
"   diffOnly
"   diffIdentical
"   diffDiffer
"   diffBDiffer
"   diffIsA
"   diffNoEOL
"   diffCommon
hi! link diffRemoved Constant
"   diffChanged
hi! link diffAdded Special
"   diffLine
"   diffSubname
"   diffComment

"}}}
"
" This is needed for some reason: {{{

let &background = s:style

" }}}
" Legal:"{{{
" ----------------------------------------------------------------------------
" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2009-2012 NanoTech
" Copyright (c) 2012 w0ng
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

" }}}
