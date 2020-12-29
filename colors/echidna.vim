" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'echidna'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:echidna#palette.fg

let s:bglighter = g:echidna#palette.bglighter
let s:bglight   = g:echidna#palette.bglight
let s:bg        = g:echidna#palette.bg
let s:bgdark    = g:echidna#palette.bgdark
let s:bgdarker  = g:echidna#palette.bgdarker

let s:comment   = g:echidna#palette.comment
let s:selection = g:echidna#palette.selection
let s:subtle    = g:echidna#palette.subtle

let s:key_color      = g:echidna#palette.key_color
let s:class_name     = g:echidna#palette.class_name
let s:parameter_color    = g:echidna#palette.parameter_color
let s:keyword_color      = g:echidna#palette.keyword_color
let s:constants_color    = g:echidna#palette.constants_color
let s:red       = g:echidna#palette.red
let s:string_color    = g:echidna#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:echidna#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:echidna#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:echidna_bold')
  let g:echidna_bold = 1
endif

if !exists('g:echidna_italic')
  let g:echidna_italic = 1
endif

if !exists('g:echidna_underline')
  let g:echidna_underline = 1
endif

if !exists('g:echidna_undercurl') && g:echidna_underline != 0
  let g:echidna_undercurl = 1
endif

if !exists('g:echidna_inverse')
  let g:echidna_inverse = 1
endif

if !exists('g:echidna_colorterm')
  let g:echidna_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:echidna_bold == 1 ? 'bold' : 0,
      \ 'italic': g:echidna_italic == 1 ? 'italic' : 0,
      \ 'underline': g:echidna_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:echidna_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:echidna_inverse == 1 ? 'inverse' : 0,
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

call s:h('EchidnaBgLight', s:none, s:bglight)
call s:h('EchidnaBgLighter', s:none, s:bglighter)
call s:h('EchidnaBgDark', s:none, s:bgdark)
call s:h('EchidnaBgDarker', s:none, s:bgdarker)

call s:h('EchidnaFg', s:fg)
call s:h('EchidnaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('EchidnaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('EchidnaComment', s:comment)
call s:h('EchidnaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('EchidnaSelection', s:none, s:selection)

call s:h('EchidnaSubtle', s:subtle)

call s:h('EchidnaKeyColor', s:key_color)
call s:h('EchidnaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('EchidnaClassName', s:class_name)
call s:h('EchidnaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('EchidnaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('EchidnaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('EchidnaParameter', s:parameter_color)
call s:h('EchidnaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('EchidnaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('EchidnaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('EchidnaParameterInverse', s:bg, s:parameter_color)

call s:h('EchidnaKeyword', s:keyword_color)
call s:h('EchidnaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('EchidnaConstants', s:constants_color)
call s:h('EchidnaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('EchidnaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('EchidnaRed', s:red)
call s:h('EchidnaRedInverse', s:fg, s:red)

call s:h('EchidnaStringColor', s:string_color)
call s:h('EchidnaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('EchidnaError', s:red, s:none, [], s:red)

call s:h('EchidnaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('EchidnaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('EchidnaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('EchidnaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('EchidnaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('EchidnaBoundary', s:comment, s:bgdark)
call s:h('EchidnaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('EchidnaDiffChange', s:parameter_color, s:none)
call s:h('EchidnaDiffText', s:bg, s:parameter_color)
call s:h('EchidnaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:echidna_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  EchidnaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr EchidnaStringColor
hi! link DiffAdd      EchidnaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   EchidnaDiffChange
hi! link DiffDelete   EchidnaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     EchidnaDiffText
hi! link Directory    EchidnaConstantsBold
hi! link ErrorMsg     EchidnaRedInverse
hi! link FoldColumn   EchidnaSubtle
hi! link Folded       EchidnaBoundary
hi! link IncSearch    EchidnaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      EchidnaFgBold
hi! link NonText      EchidnaSubtle
" hi! link Pmenu        EchidnaBgDark
" hi! link PmenuSbar    EchidnaBgDark
hi! link PmenuSel     EchidnaSelection
hi! link PmenuThumb   EchidnaSelection
hi! link Question     EchidnaFgBold
hi! link Search       EchidnaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      EchidnaBoundary
" hi! link TabLineFill  EchidnaBgDarker
hi! link TabLineSel   Normal
hi! link Title        EchidnaClassNameBold
hi! link VertSplit    EchidnaBoundary
hi! link Visual       EchidnaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   EchidnaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey EchidnaRed
  hi! link LspDiagnosticsUnderline EchidnaFgUnderline
  hi! link LspDiagnosticsInformation EchidnaKeyColor
  hi! link LspDiagnosticsHint EchidnaKeyColor
  hi! link LspDiagnosticsError EchidnaError
  hi! link LspDiagnosticsWarning EchidnaParameter
  hi! link LspDiagnosticsUnderlineError EchidnaErrorLine
  hi! link LspDiagnosticsUnderlineHint EchidnaInfoLine
  hi! link LspDiagnosticsUnderlineInformation EchidnaInfoLine
  hi! link LspDiagnosticsUnderlineWarning EchidnaWarnLine
else
  hi! link SpecialKey EchidnaSubtle
endif

hi! link Comment EchidnaComment
hi! link Underlined EchidnaFgUnderline
hi! link Todo EchidnaTodo

hi! link Error EchidnaError
hi! link SpellBad EchidnaErrorLine
hi! link SpellLocal EchidnaWarnLine
hi! link SpellCap EchidnaInfoLine
hi! link SpellRare EchidnaInfoLine

hi! link Constant EchidnaConstants
hi! link String EchidnaStringColor
hi! link Character EchidnaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier EchidnaFg
hi! link Function EchidnaClassName

hi! link Statement EchidnaKeyword
hi! link Conditional EchidnaKeyword
hi! link Repeat EchidnaKeyword
hi! link Label EchidnaKeyword
hi! link Operator EchidnaKeyword
hi! link Keyword EchidnaKeyword
hi! link Exception EchidnaKeyword

hi! link PreProc EchidnaKeyword
hi! link Include EchidnaKeyword
hi! link Define EchidnaKeyword
hi! link Macro EchidnaKeyword
hi! link PreCondit EchidnaKeyword
hi! link StorageClass EchidnaKeyword
hi! link Structure EchidnaKeyword
hi! link Typedef EchidnaKeyword

hi! link Type EchidnaKeyColorItalic

hi! link Delimiter EchidnaFg

hi! link Special EchidnaKeyword
hi! link SpecialComment EchidnaKeyColorItalic
hi! link Tag EchidnaKeyColor
hi! link helpHyperTextJump EchidnaLink
hi! link helpCommand EchidnaConstants
hi! link helpExample EchidnaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
