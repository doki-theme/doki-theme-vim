" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'sayori_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:sayori_light#palette.fg

let s:bglighter = g:sayori_light#palette.bglighter
let s:bglight   = g:sayori_light#palette.bglight
let s:bg        = g:sayori_light#palette.bg
let s:bgdark    = g:sayori_light#palette.bgdark
let s:bgdarker  = g:sayori_light#palette.bgdarker

let s:comment   = g:sayori_light#palette.comment
let s:selection = g:sayori_light#palette.selection
let s:subtle    = g:sayori_light#palette.subtle

let s:key_color      = g:sayori_light#palette.key_color
let s:class_name     = g:sayori_light#palette.class_name
let s:parameter_color    = g:sayori_light#palette.parameter_color
let s:keyword_color      = g:sayori_light#palette.keyword_color
let s:constants_color    = g:sayori_light#palette.constants_color
let s:red       = g:sayori_light#palette.red
let s:string_color    = g:sayori_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:sayori_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:sayori_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:sayori_light_bold')
  let g:sayori_light_bold = 1
endif

if !exists('g:sayori_light_italic')
  let g:sayori_light_italic = 1
endif

if !exists('g:sayori_light_underline')
  let g:sayori_light_underline = 1
endif

if !exists('g:sayori_light_undercurl') && g:sayori_light_underline != 0
  let g:sayori_light_undercurl = 1
endif

if !exists('g:sayori_light_inverse')
  let g:sayori_light_inverse = 1
endif

if !exists('g:sayori_light_colorterm')
  let g:sayori_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:sayori_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:sayori_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:sayori_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:sayori_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:sayori_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('SayoriLightBgLight', s:none, s:bglight)
call s:h('SayoriLightBgLighter', s:none, s:bglighter)
call s:h('SayoriLightBgDark', s:none, s:bgdark)
call s:h('SayoriLightBgDarker', s:none, s:bgdarker)

call s:h('SayoriLightFg', s:fg)
call s:h('SayoriLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('SayoriLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('SayoriLightComment', s:comment)
call s:h('SayoriLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('SayoriLightSelection', s:none, s:selection)

call s:h('SayoriLightSubtle', s:subtle)

call s:h('SayoriLightKeyColor', s:key_color)
call s:h('SayoriLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('SayoriLightClassName', s:class_name)
call s:h('SayoriLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('SayoriLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('SayoriLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('SayoriLightParameter', s:parameter_color)
call s:h('SayoriLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('SayoriLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('SayoriLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('SayoriLightParameterInverse', s:bg, s:parameter_color)

call s:h('SayoriLightKeyword', s:keyword_color)
call s:h('SayoriLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('SayoriLightConstants', s:constants_color)
call s:h('SayoriLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('SayoriLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('SayoriLightRed', s:red)
call s:h('SayoriLightRedInverse', s:fg, s:red)

call s:h('SayoriLightStringColor', s:string_color)
call s:h('SayoriLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('SayoriLightError', s:red, s:none, [], s:red)

call s:h('SayoriLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('SayoriLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('SayoriLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('SayoriLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('SayoriLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('SayoriLightBoundary', s:comment, s:bgdark)
call s:h('SayoriLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('SayoriLightDiffChange', s:parameter_color, s:none)
call s:h('SayoriLightDiffText', s:bg, s:parameter_color)
call s:h('SayoriLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:sayori_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  SayoriLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr SayoriLightStringColor
hi! link DiffAdd      SayoriLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   SayoriLightDiffChange
hi! link DiffDelete   SayoriLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     SayoriLightDiffText
hi! link Directory    SayoriLightConstantsBold
hi! link ErrorMsg     SayoriLightRedInverse
hi! link FoldColumn   SayoriLightSubtle
hi! link Folded       SayoriLightBoundary
hi! link IncSearch    SayoriLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      SayoriLightFgBold
hi! link NonText      SayoriLightSubtle
" hi! link Pmenu        SayoriLightBgDark
" hi! link PmenuSbar    SayoriLightBgDark
hi! link PmenuSel     SayoriLightSelection
hi! link PmenuThumb   SayoriLightSelection
hi! link Question     SayoriLightFgBold
hi! link Search       SayoriLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      SayoriLightBoundary
" hi! link TabLineFill  SayoriLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        SayoriLightClassNameBold
hi! link VertSplit    SayoriLightBoundary
hi! link Visual       SayoriLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   SayoriLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey SayoriLightRed
  hi! link LspDiagnosticsUnderline SayoriLightFgUnderline
  hi! link LspDiagnosticsInformation SayoriLightKeyColor
  hi! link LspDiagnosticsHint SayoriLightKeyColor
  hi! link LspDiagnosticsError SayoriLightError
  hi! link LspDiagnosticsWarning SayoriLightParameter
  hi! link LspDiagnosticsUnderlineError SayoriLightErrorLine
  hi! link LspDiagnosticsUnderlineHint SayoriLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation SayoriLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning SayoriLightWarnLine
else
  hi! link SpecialKey SayoriLightSubtle
endif

hi! link Comment SayoriLightComment
hi! link Underlined SayoriLightFgUnderline
hi! link Todo SayoriLightTodo

hi! link Error SayoriLightError
hi! link SpellBad SayoriLightErrorLine
hi! link SpellLocal SayoriLightWarnLine
hi! link SpellCap SayoriLightInfoLine
hi! link SpellRare SayoriLightInfoLine

hi! link Constant SayoriLightConstants
hi! link String SayoriLightStringColor
hi! link Character SayoriLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier SayoriLightFg
hi! link Function SayoriLightClassName

hi! link Statement SayoriLightKeyword
hi! link Conditional SayoriLightKeyword
hi! link Repeat SayoriLightKeyword
hi! link Label SayoriLightKeyword
hi! link Operator SayoriLightKeyword
hi! link Keyword SayoriLightKeyword
hi! link Exception SayoriLightKeyword

hi! link PreProc SayoriLightKeyword
hi! link Include SayoriLightKeyword
hi! link Define SayoriLightKeyword
hi! link Macro SayoriLightKeyword
hi! link PreCondit SayoriLightKeyword
hi! link StorageClass SayoriLightKeyword
hi! link Structure SayoriLightKeyword
hi! link Typedef SayoriLightKeyword

hi! link Type SayoriLightKeyColorItalic

hi! link Delimiter SayoriLightFg

hi! link Special SayoriLightKeyword
hi! link SpecialComment SayoriLightKeyColorItalic
hi! link Tag SayoriLightKeyColor
hi! link helpHyperTextJump SayoriLightLink
hi! link helpCommand SayoriLightConstants
hi! link helpExample SayoriLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
