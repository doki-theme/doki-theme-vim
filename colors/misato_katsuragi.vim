" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'misato_katsuragi'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:misato_katsuragi#palette.fg

let s:bglighter = g:misato_katsuragi#palette.bglighter
let s:bglight   = g:misato_katsuragi#palette.bglight
let s:bg        = g:misato_katsuragi#palette.bg
let s:bgdark    = g:misato_katsuragi#palette.bgdark
let s:bgdarker  = g:misato_katsuragi#palette.bgdarker

let s:comment   = g:misato_katsuragi#palette.comment
let s:selection = g:misato_katsuragi#palette.selection
let s:subtle    = g:misato_katsuragi#palette.subtle

let s:key_color      = g:misato_katsuragi#palette.key_color
let s:class_name     = g:misato_katsuragi#palette.class_name
let s:parameter_color    = g:misato_katsuragi#palette.parameter_color
let s:keyword_color      = g:misato_katsuragi#palette.keyword_color
let s:constants_color    = g:misato_katsuragi#palette.constants_color
let s:red       = g:misato_katsuragi#palette.red
let s:string_color    = g:misato_katsuragi#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:misato_katsuragi#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:misato_katsuragi#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:misato_katsuragi_bold')
  let g:misato_katsuragi_bold = 1
endif

if !exists('g:misato_katsuragi_italic')
  let g:misato_katsuragi_italic = 1
endif

if !exists('g:misato_katsuragi_underline')
  let g:misato_katsuragi_underline = 1
endif

if !exists('g:misato_katsuragi_undercurl') && g:misato_katsuragi_underline != 0
  let g:misato_katsuragi_undercurl = 1
endif

if !exists('g:misato_katsuragi_inverse')
  let g:misato_katsuragi_inverse = 1
endif

if !exists('g:misato_katsuragi_colorterm')
  let g:misato_katsuragi_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:misato_katsuragi_bold == 1 ? 'bold' : 0,
      \ 'italic': g:misato_katsuragi_italic == 1 ? 'italic' : 0,
      \ 'underline': g:misato_katsuragi_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:misato_katsuragi_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:misato_katsuragi_inverse == 1 ? 'inverse' : 0,
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

call s:h('MisatoKatsuragiBgLight', s:none, s:bglight)
call s:h('MisatoKatsuragiBgLighter', s:none, s:bglighter)
call s:h('MisatoKatsuragiBgDark', s:none, s:bgdark)
call s:h('MisatoKatsuragiBgDarker', s:none, s:bgdarker)

call s:h('MisatoKatsuragiFg', s:fg)
call s:h('MisatoKatsuragiFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MisatoKatsuragiFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MisatoKatsuragiComment', s:comment)
call s:h('MisatoKatsuragiCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MisatoKatsuragiSelection', s:none, s:selection)

call s:h('MisatoKatsuragiSubtle', s:subtle)

call s:h('MisatoKatsuragiKeyColor', s:key_color)
call s:h('MisatoKatsuragiKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MisatoKatsuragiClassName', s:class_name)
call s:h('MisatoKatsuragiClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MisatoKatsuragiClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MisatoKatsuragiClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MisatoKatsuragiParameter', s:parameter_color)
call s:h('MisatoKatsuragiParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MisatoKatsuragiParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MisatoKatsuragiParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MisatoKatsuragiParameterInverse', s:bg, s:parameter_color)

call s:h('MisatoKatsuragiKeyword', s:keyword_color)
call s:h('MisatoKatsuragiKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MisatoKatsuragiConstants', s:constants_color)
call s:h('MisatoKatsuragiConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MisatoKatsuragiConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MisatoKatsuragiRed', s:red)
call s:h('MisatoKatsuragiRedInverse', s:fg, s:red)

call s:h('MisatoKatsuragiStringColor', s:string_color)
call s:h('MisatoKatsuragiStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MisatoKatsuragiError', s:red, s:none, [], s:red)

call s:h('MisatoKatsuragiErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MisatoKatsuragiWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MisatoKatsuragiInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MisatoKatsuragiTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MisatoKatsuragiSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MisatoKatsuragiBoundary', s:comment, s:bgdark)
call s:h('MisatoKatsuragiLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MisatoKatsuragiDiffChange', s:parameter_color, s:none)
call s:h('MisatoKatsuragiDiffText', s:bg, s:parameter_color)
call s:h('MisatoKatsuragiDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:misato_katsuragi_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MisatoKatsuragiBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MisatoKatsuragiStringColor
hi! link DiffAdd      MisatoKatsuragiClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MisatoKatsuragiDiffChange
hi! link DiffDelete   MisatoKatsuragiDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MisatoKatsuragiDiffText
hi! link Directory    MisatoKatsuragiConstantsBold
hi! link ErrorMsg     MisatoKatsuragiRedInverse
hi! link FoldColumn   MisatoKatsuragiSubtle
hi! link Folded       MisatoKatsuragiBoundary
hi! link IncSearch    MisatoKatsuragiParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MisatoKatsuragiFgBold
hi! link NonText      MisatoKatsuragiSubtle
" hi! link Pmenu        MisatoKatsuragiBgDark
" hi! link PmenuSbar    MisatoKatsuragiBgDark
hi! link PmenuSel     MisatoKatsuragiSelection
hi! link PmenuThumb   MisatoKatsuragiSelection
hi! link Question     MisatoKatsuragiFgBold
hi! link Search       MisatoKatsuragiSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MisatoKatsuragiBoundary
" hi! link TabLineFill  MisatoKatsuragiBgDarker
hi! link TabLineSel   Normal
hi! link Title        MisatoKatsuragiClassNameBold
hi! link VertSplit    MisatoKatsuragiBoundary
hi! link Visual       MisatoKatsuragiSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MisatoKatsuragiParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MisatoKatsuragiRed
  hi! link LspDiagnosticsUnderline MisatoKatsuragiFgUnderline
  hi! link LspDiagnosticsInformation MisatoKatsuragiKeyColor
  hi! link LspDiagnosticsHint MisatoKatsuragiKeyColor
  hi! link LspDiagnosticsError MisatoKatsuragiError
  hi! link LspDiagnosticsWarning MisatoKatsuragiParameter
  hi! link LspDiagnosticsUnderlineError MisatoKatsuragiErrorLine
  hi! link LspDiagnosticsUnderlineHint MisatoKatsuragiInfoLine
  hi! link LspDiagnosticsUnderlineInformation MisatoKatsuragiInfoLine
  hi! link LspDiagnosticsUnderlineWarning MisatoKatsuragiWarnLine
else
  hi! link SpecialKey MisatoKatsuragiSubtle
endif

hi! link Comment MisatoKatsuragiComment
hi! link Underlined MisatoKatsuragiFgUnderline
hi! link Todo MisatoKatsuragiTodo

hi! link Error MisatoKatsuragiError
hi! link SpellBad MisatoKatsuragiErrorLine
hi! link SpellLocal MisatoKatsuragiWarnLine
hi! link SpellCap MisatoKatsuragiInfoLine
hi! link SpellRare MisatoKatsuragiInfoLine

hi! link Constant MisatoKatsuragiConstants
hi! link String MisatoKatsuragiStringColor
hi! link Character MisatoKatsuragiKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MisatoKatsuragiFg
hi! link Function MisatoKatsuragiClassName

hi! link Statement MisatoKatsuragiKeyword
hi! link Conditional MisatoKatsuragiKeyword
hi! link Repeat MisatoKatsuragiKeyword
hi! link Label MisatoKatsuragiKeyword
hi! link Operator MisatoKatsuragiKeyword
hi! link Keyword MisatoKatsuragiKeyword
hi! link Exception MisatoKatsuragiKeyword

hi! link PreProc MisatoKatsuragiKeyword
hi! link Include MisatoKatsuragiKeyword
hi! link Define MisatoKatsuragiKeyword
hi! link Macro MisatoKatsuragiKeyword
hi! link PreCondit MisatoKatsuragiKeyword
hi! link StorageClass MisatoKatsuragiKeyword
hi! link Structure MisatoKatsuragiKeyword
hi! link Typedef MisatoKatsuragiKeyword

hi! link Type MisatoKatsuragiKeyColorItalic

hi! link Delimiter MisatoKatsuragiFg

hi! link Special MisatoKatsuragiKeyword
hi! link SpecialComment MisatoKatsuragiKeyColorItalic
hi! link Tag MisatoKatsuragiKeyColor
hi! link helpHyperTextJump MisatoKatsuragiLink
hi! link helpCommand MisatoKatsuragiConstants
hi! link helpExample MisatoKatsuragiClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
