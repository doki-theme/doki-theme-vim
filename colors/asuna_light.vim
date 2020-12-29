" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'asuna_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:asuna_light#palette.fg

let s:bglighter = g:asuna_light#palette.bglighter
let s:bglight   = g:asuna_light#palette.bglight
let s:bg        = g:asuna_light#palette.bg
let s:bgdark    = g:asuna_light#palette.bgdark
let s:bgdarker  = g:asuna_light#palette.bgdarker

let s:comment   = g:asuna_light#palette.comment
let s:selection = g:asuna_light#palette.selection
let s:subtle    = g:asuna_light#palette.subtle

let s:key_color      = g:asuna_light#palette.key_color
let s:class_name     = g:asuna_light#palette.class_name
let s:parameter_color    = g:asuna_light#palette.parameter_color
let s:keyword_color      = g:asuna_light#palette.keyword_color
let s:constants_color    = g:asuna_light#palette.constants_color
let s:red       = g:asuna_light#palette.red
let s:string_color    = g:asuna_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:asuna_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:asuna_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:asuna_light_bold')
  let g:asuna_light_bold = 1
endif

if !exists('g:asuna_light_italic')
  let g:asuna_light_italic = 1
endif

if !exists('g:asuna_light_underline')
  let g:asuna_light_underline = 1
endif

if !exists('g:asuna_light_undercurl') && g:asuna_light_underline != 0
  let g:asuna_light_undercurl = 1
endif

if !exists('g:asuna_light_inverse')
  let g:asuna_light_inverse = 1
endif

if !exists('g:asuna_light_colorterm')
  let g:asuna_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:asuna_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:asuna_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:asuna_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:asuna_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:asuna_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('AsunaLightBgLight', s:none, s:bglight)
call s:h('AsunaLightBgLighter', s:none, s:bglighter)
call s:h('AsunaLightBgDark', s:none, s:bgdark)
call s:h('AsunaLightBgDarker', s:none, s:bgdarker)

call s:h('AsunaLightFg', s:fg)
call s:h('AsunaLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('AsunaLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('AsunaLightComment', s:comment)
call s:h('AsunaLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('AsunaLightSelection', s:none, s:selection)

call s:h('AsunaLightSubtle', s:subtle)

call s:h('AsunaLightKeyColor', s:key_color)
call s:h('AsunaLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('AsunaLightClassName', s:class_name)
call s:h('AsunaLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('AsunaLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('AsunaLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('AsunaLightParameter', s:parameter_color)
call s:h('AsunaLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('AsunaLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('AsunaLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('AsunaLightParameterInverse', s:bg, s:parameter_color)

call s:h('AsunaLightKeyword', s:keyword_color)
call s:h('AsunaLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('AsunaLightConstants', s:constants_color)
call s:h('AsunaLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('AsunaLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('AsunaLightRed', s:red)
call s:h('AsunaLightRedInverse', s:fg, s:red)

call s:h('AsunaLightStringColor', s:string_color)
call s:h('AsunaLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('AsunaLightError', s:red, s:none, [], s:red)

call s:h('AsunaLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('AsunaLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('AsunaLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('AsunaLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('AsunaLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('AsunaLightBoundary', s:comment, s:bgdark)
call s:h('AsunaLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('AsunaLightDiffChange', s:parameter_color, s:none)
call s:h('AsunaLightDiffText', s:bg, s:parameter_color)
call s:h('AsunaLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:asuna_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  AsunaLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr AsunaLightStringColor
hi! link DiffAdd      AsunaLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   AsunaLightDiffChange
hi! link DiffDelete   AsunaLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     AsunaLightDiffText
hi! link Directory    AsunaLightConstantsBold
hi! link ErrorMsg     AsunaLightRedInverse
hi! link FoldColumn   AsunaLightSubtle
hi! link Folded       AsunaLightBoundary
hi! link IncSearch    AsunaLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      AsunaLightFgBold
hi! link NonText      AsunaLightSubtle
" hi! link Pmenu        AsunaLightBgDark
" hi! link PmenuSbar    AsunaLightBgDark
hi! link PmenuSel     AsunaLightSelection
hi! link PmenuThumb   AsunaLightSelection
hi! link Question     AsunaLightFgBold
hi! link Search       AsunaLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      AsunaLightBoundary
" hi! link TabLineFill  AsunaLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        AsunaLightClassNameBold
hi! link VertSplit    AsunaLightBoundary
hi! link Visual       AsunaLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   AsunaLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey AsunaLightRed
  hi! link LspDiagnosticsUnderline AsunaLightFgUnderline
  hi! link LspDiagnosticsInformation AsunaLightKeyColor
  hi! link LspDiagnosticsHint AsunaLightKeyColor
  hi! link LspDiagnosticsError AsunaLightError
  hi! link LspDiagnosticsWarning AsunaLightParameter
  hi! link LspDiagnosticsUnderlineError AsunaLightErrorLine
  hi! link LspDiagnosticsUnderlineHint AsunaLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation AsunaLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning AsunaLightWarnLine
else
  hi! link SpecialKey AsunaLightSubtle
endif

hi! link Comment AsunaLightComment
hi! link Underlined AsunaLightFgUnderline
hi! link Todo AsunaLightTodo

hi! link Error AsunaLightError
hi! link SpellBad AsunaLightErrorLine
hi! link SpellLocal AsunaLightWarnLine
hi! link SpellCap AsunaLightInfoLine
hi! link SpellRare AsunaLightInfoLine

hi! link Constant AsunaLightConstants
hi! link String AsunaLightStringColor
hi! link Character AsunaLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier AsunaLightFg
hi! link Function AsunaLightClassName

hi! link Statement AsunaLightKeyword
hi! link Conditional AsunaLightKeyword
hi! link Repeat AsunaLightKeyword
hi! link Label AsunaLightKeyword
hi! link Operator AsunaLightKeyword
hi! link Keyword AsunaLightKeyword
hi! link Exception AsunaLightKeyword

hi! link PreProc AsunaLightKeyword
hi! link Include AsunaLightKeyword
hi! link Define AsunaLightKeyword
hi! link Macro AsunaLightKeyword
hi! link PreCondit AsunaLightKeyword
hi! link StorageClass AsunaLightKeyword
hi! link Structure AsunaLightKeyword
hi! link Typedef AsunaLightKeyword

hi! link Type AsunaLightKeyColorItalic

hi! link Delimiter AsunaLightFg

hi! link Special AsunaLightKeyword
hi! link SpecialComment AsunaLightKeyColorItalic
hi! link Tag AsunaLightKeyColor
hi! link helpHyperTextJump AsunaLightLink
hi! link helpCommand AsunaLightConstants
hi! link helpExample AsunaLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
