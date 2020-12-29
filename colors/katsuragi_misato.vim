" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'katsuragi_misato'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:katsuragi_misato#palette.fg

let s:bglighter = g:katsuragi_misato#palette.bglighter
let s:bglight   = g:katsuragi_misato#palette.bglight
let s:bg        = g:katsuragi_misato#palette.bg
let s:bgdark    = g:katsuragi_misato#palette.bgdark
let s:bgdarker  = g:katsuragi_misato#palette.bgdarker

let s:comment   = g:katsuragi_misato#palette.comment
let s:selection = g:katsuragi_misato#palette.selection
let s:subtle    = g:katsuragi_misato#palette.subtle

let s:key_color      = g:katsuragi_misato#palette.key_color
let s:class_name     = g:katsuragi_misato#palette.class_name
let s:parameter_color    = g:katsuragi_misato#palette.parameter_color
let s:keyword_color      = g:katsuragi_misato#palette.keyword_color
let s:constants_color    = g:katsuragi_misato#palette.constants_color
let s:red       = g:katsuragi_misato#palette.red
let s:string_color    = g:katsuragi_misato#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:katsuragi_misato#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:katsuragi_misato#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:katsuragi_misato_bold')
  let g:katsuragi_misato_bold = 1
endif

if !exists('g:katsuragi_misato_italic')
  let g:katsuragi_misato_italic = 1
endif

if !exists('g:katsuragi_misato_underline')
  let g:katsuragi_misato_underline = 1
endif

if !exists('g:katsuragi_misato_undercurl') && g:katsuragi_misato_underline != 0
  let g:katsuragi_misato_undercurl = 1
endif

if !exists('g:katsuragi_misato_inverse')
  let g:katsuragi_misato_inverse = 1
endif

if !exists('g:katsuragi_misato_colorterm')
  let g:katsuragi_misato_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:katsuragi_misato_bold == 1 ? 'bold' : 0,
      \ 'italic': g:katsuragi_misato_italic == 1 ? 'italic' : 0,
      \ 'underline': g:katsuragi_misato_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:katsuragi_misato_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:katsuragi_misato_inverse == 1 ? 'inverse' : 0,
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

call s:h('KatsuragiMisatoBgLight', s:none, s:bglight)
call s:h('KatsuragiMisatoBgLighter', s:none, s:bglighter)
call s:h('KatsuragiMisatoBgDark', s:none, s:bgdark)
call s:h('KatsuragiMisatoBgDarker', s:none, s:bgdarker)

call s:h('KatsuragiMisatoFg', s:fg)
call s:h('KatsuragiMisatoFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('KatsuragiMisatoFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('KatsuragiMisatoComment', s:comment)
call s:h('KatsuragiMisatoCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('KatsuragiMisatoSelection', s:none, s:selection)

call s:h('KatsuragiMisatoSubtle', s:subtle)

call s:h('KatsuragiMisatoKeyColor', s:key_color)
call s:h('KatsuragiMisatoKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('KatsuragiMisatoClassName', s:class_name)
call s:h('KatsuragiMisatoClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('KatsuragiMisatoClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('KatsuragiMisatoClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('KatsuragiMisatoParameter', s:parameter_color)
call s:h('KatsuragiMisatoParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('KatsuragiMisatoParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('KatsuragiMisatoParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('KatsuragiMisatoParameterInverse', s:bg, s:parameter_color)

call s:h('KatsuragiMisatoKeyword', s:keyword_color)
call s:h('KatsuragiMisatoKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('KatsuragiMisatoConstants', s:constants_color)
call s:h('KatsuragiMisatoConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('KatsuragiMisatoConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('KatsuragiMisatoRed', s:red)
call s:h('KatsuragiMisatoRedInverse', s:fg, s:red)

call s:h('KatsuragiMisatoStringColor', s:string_color)
call s:h('KatsuragiMisatoStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('KatsuragiMisatoError', s:red, s:none, [], s:red)

call s:h('KatsuragiMisatoErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('KatsuragiMisatoWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('KatsuragiMisatoInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('KatsuragiMisatoTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('KatsuragiMisatoSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('KatsuragiMisatoBoundary', s:comment, s:bgdark)
call s:h('KatsuragiMisatoLink', s:key_color, s:none, [s:attrs.underline])

call s:h('KatsuragiMisatoDiffChange', s:parameter_color, s:none)
call s:h('KatsuragiMisatoDiffText', s:bg, s:parameter_color)
call s:h('KatsuragiMisatoDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:katsuragi_misato_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  KatsuragiMisatoBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr KatsuragiMisatoStringColor
hi! link DiffAdd      KatsuragiMisatoClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   KatsuragiMisatoDiffChange
hi! link DiffDelete   KatsuragiMisatoDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     KatsuragiMisatoDiffText
hi! link Directory    KatsuragiMisatoConstantsBold
hi! link ErrorMsg     KatsuragiMisatoRedInverse
hi! link FoldColumn   KatsuragiMisatoSubtle
hi! link Folded       KatsuragiMisatoBoundary
hi! link IncSearch    KatsuragiMisatoParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      KatsuragiMisatoFgBold
hi! link NonText      KatsuragiMisatoSubtle
" hi! link Pmenu        KatsuragiMisatoBgDark
" hi! link PmenuSbar    KatsuragiMisatoBgDark
hi! link PmenuSel     KatsuragiMisatoSelection
hi! link PmenuThumb   KatsuragiMisatoSelection
hi! link Question     KatsuragiMisatoFgBold
hi! link Search       KatsuragiMisatoSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      KatsuragiMisatoBoundary
" hi! link TabLineFill  KatsuragiMisatoBgDarker
hi! link TabLineSel   Normal
hi! link Title        KatsuragiMisatoClassNameBold
hi! link VertSplit    KatsuragiMisatoBoundary
hi! link Visual       KatsuragiMisatoSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   KatsuragiMisatoParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey KatsuragiMisatoRed
  hi! link LspDiagnosticsUnderline KatsuragiMisatoFgUnderline
  hi! link LspDiagnosticsInformation KatsuragiMisatoKeyColor
  hi! link LspDiagnosticsHint KatsuragiMisatoKeyColor
  hi! link LspDiagnosticsError KatsuragiMisatoError
  hi! link LspDiagnosticsWarning KatsuragiMisatoParameter
  hi! link LspDiagnosticsUnderlineError KatsuragiMisatoErrorLine
  hi! link LspDiagnosticsUnderlineHint KatsuragiMisatoInfoLine
  hi! link LspDiagnosticsUnderlineInformation KatsuragiMisatoInfoLine
  hi! link LspDiagnosticsUnderlineWarning KatsuragiMisatoWarnLine
else
  hi! link SpecialKey KatsuragiMisatoSubtle
endif

hi! link Comment KatsuragiMisatoComment
hi! link Underlined KatsuragiMisatoFgUnderline
hi! link Todo KatsuragiMisatoTodo

hi! link Error KatsuragiMisatoError
hi! link SpellBad KatsuragiMisatoErrorLine
hi! link SpellLocal KatsuragiMisatoWarnLine
hi! link SpellCap KatsuragiMisatoInfoLine
hi! link SpellRare KatsuragiMisatoInfoLine

hi! link Constant KatsuragiMisatoConstants
hi! link String KatsuragiMisatoStringColor
hi! link Character KatsuragiMisatoKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier KatsuragiMisatoFg
hi! link Function KatsuragiMisatoClassName

hi! link Statement KatsuragiMisatoKeyword
hi! link Conditional KatsuragiMisatoKeyword
hi! link Repeat KatsuragiMisatoKeyword
hi! link Label KatsuragiMisatoKeyword
hi! link Operator KatsuragiMisatoKeyword
hi! link Keyword KatsuragiMisatoKeyword
hi! link Exception KatsuragiMisatoKeyword

hi! link PreProc KatsuragiMisatoKeyword
hi! link Include KatsuragiMisatoKeyword
hi! link Define KatsuragiMisatoKeyword
hi! link Macro KatsuragiMisatoKeyword
hi! link PreCondit KatsuragiMisatoKeyword
hi! link StorageClass KatsuragiMisatoKeyword
hi! link Structure KatsuragiMisatoKeyword
hi! link Typedef KatsuragiMisatoKeyword

hi! link Type KatsuragiMisatoKeyColorItalic

hi! link Delimiter KatsuragiMisatoFg

hi! link Special KatsuragiMisatoKeyword
hi! link SpecialComment KatsuragiMisatoKeyColorItalic
hi! link Tag KatsuragiMisatoKeyColor
hi! link helpHyperTextJump KatsuragiMisatoLink
hi! link helpCommand KatsuragiMisatoConstants
hi! link helpExample KatsuragiMisatoClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
