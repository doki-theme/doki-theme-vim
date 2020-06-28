" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'hatsune_miku'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:hatsune_miku#palette.fg

let s:bglighter = g:hatsune_miku#palette.bglighter
let s:bglight   = g:hatsune_miku#palette.bglight
let s:bg        = g:hatsune_miku#palette.bg
let s:bgdark    = g:hatsune_miku#palette.bgdark
let s:bgdarker  = g:hatsune_miku#palette.bgdarker

let s:comment   = g:hatsune_miku#palette.comment
let s:selection = g:hatsune_miku#palette.selection
let s:subtle    = g:hatsune_miku#palette.subtle

let s:key_color      = g:hatsune_miku#palette.key_color
let s:class_name     = g:hatsune_miku#palette.class_name
let s:parameter_color    = g:hatsune_miku#palette.parameter_color
let s:keyword_color      = g:hatsune_miku#palette.keyword_color
let s:constants_color    = g:hatsune_miku#palette.constants_color
let s:red       = g:hatsune_miku#palette.red
let s:string_color    = g:hatsune_miku#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:hatsune_miku#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:hatsune_miku#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:hatsune_miku_bold')
  let g:hatsune_miku_bold = 1
endif

if !exists('g:hatsune_miku_italic')
  let g:hatsune_miku_italic = 1
endif

if !exists('g:hatsune_miku_underline')
  let g:hatsune_miku_underline = 1
endif

if !exists('g:hatsune_miku_undercurl') && g:hatsune_miku_underline != 0
  let g:hatsune_miku_undercurl = 1
endif

if !exists('g:hatsune_miku_inverse')
  let g:hatsune_miku_inverse = 1
endif

if !exists('g:hatsune_miku_colorterm')
  let g:hatsune_miku_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:hatsune_miku_bold == 1 ? 'bold' : 0,
      \ 'italic': g:hatsune_miku_italic == 1 ? 'italic' : 0,
      \ 'underline': g:hatsune_miku_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:hatsune_miku_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:hatsune_miku_inverse == 1 ? 'inverse' : 0,
      \}

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  let l:special = get(a:, 3, ['NONE', 'NONE'])
  if l:special[0] !=# 'NONE' && l:fg[0] ==# 'NONE' && !has('gui_running')
    let l:fg[0] = l:special[0]
    let l:fg[1] = l:special[1]
  endif

  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction

"}}}2
"Highlight Groups: 

call s:h('HatsuneMikuBgLight', s:none, s:bglight)
call s:h('HatsuneMikuBgLighter', s:none, s:bglighter)
call s:h('HatsuneMikuBgDark', s:none, s:bgdark)
call s:h('HatsuneMikuBgDarker', s:none, s:bgdarker)

call s:h('HatsuneMikuFg', s:fg)
call s:h('HatsuneMikuFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('HatsuneMikuFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('HatsuneMikuComment', s:comment)
call s:h('HatsuneMikuCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('HatsuneMikuSelection', s:none, s:selection)

call s:h('HatsuneMikuSubtle', s:subtle)

call s:h('HatsuneMikuKeyColor', s:key_color)
call s:h('HatsuneMikuKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('HatsuneMikuClassName', s:class_name)
call s:h('HatsuneMikuClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('HatsuneMikuClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('HatsuneMikuClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('HatsuneMikuParameter', s:parameter_color)
call s:h('HatsuneMikuParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('HatsuneMikuParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('HatsuneMikuParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('HatsuneMikuParameterInverse', s:bg, s:parameter_color)

call s:h('HatsuneMikuKeyword', s:keyword_color)
call s:h('HatsuneMikuKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('HatsuneMikuConstants', s:constants_color)
call s:h('HatsuneMikuConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('HatsuneMikuConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('HatsuneMikuRed', s:red)
call s:h('HatsuneMikuRedInverse', s:fg, s:red)

call s:h('HatsuneMikuStringColor', s:string_color)
call s:h('HatsuneMikuStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('HatsuneMikuError', s:red, s:none, [], s:red)

call s:h('HatsuneMikuErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('HatsuneMikuWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('HatsuneMikuInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('HatsuneMikuTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('HatsuneMikuSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('HatsuneMikuBoundary', s:comment, s:bgdark)
call s:h('HatsuneMikuLink', s:key_color, s:none, [s:attrs.underline])

call s:h('HatsuneMikuDiffChange', s:parameter_color, s:none)
call s:h('HatsuneMikuDiffText', s:bg, s:parameter_color)
call s:h('HatsuneMikuDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:hatsune_miku_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  HatsuneMikuBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr HatsuneMikuStringColor
hi! link DiffAdd      HatsuneMikuClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   HatsuneMikuDiffChange
hi! link DiffDelete   HatsuneMikuDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     HatsuneMikuDiffText
hi! link Directory    HatsuneMikuConstantsBold
hi! link ErrorMsg     HatsuneMikuRedInverse
hi! link FoldColumn   HatsuneMikuSubtle
hi! link Folded       HatsuneMikuBoundary
hi! link IncSearch    HatsuneMikuParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      HatsuneMikuFgBold
hi! link NonText      HatsuneMikuSubtle
" hi! link Pmenu        HatsuneMikuBgDark
" hi! link PmenuSbar    HatsuneMikuBgDark
hi! link PmenuSel     HatsuneMikuSelection
hi! link PmenuThumb   HatsuneMikuSelection
hi! link Question     HatsuneMikuFgBold
hi! link Search       HatsuneMikuSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      HatsuneMikuBoundary
" hi! link TabLineFill  HatsuneMikuBgDarker
hi! link TabLineSel   Normal
hi! link Title        HatsuneMikuClassNameBold
hi! link VertSplit    HatsuneMikuBoundary
hi! link Visual       HatsuneMikuSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   HatsuneMikuParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey HatsuneMikuRed
  hi! link LspDiagnosticsUnderline HatsuneMikuFgUnderline
  hi! link LspDiagnosticsInformation HatsuneMikuKeyColor
  hi! link LspDiagnosticsHint HatsuneMikuKeyColor
  hi! link LspDiagnosticsError HatsuneMikuError
  hi! link LspDiagnosticsWarning HatsuneMikuParameter
  hi! link LspDiagnosticsUnderlineError HatsuneMikuErrorLine
  hi! link LspDiagnosticsUnderlineHint HatsuneMikuInfoLine
  hi! link LspDiagnosticsUnderlineInformation HatsuneMikuInfoLine
  hi! link LspDiagnosticsUnderlineWarning HatsuneMikuWarnLine
else
  hi! link SpecialKey HatsuneMikuSubtle
endif

hi! link Comment HatsuneMikuComment
hi! link Underlined HatsuneMikuFgUnderline
hi! link Todo HatsuneMikuTodo

hi! link Error HatsuneMikuError
hi! link SpellBad HatsuneMikuErrorLine
hi! link SpellLocal HatsuneMikuWarnLine
hi! link SpellCap HatsuneMikuInfoLine
hi! link SpellRare HatsuneMikuInfoLine

hi! link Constant HatsuneMikuConstants
hi! link String HatsuneMikuStringColor
hi! link Character HatsuneMikuKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier HatsuneMikuFg
hi! link Function HatsuneMikuClassName

hi! link Statement HatsuneMikuKeyword
hi! link Conditional HatsuneMikuKeyword
hi! link Repeat HatsuneMikuKeyword
hi! link Label HatsuneMikuKeyword
hi! link Operator HatsuneMikuKeyword
hi! link Keyword HatsuneMikuKeyword
hi! link Exception HatsuneMikuKeyword

hi! link PreProc HatsuneMikuKeyword
hi! link Include HatsuneMikuKeyword
hi! link Define HatsuneMikuKeyword
hi! link Macro HatsuneMikuKeyword
hi! link PreCondit HatsuneMikuKeyword
hi! link StorageClass HatsuneMikuKeyword
hi! link Structure HatsuneMikuKeyword
hi! link Typedef HatsuneMikuKeyword

hi! link Type HatsuneMikuKeyColorItalic

hi! link Delimiter HatsuneMikuFg

hi! link Special HatsuneMikuKeyword
hi! link SpecialComment HatsuneMikuKeyColorItalic
hi! link Tag HatsuneMikuKeyColor
hi! link helpHyperTextJump HatsuneMikuLink
hi! link helpCommand HatsuneMikuConstants
hi! link helpExample HatsuneMikuClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
