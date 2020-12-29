" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'asuna_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:asuna_dark#palette.fg

let s:bglighter = g:asuna_dark#palette.bglighter
let s:bglight   = g:asuna_dark#palette.bglight
let s:bg        = g:asuna_dark#palette.bg
let s:bgdark    = g:asuna_dark#palette.bgdark
let s:bgdarker  = g:asuna_dark#palette.bgdarker

let s:comment   = g:asuna_dark#palette.comment
let s:selection = g:asuna_dark#palette.selection
let s:subtle    = g:asuna_dark#palette.subtle

let s:key_color      = g:asuna_dark#palette.key_color
let s:class_name     = g:asuna_dark#palette.class_name
let s:parameter_color    = g:asuna_dark#palette.parameter_color
let s:keyword_color      = g:asuna_dark#palette.keyword_color
let s:constants_color    = g:asuna_dark#palette.constants_color
let s:red       = g:asuna_dark#palette.red
let s:string_color    = g:asuna_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:asuna_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:asuna_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:asuna_dark_bold')
  let g:asuna_dark_bold = 1
endif

if !exists('g:asuna_dark_italic')
  let g:asuna_dark_italic = 1
endif

if !exists('g:asuna_dark_underline')
  let g:asuna_dark_underline = 1
endif

if !exists('g:asuna_dark_undercurl') && g:asuna_dark_underline != 0
  let g:asuna_dark_undercurl = 1
endif

if !exists('g:asuna_dark_inverse')
  let g:asuna_dark_inverse = 1
endif

if !exists('g:asuna_dark_colorterm')
  let g:asuna_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:asuna_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:asuna_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:asuna_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:asuna_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:asuna_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('AsunaDarkBgLight', s:none, s:bglight)
call s:h('AsunaDarkBgLighter', s:none, s:bglighter)
call s:h('AsunaDarkBgDark', s:none, s:bgdark)
call s:h('AsunaDarkBgDarker', s:none, s:bgdarker)

call s:h('AsunaDarkFg', s:fg)
call s:h('AsunaDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('AsunaDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('AsunaDarkComment', s:comment)
call s:h('AsunaDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('AsunaDarkSelection', s:none, s:selection)

call s:h('AsunaDarkSubtle', s:subtle)

call s:h('AsunaDarkKeyColor', s:key_color)
call s:h('AsunaDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('AsunaDarkClassName', s:class_name)
call s:h('AsunaDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('AsunaDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('AsunaDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('AsunaDarkParameter', s:parameter_color)
call s:h('AsunaDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('AsunaDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('AsunaDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('AsunaDarkParameterInverse', s:bg, s:parameter_color)

call s:h('AsunaDarkKeyword', s:keyword_color)
call s:h('AsunaDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('AsunaDarkConstants', s:constants_color)
call s:h('AsunaDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('AsunaDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('AsunaDarkRed', s:red)
call s:h('AsunaDarkRedInverse', s:fg, s:red)

call s:h('AsunaDarkStringColor', s:string_color)
call s:h('AsunaDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('AsunaDarkError', s:red, s:none, [], s:red)

call s:h('AsunaDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('AsunaDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('AsunaDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('AsunaDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('AsunaDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('AsunaDarkBoundary', s:comment, s:bgdark)
call s:h('AsunaDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('AsunaDarkDiffChange', s:parameter_color, s:none)
call s:h('AsunaDarkDiffText', s:bg, s:parameter_color)
call s:h('AsunaDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:asuna_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  AsunaDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr AsunaDarkStringColor
hi! link DiffAdd      AsunaDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   AsunaDarkDiffChange
hi! link DiffDelete   AsunaDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     AsunaDarkDiffText
hi! link Directory    AsunaDarkConstantsBold
hi! link ErrorMsg     AsunaDarkRedInverse
hi! link FoldColumn   AsunaDarkSubtle
hi! link Folded       AsunaDarkBoundary
hi! link IncSearch    AsunaDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      AsunaDarkFgBold
hi! link NonText      AsunaDarkSubtle
" hi! link Pmenu        AsunaDarkBgDark
" hi! link PmenuSbar    AsunaDarkBgDark
hi! link PmenuSel     AsunaDarkSelection
hi! link PmenuThumb   AsunaDarkSelection
hi! link Question     AsunaDarkFgBold
hi! link Search       AsunaDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      AsunaDarkBoundary
" hi! link TabLineFill  AsunaDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        AsunaDarkClassNameBold
hi! link VertSplit    AsunaDarkBoundary
hi! link Visual       AsunaDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   AsunaDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey AsunaDarkRed
  hi! link LspDiagnosticsUnderline AsunaDarkFgUnderline
  hi! link LspDiagnosticsInformation AsunaDarkKeyColor
  hi! link LspDiagnosticsHint AsunaDarkKeyColor
  hi! link LspDiagnosticsError AsunaDarkError
  hi! link LspDiagnosticsWarning AsunaDarkParameter
  hi! link LspDiagnosticsUnderlineError AsunaDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint AsunaDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation AsunaDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning AsunaDarkWarnLine
else
  hi! link SpecialKey AsunaDarkSubtle
endif

hi! link Comment AsunaDarkComment
hi! link Underlined AsunaDarkFgUnderline
hi! link Todo AsunaDarkTodo

hi! link Error AsunaDarkError
hi! link SpellBad AsunaDarkErrorLine
hi! link SpellLocal AsunaDarkWarnLine
hi! link SpellCap AsunaDarkInfoLine
hi! link SpellRare AsunaDarkInfoLine

hi! link Constant AsunaDarkConstants
hi! link String AsunaDarkStringColor
hi! link Character AsunaDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier AsunaDarkFg
hi! link Function AsunaDarkClassName

hi! link Statement AsunaDarkKeyword
hi! link Conditional AsunaDarkKeyword
hi! link Repeat AsunaDarkKeyword
hi! link Label AsunaDarkKeyword
hi! link Operator AsunaDarkKeyword
hi! link Keyword AsunaDarkKeyword
hi! link Exception AsunaDarkKeyword

hi! link PreProc AsunaDarkKeyword
hi! link Include AsunaDarkKeyword
hi! link Define AsunaDarkKeyword
hi! link Macro AsunaDarkKeyword
hi! link PreCondit AsunaDarkKeyword
hi! link StorageClass AsunaDarkKeyword
hi! link Structure AsunaDarkKeyword
hi! link Typedef AsunaDarkKeyword

hi! link Type AsunaDarkKeyColorItalic

hi! link Delimiter AsunaDarkFg

hi! link Special AsunaDarkKeyword
hi! link SpecialComment AsunaDarkKeyColorItalic
hi! link Tag AsunaDarkKeyColor
hi! link helpHyperTextJump AsunaDarkLink
hi! link helpCommand AsunaDarkConstants
hi! link helpExample AsunaDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
