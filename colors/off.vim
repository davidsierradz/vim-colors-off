" Name:       off.vim
" Version:    0.2
" Current Maintainer: github.com/davidsierradz
" Former Maintainer: github.com/pbrisbin
" License:    The MIT License (MIT)
"
" A colorscheme meant to look like a more pleasant version of syntax off.
" Structure and what little color there is is taken from pencil.vim
"
" https://github.com/reedes/vim-colors-pencil
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='off'

let s:black           = { "gui": "#282828", "cterm": "0"   }
let s:medium_gray     = { "gui": "#767676", "cterm": "243" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#f2e5bc", "cterm": "231" }
let s:light_black     = { "gui": "#424242", "cterm": "8"   }
let s:lighter_black   = { "gui": "#545454", "cterm": "240" }
let s:subtle_black    = { "gui": "#303030", "cterm": "236" }
let s:light_gray      = { "gui": "#B2B2B2", "cterm": "249" }
let s:lighter_gray    = { "gui": "#C6C6C6", "cterm": "251" }
let s:pink            = { "gui": "#fb007a", "cterm": "9"   }
let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
let s:light_red       = { "gui": "#E32791", "cterm": "1"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }
let s:darker_blue     = { "gui": "#005F87", "cterm": "18"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#b6d6fd", "cterm": "153" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:dark_purple     = { "gui": "#523C79", "cterm": "5"   }
let s:light_purple    = { "gui": "#6855DE", "cterm": "13"  }
let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }
let s:black_comment   = { "gui": "#333333", "cterm": "249" }
let s:ligh_comment    = { "gui": "#CCCCCC", "cterm": "251" }

let s:gb_faded_green   = { "gui": "#79740e", "cterm": "100" }
let s:gb_faded_aqua    = { "gui": "#427b58", "cterm": "65"  }
let s:gb_faded_red     = { "gui": "#9d0006", "cterm": "88"  }
let s:gb_faded_yellow  = { "gui": "#b57614", "cterm": "136" }
let s:gb_faded_orange  = { "gui": "#af3a03", "cterm": "130" }
let s:gb_faded_blue    = { "gui": "#076678", "cterm": "24"  }

let s:gb_bright_green  = { "gui": "#b8bb26", "cterm": "142" }
let s:gb_bright_aqua   = { "gui": "#8ec07c", "cterm": "108" }
let s:gb_bright_red    = { "gui": "#fb4934", "cterm": "167" }
let s:gb_bright_yellow = { "gui": "#fabd2f", "cterm": "214" }
let s:gb_bright_orange = { "gui": "#fe8019", "cterm": "208" }
let s:gb_bright_blue   = { "gui": "#83a598", "cterm": "109" }

if &background == "dark"
  let s:bg              = s:black
  let s:bg_subtle       = s:light_black
  let s:bg_very_subtle  = s:subtle_black
  let s:norm            = s:lighter_gray
  let s:norm_subtle     = s:light_gray
  let s:norm_diff       = s:light_black
  let s:purple          = s:light_purple
  let s:cyan            = s:light_cyan
  let s:green           = s:light_green
  let s:red             = s:light_red
  let s:visual          = s:lighter_black
  let s:comment         = s:black_comment
  let s:selection       = s:dark_yellow
  let s:selection_fg    = s:black
  let s:gb_green        = s:gb_bright_green
  let s:gb_aqua         = s:gb_bright_aqua
  let s:gb_red          = s:gb_bright_red
  let s:gb_yellow       = s:gb_bright_yellow
  let s:gb_orange       = s:gb_bright_orange
  let s:gb_blue         = s:gb_bright_blue
else
  let s:bg              = s:actual_white
  let s:bg_subtle       = s:light_gray
  let s:bg_very_subtle  = s:lighter_gray
  let s:norm            = s:light_black
  let s:norm_subtle     = s:lighter_black
  let s:norm_diff       = s:light_black
  let s:purple          = s:dark_purple
  let s:cyan            = s:dark_cyan
  let s:green           = s:dark_green
  let s:red             = s:dark_red
  let s:visual          = s:light_blue
  let s:comment         = s:ligh_comment
  let s:selection       = s:yellow
  let s:selection_fg    = s:light_black
  let s:gb_green        = s:gb_faded_green
  let s:gb_aqua         = s:gb_faded_aqua
  let s:gb_red          = s:gb_faded_red
  let s:gb_yellow       = s:gb_faded_yellow
  let s:gb_orange       = s:gb_faded_orange
  let s:gb_blue         = s:gb_faded_blue
endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})
call s:h("Cursor",        {"bg": s:blue, "fg": s:norm })
call s:h("String",        {"bg": s:bg, "fg": s:dark_blue})
call s:h("Comment",       {"fg": s:comment, "gui": "italic"})

hi! link Constant         Normal
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant

hi! link Identifier       Normal
hi! link Function         Identifier

hi! link Statement        Normal
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement
hi! link Keyword          Statement
hi! link Exception        Statement

hi! link PreProc          Normal
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

hi! link Type             Normal
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type
hi! link vimCommentTitle  Comment

hi! link Special          Normal
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Normal
hi! link SpecialComment   Special
hi! link Debug            Special

hi! link jsxCloseString   Normal
hi! link jsBooleanTrue    String
hi! link jsBooleanFalse   String
hi! link jsNumber         String
hi! link jsFloat          String
hi! link jsNull           String
hi! link jsUndefined      String
hi! link jsNan            String
hi! link jsBuiltinValues  String

hi! link VertSplit        Normal
hi! link StatusLine       Normal
hi! link StatusLineNC     Comment

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:actual_white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:actual_white, "bg": s:pink, "gui": "bold", "cterm": "bold"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:dark_blue})
call s:h("ErrorMsg",      {"fg": s:pink})
call s:h("IncSearch",     {"bg": s:selection, "fg": s:selection_fg, "gui": "bold"})
call s:h("Search",        {"bg": s:selection, "fg": s:selection_fg})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:blue})
call s:h("Question",      {"fg": s:red})
call s:h("Title",         {"fg": s:dark_blue})
call s:h("Visual",        {"bg": s:visual, "fg": s:selection_fg})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:red})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:medium_gray})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:norm_diff, "bg": s:gb_green})
call s:h("DiffDelete",    {"fg": s:norm_diff, "bg": s:gb_red})
call s:h("DiffChange",    {})
call s:h("DiffText",      {"fg": s:norm_diff, "bg": s:gb_yellow})
call s:h("SignColumn",    {"fg": s:light_green, "gui": "bold"})

call s:h("SpellBad",      {"gui": "underline", "sp": s:red})
call s:h("SpellCap",      {"gui": "underline", "sp": s:light_green})
call s:h("SpellRare",     {"gui": "underline", "sp": s:pink})
call s:h("SpellLocal",    {"gui": "underline", "sp": s:dark_green})

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:blue})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",    {"fg": s:blue, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
call s:h("CursorLine",    {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:medium_gray})

call s:h("htmlH1",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:norm})

call s:h("diffAdded",     {"fg": s:gb_green})
call s:h("diffRemoved",   {"fg": s:gb_red})
call s:h("diffChanged",   {"fg": s:gb_aqua})
call s:h("diffFile",      {"fg": s:gb_orange})
call s:h("diffNewFile",   {"fg": s:gb_yellow})
call s:h("diffLine",      {"fg": s:gb_blue})

if has('nvim')
  if &background == "dark"
    " dark0 + gray
    let g:terminal_color_0 = s:black
    let g:terminal_color_8 = s:white

    " neurtral_red + bright_red
    let g:terminal_color_1 = "#cc241d"
    let g:terminal_color_9 = "#fb4934"

    " neutral_green + bright_green
    let g:terminal_color_2 = "#98971a"
    let g:terminal_color_10 = "#b8bb26"

    " neutral_yellow + bright_yellow
    let g:terminal_color_3 = "#d79921"
    let g:terminal_color_11 = "#fabd2d"

    " neutral_blue + bright_blue
    let g:terminal_color_4 = "#458588"
    let g:terminal_color_12 = "#83a598"

    " neutral_purple + bright_purple
    let g:terminal_color_5 = "#b16286"
    let g:terminal_color_13 = "#d3869b"

    " neutral_aqua + faded_aqua
    let g:terminal_color_6 = "#689d6a"
    let g:terminal_color_14 = "#8ec07c"

    " light4 + light1
    let g:terminal_color_7 = "#a89984"
    let g:terminal_color_15 = "#928374"
  else
    " dark0 + gray
    let g:terminal_color_0 = s:white
    let g:terminal_color_8 = s:black

    " neurtral_red + bright_red
    let g:terminal_color_1 = "#cc241d"
    let g:terminal_color_9 = "#9d0006"

    " neutral_green + bright_green
    let g:terminal_color_2 = "#98971a"
    let g:terminal_color_10 = "#79740e"

    " neutral_yellow + bright_yellow
    let g:terminal_color_3 = "#d79921"
    let g:terminal_color_11 = "#b57614"

    " neutral_blue + bright_blue
    let g:terminal_color_4 = "#458588"
    let g:terminal_color_12 = "#076678"

    " neutral_purple + bright_purple
    let g:terminal_color_5 = "#b16286"
    let g:terminal_color_13 = "#8f3f71"

    " neutral_aqua + faded_aqua
    let g:terminal_color_6 = "#689d6a"
    let g:terminal_color_14 = "#427b58"

    " light4 + light1
    let g:terminal_color_7 = "#7c6f64"
    let g:terminal_color_15 = "#928374"
  endif
endif
