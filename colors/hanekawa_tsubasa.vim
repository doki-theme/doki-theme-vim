" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'hanekawa_tsubasa'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:hanekawa_tsubasa#palette.fg

let s:bglighter = g:hanekawa_tsubasa#palette.bglighter
let s:bglight   = g:hanekawa_tsubasa#palette.bglight
let s:bg        = g:hanekawa_tsubasa#palette.bg
let s:bgdark    = g:hanekawa_tsubasa#palette.bgdark
let s:bgdarker  = g:hanekawa_tsubasa#palette.bgdarker

let s:comment   = g:hanekawa_tsubasa#palette.comment
let s:selection = g:hanekawa_tsubasa#palette.selection
let s:subtle    = g:hanekawa_tsubasa#palette.subtle

let s:key_color      = g:hanekawa_tsubasa#palette.key_color
let s:class_name     = g:hanekawa_tsubasa#palette.class_name
let s:parameter_color    = g:hanekawa_tsubasa#palette.parameter_color
let s:keyword_color      = g:hanekawa_tsubasa#palette.keyword_color
let s:constants_color    = g:hanekawa_tsubasa#palette.constants_color
let s:red       = g:hanekawa_tsubasa#palette.red
let s:string_color    = g:hanekawa_tsubasa#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:hanekawa_tsubasa#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:hanekawa_tsubasa#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:hanekawa_tsubasa_bold')
  let g:hanekawa_tsubasa_bold = 1
endif

if !exists('g:hanekawa_tsubasa_italic')
  let g:hanekawa_tsubasa_italic = 1
endif

if !exists('g:hanekawa_tsubasa_underline')
  let g:hanekawa_tsubasa_underline = 1
endif

if !exists('g:hanekawa_tsubasa_undercurl') && g:hanekawa_tsubasa_underline != 0
  let g:hanekawa_tsubasa_undercurl = 1
endif

if !exists('g:hanekawa_tsubasa_inverse')
  let g:hanekawa_tsubasa_inverse = 1
endif

if !exists('g:hanekawa_tsubasa_colorterm')
  let g:hanekawa_tsubasa_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:hanekawa_tsubasa_bold == 1 ? 'bold' : 0,
      \ 'italic': g:hanekawa_tsubasa_italic == 1 ? 'italic' : 0,
      \ 'underline': g:hanekawa_tsubasa_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:hanekawa_tsubasa_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:hanekawa_tsubasa_inverse == 1 ? 'inverse' : 0,
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

call s:h('HanekawaTsubasaBgLight', s:none, s:bglight)
call s:h('HanekawaTsubasaBgLighter', s:none, s:bglighter)
call s:h('HanekawaTsubasaBgDark', s:none, s:bgdark)
call s:h('HanekawaTsubasaBgDarker', s:none, s:bgdarker)

call s:h('HanekawaTsubasaFg', s:fg)
call s:h('HanekawaTsubasaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('HanekawaTsubasaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('HanekawaTsubasaComment', s:comment)
call s:h('HanekawaTsubasaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('HanekawaTsubasaSelection', s:none, s:selection)

call s:h('HanekawaTsubasaSubtle', s:subtle)

call s:h('HanekawaTsubasaKeyColor', s:key_color)
call s:h('HanekawaTsubasaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('HanekawaTsubasaClassName', s:class_name)
call s:h('HanekawaTsubasaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('HanekawaTsubasaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('HanekawaTsubasaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('HanekawaTsubasaParameter', s:parameter_color)
call s:h('HanekawaTsubasaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('HanekawaTsubasaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('HanekawaTsubasaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('HanekawaTsubasaParameterInverse', s:bg, s:parameter_color)

call s:h('HanekawaTsubasaKeyword', s:keyword_color)
call s:h('HanekawaTsubasaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('HanekawaTsubasaConstants', s:constants_color)
call s:h('HanekawaTsubasaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('HanekawaTsubasaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('HanekawaTsubasaRed', s:red)
call s:h('HanekawaTsubasaRedInverse', s:fg, s:red)

call s:h('HanekawaTsubasaStringColor', s:string_color)
call s:h('HanekawaTsubasaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('HanekawaTsubasaError', s:red, s:none, [], s:red)

call s:h('HanekawaTsubasaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('HanekawaTsubasaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('HanekawaTsubasaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('HanekawaTsubasaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('HanekawaTsubasaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('HanekawaTsubasaBoundary', s:comment, s:bgdark)
call s:h('HanekawaTsubasaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('HanekawaTsubasaDiffChange', s:parameter_color, s:none)
call s:h('HanekawaTsubasaDiffText', s:bg, s:parameter_color)
call s:h('HanekawaTsubasaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:hanekawa_tsubasa_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  HanekawaTsubasaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr HanekawaTsubasaStringColor
hi! link DiffAdd      HanekawaTsubasaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   HanekawaTsubasaDiffChange
hi! link DiffDelete   HanekawaTsubasaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     HanekawaTsubasaDiffText
hi! link Directory    HanekawaTsubasaConstantsBold
hi! link ErrorMsg     HanekawaTsubasaRedInverse
hi! link FoldColumn   HanekawaTsubasaSubtle
hi! link Folded       HanekawaTsubasaBoundary
hi! link IncSearch    HanekawaTsubasaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      HanekawaTsubasaFgBold
hi! link NonText      HanekawaTsubasaSubtle
" hi! link Pmenu        HanekawaTsubasaBgDark
" hi! link PmenuSbar    HanekawaTsubasaBgDark
hi! link PmenuSel     HanekawaTsubasaSelection
hi! link PmenuThumb   HanekawaTsubasaSelection
hi! link Question     HanekawaTsubasaFgBold
hi! link Search       HanekawaTsubasaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      HanekawaTsubasaBoundary
" hi! link TabLineFill  HanekawaTsubasaBgDarker
hi! link TabLineSel   Normal
hi! link Title        HanekawaTsubasaClassNameBold
hi! link VertSplit    HanekawaTsubasaBoundary
hi! link Visual       HanekawaTsubasaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   HanekawaTsubasaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey HanekawaTsubasaRed
  hi! link LspDiagnosticsUnderline HanekawaTsubasaFgUnderline
  hi! link LspDiagnosticsInformation HanekawaTsubasaKeyColor
  hi! link LspDiagnosticsHint HanekawaTsubasaKeyColor
  hi! link LspDiagnosticsError HanekawaTsubasaError
  hi! link LspDiagnosticsWarning HanekawaTsubasaParameter
  hi! link LspDiagnosticsUnderlineError HanekawaTsubasaErrorLine
  hi! link LspDiagnosticsUnderlineHint HanekawaTsubasaInfoLine
  hi! link LspDiagnosticsUnderlineInformation HanekawaTsubasaInfoLine
  hi! link LspDiagnosticsUnderlineWarning HanekawaTsubasaWarnLine
else
  hi! link SpecialKey HanekawaTsubasaSubtle
endif

hi! link Comment HanekawaTsubasaComment
hi! link Underlined HanekawaTsubasaFgUnderline
hi! link Todo HanekawaTsubasaTodo

hi! link Error HanekawaTsubasaError
hi! link SpellBad HanekawaTsubasaErrorLine
hi! link SpellLocal HanekawaTsubasaWarnLine
hi! link SpellCap HanekawaTsubasaInfoLine
hi! link SpellRare HanekawaTsubasaInfoLine

hi! link Constant HanekawaTsubasaConstants
hi! link String HanekawaTsubasaStringColor
hi! link Character HanekawaTsubasaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier HanekawaTsubasaFg
hi! link Function HanekawaTsubasaClassName

hi! link Statement HanekawaTsubasaKeyword
hi! link Conditional HanekawaTsubasaKeyword
hi! link Repeat HanekawaTsubasaKeyword
hi! link Label HanekawaTsubasaKeyword
hi! link Operator HanekawaTsubasaKeyword
hi! link Keyword HanekawaTsubasaKeyword
hi! link Exception HanekawaTsubasaKeyword

hi! link PreProc HanekawaTsubasaKeyword
hi! link Include HanekawaTsubasaKeyword
hi! link Define HanekawaTsubasaKeyword
hi! link Macro HanekawaTsubasaKeyword
hi! link PreCondit HanekawaTsubasaKeyword
hi! link StorageClass HanekawaTsubasaKeyword
hi! link Structure HanekawaTsubasaKeyword
hi! link Typedef HanekawaTsubasaKeyword

hi! link Type HanekawaTsubasaKeyColorItalic

hi! link Delimiter HanekawaTsubasaFg

hi! link Special HanekawaTsubasaKeyword
hi! link SpecialComment HanekawaTsubasaKeyColorItalic
hi! link Tag HanekawaTsubasaKeyColor
hi! link helpHyperTextJump HanekawaTsubasaLink
hi! link helpCommand HanekawaTsubasaConstants
hi! link helpExample HanekawaTsubasaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
