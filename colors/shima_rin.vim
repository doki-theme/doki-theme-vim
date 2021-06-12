" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'shima_rin'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:shima_rin#palette.fg

let s:bglighter = g:shima_rin#palette.bglighter
let s:bglight   = g:shima_rin#palette.bglight
let s:bg        = g:shima_rin#palette.bg
let s:bgdark    = g:shima_rin#palette.bgdark
let s:bgdarker  = g:shima_rin#palette.bgdarker

let s:comment   = g:shima_rin#palette.comment
let s:selection = g:shima_rin#palette.selection
let s:subtle    = g:shima_rin#palette.subtle

let s:key_color      = g:shima_rin#palette.key_color
let s:class_name     = g:shima_rin#palette.class_name
let s:parameter_color    = g:shima_rin#palette.parameter_color
let s:keyword_color      = g:shima_rin#palette.keyword_color
let s:constants_color    = g:shima_rin#palette.constants_color
let s:red       = g:shima_rin#palette.red
let s:string_color    = g:shima_rin#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:shima_rin#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:shima_rin#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:shima_rin_bold')
  let g:shima_rin_bold = 1
endif

if !exists('g:shima_rin_italic')
  let g:shima_rin_italic = 1
endif

if !exists('g:shima_rin_underline')
  let g:shima_rin_underline = 1
endif

if !exists('g:shima_rin_undercurl') && g:shima_rin_underline != 0
  let g:shima_rin_undercurl = 1
endif

if !exists('g:shima_rin_inverse')
  let g:shima_rin_inverse = 1
endif

if !exists('g:shima_rin_colorterm')
  let g:shima_rin_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:shima_rin_bold == 1 ? 'bold' : 0,
      \ 'italic': g:shima_rin_italic == 1 ? 'italic' : 0,
      \ 'underline': g:shima_rin_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:shima_rin_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:shima_rin_inverse == 1 ? 'inverse' : 0,
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

call s:h('ShimaRinBgLight', s:none, s:bglight)
call s:h('ShimaRinBgLighter', s:none, s:bglighter)
call s:h('ShimaRinBgDark', s:none, s:bgdark)
call s:h('ShimaRinBgDarker', s:none, s:bgdarker)

call s:h('ShimaRinFg', s:fg)
call s:h('ShimaRinFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('ShimaRinFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('ShimaRinComment', s:comment)
call s:h('ShimaRinCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('ShimaRinSelection', s:none, s:selection)

call s:h('ShimaRinSubtle', s:subtle)

call s:h('ShimaRinKeyColor', s:key_color)
call s:h('ShimaRinKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('ShimaRinClassName', s:class_name)
call s:h('ShimaRinClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('ShimaRinClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('ShimaRinClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('ShimaRinParameter', s:parameter_color)
call s:h('ShimaRinParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('ShimaRinParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('ShimaRinParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('ShimaRinParameterInverse', s:bg, s:parameter_color)

call s:h('ShimaRinKeyword', s:keyword_color)
call s:h('ShimaRinKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('ShimaRinConstants', s:constants_color)
call s:h('ShimaRinConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('ShimaRinConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('ShimaRinRed', s:red)
call s:h('ShimaRinRedInverse', s:fg, s:red)

call s:h('ShimaRinStringColor', s:string_color)
call s:h('ShimaRinStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('ShimaRinError', s:red, s:none, [], s:red)

call s:h('ShimaRinErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('ShimaRinWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('ShimaRinInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('ShimaRinTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('ShimaRinSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('ShimaRinBoundary', s:comment, s:bgdark)
call s:h('ShimaRinLink', s:key_color, s:none, [s:attrs.underline])

call s:h('ShimaRinDiffChange', s:parameter_color, s:none)
call s:h('ShimaRinDiffText', s:bg, s:parameter_color)
call s:h('ShimaRinDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:shima_rin_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  ShimaRinBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr ShimaRinStringColor
hi! link DiffAdd      ShimaRinClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   ShimaRinDiffChange
hi! link DiffDelete   ShimaRinDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     ShimaRinDiffText
hi! link Directory    ShimaRinConstantsBold
hi! link ErrorMsg     ShimaRinRedInverse
hi! link FoldColumn   ShimaRinSubtle
hi! link Folded       ShimaRinBoundary
hi! link IncSearch    ShimaRinParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      ShimaRinFgBold
hi! link NonText      ShimaRinSubtle
" hi! link Pmenu        ShimaRinBgDark
" hi! link PmenuSbar    ShimaRinBgDark
hi! link PmenuSel     ShimaRinSelection
hi! link PmenuThumb   ShimaRinSelection
hi! link Question     ShimaRinFgBold
hi! link Search       ShimaRinSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      ShimaRinBoundary
" hi! link TabLineFill  ShimaRinBgDarker
hi! link TabLineSel   Normal
hi! link Title        ShimaRinClassNameBold
hi! link VertSplit    ShimaRinBoundary
hi! link Visual       ShimaRinSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   ShimaRinParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey ShimaRinRed
  hi! link LspDiagnosticsUnderline ShimaRinFgUnderline
  hi! link LspDiagnosticsInformation ShimaRinKeyColor
  hi! link LspDiagnosticsHint ShimaRinKeyColor
  hi! link LspDiagnosticsError ShimaRinError
  hi! link LspDiagnosticsWarning ShimaRinParameter
  hi! link LspDiagnosticsUnderlineError ShimaRinErrorLine
  hi! link LspDiagnosticsUnderlineHint ShimaRinInfoLine
  hi! link LspDiagnosticsUnderlineInformation ShimaRinInfoLine
  hi! link LspDiagnosticsUnderlineWarning ShimaRinWarnLine
else
  hi! link SpecialKey ShimaRinSubtle
endif

hi! link Comment ShimaRinComment
hi! link Underlined ShimaRinFgUnderline
hi! link Todo ShimaRinTodo

hi! link Error ShimaRinError
hi! link SpellBad ShimaRinErrorLine
hi! link SpellLocal ShimaRinWarnLine
hi! link SpellCap ShimaRinInfoLine
hi! link SpellRare ShimaRinInfoLine

hi! link Constant ShimaRinConstants
hi! link String ShimaRinStringColor
hi! link Character ShimaRinKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier ShimaRinFg
hi! link Function ShimaRinClassName

hi! link Statement ShimaRinKeyword
hi! link Conditional ShimaRinKeyword
hi! link Repeat ShimaRinKeyword
hi! link Label ShimaRinKeyword
hi! link Operator ShimaRinKeyword
hi! link Keyword ShimaRinKeyword
hi! link Exception ShimaRinKeyword

hi! link PreProc ShimaRinKeyword
hi! link Include ShimaRinKeyword
hi! link Define ShimaRinKeyword
hi! link Macro ShimaRinKeyword
hi! link PreCondit ShimaRinKeyword
hi! link StorageClass ShimaRinKeyword
hi! link Structure ShimaRinKeyword
hi! link Typedef ShimaRinKeyword

hi! link Type ShimaRinKeyColorItalic

hi! link Delimiter ShimaRinFg

hi! link Special ShimaRinKeyword
hi! link SpecialComment ShimaRinKeyColorItalic
hi! link Tag ShimaRinKeyColor
hi! link helpHyperTextJump ShimaRinLink
hi! link helpCommand ShimaRinConstants
hi! link helpExample ShimaRinClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
