" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'shigure'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:shigure#palette.fg

let s:bglighter = g:shigure#palette.bglighter
let s:bglight   = g:shigure#palette.bglight
let s:bg        = g:shigure#palette.bg
let s:bgdark    = g:shigure#palette.bgdark
let s:bgdarker  = g:shigure#palette.bgdarker

let s:comment   = g:shigure#palette.comment
let s:selection = g:shigure#palette.selection
let s:subtle    = g:shigure#palette.subtle

let s:key_color      = g:shigure#palette.key_color
let s:class_name     = g:shigure#palette.class_name
let s:parameter_color    = g:shigure#palette.parameter_color
let s:keyword_color      = g:shigure#palette.keyword_color
let s:constants_color    = g:shigure#palette.constants_color
let s:red       = g:shigure#palette.red
let s:string_color    = g:shigure#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:shigure#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:shigure#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:shigure_bold')
  let g:shigure_bold = 1
endif

if !exists('g:shigure_italic')
  let g:shigure_italic = 1
endif

if !exists('g:shigure_underline')
  let g:shigure_underline = 1
endif

if !exists('g:shigure_undercurl') && g:shigure_underline != 0
  let g:shigure_undercurl = 1
endif

if !exists('g:shigure_inverse')
  let g:shigure_inverse = 1
endif

if !exists('g:shigure_colorterm')
  let g:shigure_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:shigure_bold == 1 ? 'bold' : 0,
      \ 'italic': g:shigure_italic == 1 ? 'italic' : 0,
      \ 'underline': g:shigure_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:shigure_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:shigure_inverse == 1 ? 'inverse' : 0,
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

call s:h('ShigureBgLight', s:none, s:bglight)
call s:h('ShigureBgLighter', s:none, s:bglighter)
call s:h('ShigureBgDark', s:none, s:bgdark)
call s:h('ShigureBgDarker', s:none, s:bgdarker)

call s:h('ShigureFg', s:fg)
call s:h('ShigureFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('ShigureFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('ShigureComment', s:comment)
call s:h('ShigureCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('ShigureSelection', s:none, s:selection)

call s:h('ShigureSubtle', s:subtle)

call s:h('ShigureKeyColor', s:key_color)
call s:h('ShigureKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('ShigureClassName', s:class_name)
call s:h('ShigureClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('ShigureClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('ShigureClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('ShigureParameter', s:parameter_color)
call s:h('ShigureParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('ShigureParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('ShigureParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('ShigureParameterInverse', s:bg, s:parameter_color)

call s:h('ShigureKeyword', s:keyword_color)
call s:h('ShigureKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('ShigureConstants', s:constants_color)
call s:h('ShigureConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('ShigureConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('ShigureRed', s:red)
call s:h('ShigureRedInverse', s:fg, s:red)

call s:h('ShigureStringColor', s:string_color)
call s:h('ShigureStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('ShigureError', s:red, s:none, [], s:red)

call s:h('ShigureErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('ShigureWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('ShigureInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('ShigureTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('ShigureSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('ShigureBoundary', s:comment, s:bgdark)
call s:h('ShigureLink', s:key_color, s:none, [s:attrs.underline])

call s:h('ShigureDiffChange', s:parameter_color, s:none)
call s:h('ShigureDiffText', s:bg, s:parameter_color)
call s:h('ShigureDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:shigure_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  ShigureBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr ShigureStringColor
hi! link DiffAdd      ShigureClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   ShigureDiffChange
hi! link DiffDelete   ShigureDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     ShigureDiffText
hi! link Directory    ShigureConstantsBold
hi! link ErrorMsg     ShigureRedInverse
hi! link FoldColumn   ShigureSubtle
hi! link Folded       ShigureBoundary
hi! link IncSearch    ShigureParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      ShigureFgBold
hi! link NonText      ShigureSubtle
" hi! link Pmenu        ShigureBgDark
" hi! link PmenuSbar    ShigureBgDark
hi! link PmenuSel     ShigureSelection
hi! link PmenuThumb   ShigureSelection
hi! link Question     ShigureFgBold
hi! link Search       ShigureSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      ShigureBoundary
" hi! link TabLineFill  ShigureBgDarker
hi! link TabLineSel   Normal
hi! link Title        ShigureClassNameBold
hi! link VertSplit    ShigureBoundary
hi! link Visual       ShigureSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   ShigureParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey ShigureRed
  hi! link LspDiagnosticsUnderline ShigureFgUnderline
  hi! link LspDiagnosticsInformation ShigureKeyColor
  hi! link LspDiagnosticsHint ShigureKeyColor
  hi! link LspDiagnosticsError ShigureError
  hi! link LspDiagnosticsWarning ShigureParameter
  hi! link LspDiagnosticsUnderlineError ShigureErrorLine
  hi! link LspDiagnosticsUnderlineHint ShigureInfoLine
  hi! link LspDiagnosticsUnderlineInformation ShigureInfoLine
  hi! link LspDiagnosticsUnderlineWarning ShigureWarnLine
else
  hi! link SpecialKey ShigureSubtle
endif

hi! link Comment ShigureComment
hi! link Underlined ShigureFgUnderline
hi! link Todo ShigureTodo

hi! link Error ShigureError
hi! link SpellBad ShigureErrorLine
hi! link SpellLocal ShigureWarnLine
hi! link SpellCap ShigureInfoLine
hi! link SpellRare ShigureInfoLine

hi! link Constant ShigureConstants
hi! link String ShigureStringColor
hi! link Character ShigureKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier ShigureFg
hi! link Function ShigureClassName

hi! link Statement ShigureKeyword
hi! link Conditional ShigureKeyword
hi! link Repeat ShigureKeyword
hi! link Label ShigureKeyword
hi! link Operator ShigureKeyword
hi! link Keyword ShigureKeyword
hi! link Exception ShigureKeyword

hi! link PreProc ShigureKeyword
hi! link Include ShigureKeyword
hi! link Define ShigureKeyword
hi! link Macro ShigureKeyword
hi! link PreCondit ShigureKeyword
hi! link StorageClass ShigureKeyword
hi! link Structure ShigureKeyword
hi! link Typedef ShigureKeyword

hi! link Type ShigureKeyColorItalic

hi! link Delimiter ShigureFg

hi! link Special ShigureKeyword
hi! link SpecialComment ShigureKeyColorItalic
hi! link Tag ShigureKeyColor
hi! link helpHyperTextJump ShigureLink
hi! link helpCommand ShigureConstants
hi! link helpExample ShigureClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
