" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'sayori_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:sayori_dark#palette.fg

let s:bglighter = g:sayori_dark#palette.bglighter
let s:bglight   = g:sayori_dark#palette.bglight
let s:bg        = g:sayori_dark#palette.bg
let s:bgdark    = g:sayori_dark#palette.bgdark
let s:bgdarker  = g:sayori_dark#palette.bgdarker

let s:comment   = g:sayori_dark#palette.comment
let s:selection = g:sayori_dark#palette.selection
let s:subtle    = g:sayori_dark#palette.subtle

let s:key_color      = g:sayori_dark#palette.key_color
let s:class_name     = g:sayori_dark#palette.class_name
let s:parameter_color    = g:sayori_dark#palette.parameter_color
let s:keyword_color      = g:sayori_dark#palette.keyword_color
let s:constants_color    = g:sayori_dark#palette.constants_color
let s:red       = g:sayori_dark#palette.red
let s:string_color    = g:sayori_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:sayori_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:sayori_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:sayori_dark_bold')
  let g:sayori_dark_bold = 1
endif

if !exists('g:sayori_dark_italic')
  let g:sayori_dark_italic = 1
endif

if !exists('g:sayori_dark_underline')
  let g:sayori_dark_underline = 1
endif

if !exists('g:sayori_dark_undercurl') && g:sayori_dark_underline != 0
  let g:sayori_dark_undercurl = 1
endif

if !exists('g:sayori_dark_inverse')
  let g:sayori_dark_inverse = 1
endif

if !exists('g:sayori_dark_colorterm')
  let g:sayori_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:sayori_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:sayori_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:sayori_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:sayori_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:sayori_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('SayoriDarkBgLight', s:none, s:bglight)
call s:h('SayoriDarkBgLighter', s:none, s:bglighter)
call s:h('SayoriDarkBgDark', s:none, s:bgdark)
call s:h('SayoriDarkBgDarker', s:none, s:bgdarker)

call s:h('SayoriDarkFg', s:fg)
call s:h('SayoriDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('SayoriDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('SayoriDarkComment', s:comment)
call s:h('SayoriDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('SayoriDarkSelection', s:none, s:selection)

call s:h('SayoriDarkSubtle', s:subtle)

call s:h('SayoriDarkKeyColor', s:key_color)
call s:h('SayoriDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('SayoriDarkClassName', s:class_name)
call s:h('SayoriDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('SayoriDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('SayoriDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('SayoriDarkParameter', s:parameter_color)
call s:h('SayoriDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('SayoriDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('SayoriDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('SayoriDarkParameterInverse', s:bg, s:parameter_color)

call s:h('SayoriDarkKeyword', s:keyword_color)
call s:h('SayoriDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('SayoriDarkConstants', s:constants_color)
call s:h('SayoriDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('SayoriDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('SayoriDarkRed', s:red)
call s:h('SayoriDarkRedInverse', s:fg, s:red)

call s:h('SayoriDarkStringColor', s:string_color)
call s:h('SayoriDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('SayoriDarkError', s:red, s:none, [], s:red)

call s:h('SayoriDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('SayoriDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('SayoriDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('SayoriDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('SayoriDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('SayoriDarkBoundary', s:comment, s:bgdark)
call s:h('SayoriDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('SayoriDarkDiffChange', s:parameter_color, s:none)
call s:h('SayoriDarkDiffText', s:bg, s:parameter_color)
call s:h('SayoriDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:sayori_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  SayoriDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr SayoriDarkStringColor
hi! link DiffAdd      SayoriDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   SayoriDarkDiffChange
hi! link DiffDelete   SayoriDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     SayoriDarkDiffText
hi! link Directory    SayoriDarkConstantsBold
hi! link ErrorMsg     SayoriDarkRedInverse
hi! link FoldColumn   SayoriDarkSubtle
hi! link Folded       SayoriDarkBoundary
hi! link IncSearch    SayoriDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      SayoriDarkFgBold
hi! link NonText      SayoriDarkSubtle
" hi! link Pmenu        SayoriDarkBgDark
" hi! link PmenuSbar    SayoriDarkBgDark
hi! link PmenuSel     SayoriDarkSelection
hi! link PmenuThumb   SayoriDarkSelection
hi! link Question     SayoriDarkFgBold
hi! link Search       SayoriDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      SayoriDarkBoundary
" hi! link TabLineFill  SayoriDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        SayoriDarkClassNameBold
hi! link VertSplit    SayoriDarkBoundary
hi! link Visual       SayoriDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   SayoriDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey SayoriDarkRed
  hi! link LspDiagnosticsUnderline SayoriDarkFgUnderline
  hi! link LspDiagnosticsInformation SayoriDarkKeyColor
  hi! link LspDiagnosticsHint SayoriDarkKeyColor
  hi! link LspDiagnosticsError SayoriDarkError
  hi! link LspDiagnosticsWarning SayoriDarkParameter
  hi! link LspDiagnosticsUnderlineError SayoriDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint SayoriDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation SayoriDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning SayoriDarkWarnLine
else
  hi! link SpecialKey SayoriDarkSubtle
endif

hi! link Comment SayoriDarkComment
hi! link Underlined SayoriDarkFgUnderline
hi! link Todo SayoriDarkTodo

hi! link Error SayoriDarkError
hi! link SpellBad SayoriDarkErrorLine
hi! link SpellLocal SayoriDarkWarnLine
hi! link SpellCap SayoriDarkInfoLine
hi! link SpellRare SayoriDarkInfoLine

hi! link Constant SayoriDarkConstants
hi! link String SayoriDarkStringColor
hi! link Character SayoriDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier SayoriDarkFg
hi! link Function SayoriDarkClassName

hi! link Statement SayoriDarkKeyword
hi! link Conditional SayoriDarkKeyword
hi! link Repeat SayoriDarkKeyword
hi! link Label SayoriDarkKeyword
hi! link Operator SayoriDarkKeyword
hi! link Keyword SayoriDarkKeyword
hi! link Exception SayoriDarkKeyword

hi! link PreProc SayoriDarkKeyword
hi! link Include SayoriDarkKeyword
hi! link Define SayoriDarkKeyword
hi! link Macro SayoriDarkKeyword
hi! link PreCondit SayoriDarkKeyword
hi! link StorageClass SayoriDarkKeyword
hi! link Structure SayoriDarkKeyword
hi! link Typedef SayoriDarkKeyword

hi! link Type SayoriDarkKeyColorItalic

hi! link Delimiter SayoriDarkFg

hi! link Special SayoriDarkKeyword
hi! link SpecialComment SayoriDarkKeyColorItalic
hi! link Tag SayoriDarkKeyColor
hi! link helpHyperTextJump SayoriDarkLink
hi! link helpCommand SayoriDarkConstants
hi! link helpExample SayoriDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
