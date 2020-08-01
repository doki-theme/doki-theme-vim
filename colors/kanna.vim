" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'kanna'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:kanna#palette.fg

let s:bglighter = g:kanna#palette.bglighter
let s:bglight   = g:kanna#palette.bglight
let s:bg        = g:kanna#palette.bg
let s:bgdark    = g:kanna#palette.bgdark
let s:bgdarker  = g:kanna#palette.bgdarker

let s:comment   = g:kanna#palette.comment
let s:selection = g:kanna#palette.selection
let s:subtle    = g:kanna#palette.subtle

let s:key_color      = g:kanna#palette.key_color
let s:class_name     = g:kanna#palette.class_name
let s:parameter_color    = g:kanna#palette.parameter_color
let s:keyword_color      = g:kanna#palette.keyword_color
let s:constants_color    = g:kanna#palette.constants_color
let s:red       = g:kanna#palette.red
let s:string_color    = g:kanna#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:kanna#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:kanna#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:kanna_bold')
  let g:kanna_bold = 1
endif

if !exists('g:kanna_italic')
  let g:kanna_italic = 1
endif

if !exists('g:kanna_underline')
  let g:kanna_underline = 1
endif

if !exists('g:kanna_undercurl') && g:kanna_underline != 0
  let g:kanna_undercurl = 1
endif

if !exists('g:kanna_inverse')
  let g:kanna_inverse = 1
endif

if !exists('g:kanna_colorterm')
  let g:kanna_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:kanna_bold == 1 ? 'bold' : 0,
      \ 'italic': g:kanna_italic == 1 ? 'italic' : 0,
      \ 'underline': g:kanna_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:kanna_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:kanna_inverse == 1 ? 'inverse' : 0,
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

call s:h('KannaBgLight', s:none, s:bglight)
call s:h('KannaBgLighter', s:none, s:bglighter)
call s:h('KannaBgDark', s:none, s:bgdark)
call s:h('KannaBgDarker', s:none, s:bgdarker)

call s:h('KannaFg', s:fg)
call s:h('KannaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('KannaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('KannaComment', s:comment)
call s:h('KannaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('KannaSelection', s:none, s:selection)

call s:h('KannaSubtle', s:subtle)

call s:h('KannaKeyColor', s:key_color)
call s:h('KannaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('KannaClassName', s:class_name)
call s:h('KannaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('KannaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('KannaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('KannaParameter', s:parameter_color)
call s:h('KannaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('KannaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('KannaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('KannaParameterInverse', s:bg, s:parameter_color)

call s:h('KannaKeyword', s:keyword_color)
call s:h('KannaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('KannaConstants', s:constants_color)
call s:h('KannaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('KannaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('KannaRed', s:red)
call s:h('KannaRedInverse', s:fg, s:red)

call s:h('KannaStringColor', s:string_color)
call s:h('KannaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('KannaError', s:red, s:none, [], s:red)

call s:h('KannaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('KannaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('KannaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('KannaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('KannaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('KannaBoundary', s:comment, s:bgdark)
call s:h('KannaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('KannaDiffChange', s:parameter_color, s:none)
call s:h('KannaDiffText', s:bg, s:parameter_color)
call s:h('KannaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:kanna_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  KannaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr KannaStringColor
hi! link DiffAdd      KannaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   KannaDiffChange
hi! link DiffDelete   KannaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     KannaDiffText
hi! link Directory    KannaConstantsBold
hi! link ErrorMsg     KannaRedInverse
hi! link FoldColumn   KannaSubtle
hi! link Folded       KannaBoundary
hi! link IncSearch    KannaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      KannaFgBold
hi! link NonText      KannaSubtle
" hi! link Pmenu        KannaBgDark
" hi! link PmenuSbar    KannaBgDark
hi! link PmenuSel     KannaSelection
hi! link PmenuThumb   KannaSelection
hi! link Question     KannaFgBold
hi! link Search       KannaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      KannaBoundary
" hi! link TabLineFill  KannaBgDarker
hi! link TabLineSel   Normal
hi! link Title        KannaClassNameBold
hi! link VertSplit    KannaBoundary
hi! link Visual       KannaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   KannaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey KannaRed
  hi! link LspDiagnosticsUnderline KannaFgUnderline
  hi! link LspDiagnosticsInformation KannaKeyColor
  hi! link LspDiagnosticsHint KannaKeyColor
  hi! link LspDiagnosticsError KannaError
  hi! link LspDiagnosticsWarning KannaParameter
  hi! link LspDiagnosticsUnderlineError KannaErrorLine
  hi! link LspDiagnosticsUnderlineHint KannaInfoLine
  hi! link LspDiagnosticsUnderlineInformation KannaInfoLine
  hi! link LspDiagnosticsUnderlineWarning KannaWarnLine
else
  hi! link SpecialKey KannaSubtle
endif

hi! link Comment KannaComment
hi! link Underlined KannaFgUnderline
hi! link Todo KannaTodo

hi! link Error KannaError
hi! link SpellBad KannaErrorLine
hi! link SpellLocal KannaWarnLine
hi! link SpellCap KannaInfoLine
hi! link SpellRare KannaInfoLine

hi! link Constant KannaConstants
hi! link String KannaStringColor
hi! link Character KannaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier KannaFg
hi! link Function KannaClassName

hi! link Statement KannaKeyword
hi! link Conditional KannaKeyword
hi! link Repeat KannaKeyword
hi! link Label KannaKeyword
hi! link Operator KannaKeyword
hi! link Keyword KannaKeyword
hi! link Exception KannaKeyword

hi! link PreProc KannaKeyword
hi! link Include KannaKeyword
hi! link Define KannaKeyword
hi! link Macro KannaKeyword
hi! link PreCondit KannaKeyword
hi! link StorageClass KannaKeyword
hi! link Structure KannaKeyword
hi! link Typedef KannaKeyword

hi! link Type KannaKeyColorItalic

hi! link Delimiter KannaFg

hi! link Special KannaKeyword
hi! link SpecialComment KannaKeyColorItalic
hi! link Tag KannaKeyColor
hi! link helpHyperTextJump KannaLink
hi! link helpCommand KannaConstants
hi! link helpExample KannaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
