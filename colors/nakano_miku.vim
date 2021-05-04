" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'nakano_miku'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:nakano_miku#palette.fg

let s:bglighter = g:nakano_miku#palette.bglighter
let s:bglight   = g:nakano_miku#palette.bglight
let s:bg        = g:nakano_miku#palette.bg
let s:bgdark    = g:nakano_miku#palette.bgdark
let s:bgdarker  = g:nakano_miku#palette.bgdarker

let s:comment   = g:nakano_miku#palette.comment
let s:selection = g:nakano_miku#palette.selection
let s:subtle    = g:nakano_miku#palette.subtle

let s:key_color      = g:nakano_miku#palette.key_color
let s:class_name     = g:nakano_miku#palette.class_name
let s:parameter_color    = g:nakano_miku#palette.parameter_color
let s:keyword_color      = g:nakano_miku#palette.keyword_color
let s:constants_color    = g:nakano_miku#palette.constants_color
let s:red       = g:nakano_miku#palette.red
let s:string_color    = g:nakano_miku#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:nakano_miku#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:nakano_miku#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:nakano_miku_bold')
  let g:nakano_miku_bold = 1
endif

if !exists('g:nakano_miku_italic')
  let g:nakano_miku_italic = 1
endif

if !exists('g:nakano_miku_underline')
  let g:nakano_miku_underline = 1
endif

if !exists('g:nakano_miku_undercurl') && g:nakano_miku_underline != 0
  let g:nakano_miku_undercurl = 1
endif

if !exists('g:nakano_miku_inverse')
  let g:nakano_miku_inverse = 1
endif

if !exists('g:nakano_miku_colorterm')
  let g:nakano_miku_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:nakano_miku_bold == 1 ? 'bold' : 0,
      \ 'italic': g:nakano_miku_italic == 1 ? 'italic' : 0,
      \ 'underline': g:nakano_miku_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:nakano_miku_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:nakano_miku_inverse == 1 ? 'inverse' : 0,
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

call s:h('NakanoMikuBgLight', s:none, s:bglight)
call s:h('NakanoMikuBgLighter', s:none, s:bglighter)
call s:h('NakanoMikuBgDark', s:none, s:bgdark)
call s:h('NakanoMikuBgDarker', s:none, s:bgdarker)

call s:h('NakanoMikuFg', s:fg)
call s:h('NakanoMikuFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('NakanoMikuFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('NakanoMikuComment', s:comment)
call s:h('NakanoMikuCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('NakanoMikuSelection', s:none, s:selection)

call s:h('NakanoMikuSubtle', s:subtle)

call s:h('NakanoMikuKeyColor', s:key_color)
call s:h('NakanoMikuKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('NakanoMikuClassName', s:class_name)
call s:h('NakanoMikuClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('NakanoMikuClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('NakanoMikuClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('NakanoMikuParameter', s:parameter_color)
call s:h('NakanoMikuParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('NakanoMikuParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('NakanoMikuParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('NakanoMikuParameterInverse', s:bg, s:parameter_color)

call s:h('NakanoMikuKeyword', s:keyword_color)
call s:h('NakanoMikuKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('NakanoMikuConstants', s:constants_color)
call s:h('NakanoMikuConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('NakanoMikuConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('NakanoMikuRed', s:red)
call s:h('NakanoMikuRedInverse', s:fg, s:red)

call s:h('NakanoMikuStringColor', s:string_color)
call s:h('NakanoMikuStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('NakanoMikuError', s:red, s:none, [], s:red)

call s:h('NakanoMikuErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('NakanoMikuWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('NakanoMikuInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('NakanoMikuTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('NakanoMikuSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('NakanoMikuBoundary', s:comment, s:bgdark)
call s:h('NakanoMikuLink', s:key_color, s:none, [s:attrs.underline])

call s:h('NakanoMikuDiffChange', s:parameter_color, s:none)
call s:h('NakanoMikuDiffText', s:bg, s:parameter_color)
call s:h('NakanoMikuDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:nakano_miku_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  NakanoMikuBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr NakanoMikuStringColor
hi! link DiffAdd      NakanoMikuClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   NakanoMikuDiffChange
hi! link DiffDelete   NakanoMikuDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     NakanoMikuDiffText
hi! link Directory    NakanoMikuConstantsBold
hi! link ErrorMsg     NakanoMikuRedInverse
hi! link FoldColumn   NakanoMikuSubtle
hi! link Folded       NakanoMikuBoundary
hi! link IncSearch    NakanoMikuParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      NakanoMikuFgBold
hi! link NonText      NakanoMikuSubtle
" hi! link Pmenu        NakanoMikuBgDark
" hi! link PmenuSbar    NakanoMikuBgDark
hi! link PmenuSel     NakanoMikuSelection
hi! link PmenuThumb   NakanoMikuSelection
hi! link Question     NakanoMikuFgBold
hi! link Search       NakanoMikuSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      NakanoMikuBoundary
" hi! link TabLineFill  NakanoMikuBgDarker
hi! link TabLineSel   Normal
hi! link Title        NakanoMikuClassNameBold
hi! link VertSplit    NakanoMikuBoundary
hi! link Visual       NakanoMikuSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   NakanoMikuParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey NakanoMikuRed
  hi! link LspDiagnosticsUnderline NakanoMikuFgUnderline
  hi! link LspDiagnosticsInformation NakanoMikuKeyColor
  hi! link LspDiagnosticsHint NakanoMikuKeyColor
  hi! link LspDiagnosticsError NakanoMikuError
  hi! link LspDiagnosticsWarning NakanoMikuParameter
  hi! link LspDiagnosticsUnderlineError NakanoMikuErrorLine
  hi! link LspDiagnosticsUnderlineHint NakanoMikuInfoLine
  hi! link LspDiagnosticsUnderlineInformation NakanoMikuInfoLine
  hi! link LspDiagnosticsUnderlineWarning NakanoMikuWarnLine
else
  hi! link SpecialKey NakanoMikuSubtle
endif

hi! link Comment NakanoMikuComment
hi! link Underlined NakanoMikuFgUnderline
hi! link Todo NakanoMikuTodo

hi! link Error NakanoMikuError
hi! link SpellBad NakanoMikuErrorLine
hi! link SpellLocal NakanoMikuWarnLine
hi! link SpellCap NakanoMikuInfoLine
hi! link SpellRare NakanoMikuInfoLine

hi! link Constant NakanoMikuConstants
hi! link String NakanoMikuStringColor
hi! link Character NakanoMikuKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier NakanoMikuFg
hi! link Function NakanoMikuClassName

hi! link Statement NakanoMikuKeyword
hi! link Conditional NakanoMikuKeyword
hi! link Repeat NakanoMikuKeyword
hi! link Label NakanoMikuKeyword
hi! link Operator NakanoMikuKeyword
hi! link Keyword NakanoMikuKeyword
hi! link Exception NakanoMikuKeyword

hi! link PreProc NakanoMikuKeyword
hi! link Include NakanoMikuKeyword
hi! link Define NakanoMikuKeyword
hi! link Macro NakanoMikuKeyword
hi! link PreCondit NakanoMikuKeyword
hi! link StorageClass NakanoMikuKeyword
hi! link Structure NakanoMikuKeyword
hi! link Typedef NakanoMikuKeyword

hi! link Type NakanoMikuKeyColorItalic

hi! link Delimiter NakanoMikuFg

hi! link Special NakanoMikuKeyword
hi! link SpecialComment NakanoMikuKeyColorItalic
hi! link Tag NakanoMikuKeyColor
hi! link helpHyperTextJump NakanoMikuLink
hi! link helpCommand NakanoMikuConstants
hi! link helpExample NakanoMikuClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
