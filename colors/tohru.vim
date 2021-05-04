" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'tohru'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:tohru#palette.fg

let s:bglighter = g:tohru#palette.bglighter
let s:bglight   = g:tohru#palette.bglight
let s:bg        = g:tohru#palette.bg
let s:bgdark    = g:tohru#palette.bgdark
let s:bgdarker  = g:tohru#palette.bgdarker

let s:comment   = g:tohru#palette.comment
let s:selection = g:tohru#palette.selection
let s:subtle    = g:tohru#palette.subtle

let s:key_color      = g:tohru#palette.key_color
let s:class_name     = g:tohru#palette.class_name
let s:parameter_color    = g:tohru#palette.parameter_color
let s:keyword_color      = g:tohru#palette.keyword_color
let s:constants_color    = g:tohru#palette.constants_color
let s:red       = g:tohru#palette.red
let s:string_color    = g:tohru#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:tohru#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:tohru#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:tohru_bold')
  let g:tohru_bold = 1
endif

if !exists('g:tohru_italic')
  let g:tohru_italic = 1
endif

if !exists('g:tohru_underline')
  let g:tohru_underline = 1
endif

if !exists('g:tohru_undercurl') && g:tohru_underline != 0
  let g:tohru_undercurl = 1
endif

if !exists('g:tohru_inverse')
  let g:tohru_inverse = 1
endif

if !exists('g:tohru_colorterm')
  let g:tohru_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:tohru_bold == 1 ? 'bold' : 0,
      \ 'italic': g:tohru_italic == 1 ? 'italic' : 0,
      \ 'underline': g:tohru_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:tohru_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:tohru_inverse == 1 ? 'inverse' : 0,
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

call s:h('TohruBgLight', s:none, s:bglight)
call s:h('TohruBgLighter', s:none, s:bglighter)
call s:h('TohruBgDark', s:none, s:bgdark)
call s:h('TohruBgDarker', s:none, s:bgdarker)

call s:h('TohruFg', s:fg)
call s:h('TohruFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('TohruFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('TohruComment', s:comment)
call s:h('TohruCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('TohruSelection', s:none, s:selection)

call s:h('TohruSubtle', s:subtle)

call s:h('TohruKeyColor', s:key_color)
call s:h('TohruKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('TohruClassName', s:class_name)
call s:h('TohruClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('TohruClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('TohruClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('TohruParameter', s:parameter_color)
call s:h('TohruParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('TohruParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('TohruParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('TohruParameterInverse', s:bg, s:parameter_color)

call s:h('TohruKeyword', s:keyword_color)
call s:h('TohruKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('TohruConstants', s:constants_color)
call s:h('TohruConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('TohruConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('TohruRed', s:red)
call s:h('TohruRedInverse', s:fg, s:red)

call s:h('TohruStringColor', s:string_color)
call s:h('TohruStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('TohruError', s:red, s:none, [], s:red)

call s:h('TohruErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('TohruWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('TohruInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('TohruTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('TohruSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('TohruBoundary', s:comment, s:bgdark)
call s:h('TohruLink', s:key_color, s:none, [s:attrs.underline])

call s:h('TohruDiffChange', s:parameter_color, s:none)
call s:h('TohruDiffText', s:bg, s:parameter_color)
call s:h('TohruDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:tohru_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  TohruBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr TohruStringColor
hi! link DiffAdd      TohruClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   TohruDiffChange
hi! link DiffDelete   TohruDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     TohruDiffText
hi! link Directory    TohruConstantsBold
hi! link ErrorMsg     TohruRedInverse
hi! link FoldColumn   TohruSubtle
hi! link Folded       TohruBoundary
hi! link IncSearch    TohruParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      TohruFgBold
hi! link NonText      TohruSubtle
" hi! link Pmenu        TohruBgDark
" hi! link PmenuSbar    TohruBgDark
hi! link PmenuSel     TohruSelection
hi! link PmenuThumb   TohruSelection
hi! link Question     TohruFgBold
hi! link Search       TohruSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      TohruBoundary
" hi! link TabLineFill  TohruBgDarker
hi! link TabLineSel   Normal
hi! link Title        TohruClassNameBold
hi! link VertSplit    TohruBoundary
hi! link Visual       TohruSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   TohruParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey TohruRed
  hi! link LspDiagnosticsUnderline TohruFgUnderline
  hi! link LspDiagnosticsInformation TohruKeyColor
  hi! link LspDiagnosticsHint TohruKeyColor
  hi! link LspDiagnosticsError TohruError
  hi! link LspDiagnosticsWarning TohruParameter
  hi! link LspDiagnosticsUnderlineError TohruErrorLine
  hi! link LspDiagnosticsUnderlineHint TohruInfoLine
  hi! link LspDiagnosticsUnderlineInformation TohruInfoLine
  hi! link LspDiagnosticsUnderlineWarning TohruWarnLine
else
  hi! link SpecialKey TohruSubtle
endif

hi! link Comment TohruComment
hi! link Underlined TohruFgUnderline
hi! link Todo TohruTodo

hi! link Error TohruError
hi! link SpellBad TohruErrorLine
hi! link SpellLocal TohruWarnLine
hi! link SpellCap TohruInfoLine
hi! link SpellRare TohruInfoLine

hi! link Constant TohruConstants
hi! link String TohruStringColor
hi! link Character TohruKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier TohruFg
hi! link Function TohruClassName

hi! link Statement TohruKeyword
hi! link Conditional TohruKeyword
hi! link Repeat TohruKeyword
hi! link Label TohruKeyword
hi! link Operator TohruKeyword
hi! link Keyword TohruKeyword
hi! link Exception TohruKeyword

hi! link PreProc TohruKeyword
hi! link Include TohruKeyword
hi! link Define TohruKeyword
hi! link Macro TohruKeyword
hi! link PreCondit TohruKeyword
hi! link StorageClass TohruKeyword
hi! link Structure TohruKeyword
hi! link Typedef TohruKeyword

hi! link Type TohruKeyColorItalic

hi! link Delimiter TohruFg

hi! link Special TohruKeyword
hi! link SpecialComment TohruKeyColorItalic
hi! link Tag TohruKeyColor
hi! link helpHyperTextJump TohruLink
hi! link helpCommand TohruConstants
hi! link helpExample TohruClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
