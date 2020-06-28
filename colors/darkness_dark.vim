" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'darkness_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:darkness_dark#palette.fg

let s:bglighter = g:darkness_dark#palette.bglighter
let s:bglight   = g:darkness_dark#palette.bglight
let s:bg        = g:darkness_dark#palette.bg
let s:bgdark    = g:darkness_dark#palette.bgdark
let s:bgdarker  = g:darkness_dark#palette.bgdarker

let s:comment   = g:darkness_dark#palette.comment
let s:selection = g:darkness_dark#palette.selection
let s:subtle    = g:darkness_dark#palette.subtle

let s:key_color      = g:darkness_dark#palette.key_color
let s:class_name     = g:darkness_dark#palette.class_name
let s:parameter_color    = g:darkness_dark#palette.parameter_color
let s:keyword_color      = g:darkness_dark#palette.keyword_color
let s:constants_color    = g:darkness_dark#palette.constants_color
let s:red       = g:darkness_dark#palette.red
let s:string_color    = g:darkness_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:darkness_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:darkness_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:darkness_dark_bold')
  let g:darkness_dark_bold = 1
endif

if !exists('g:darkness_dark_italic')
  let g:darkness_dark_italic = 1
endif

if !exists('g:darkness_dark_underline')
  let g:darkness_dark_underline = 1
endif

if !exists('g:darkness_dark_undercurl') && g:darkness_dark_underline != 0
  let g:darkness_dark_undercurl = 1
endif

if !exists('g:darkness_dark_inverse')
  let g:darkness_dark_inverse = 1
endif

if !exists('g:darkness_dark_colorterm')
  let g:darkness_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:darkness_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:darkness_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:darkness_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:darkness_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:darkness_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('DarknessDarkBgLight', s:none, s:bglight)
call s:h('DarknessDarkBgLighter', s:none, s:bglighter)
call s:h('DarknessDarkBgDark', s:none, s:bgdark)
call s:h('DarknessDarkBgDarker', s:none, s:bgdarker)

call s:h('DarknessDarkFg', s:fg)
call s:h('DarknessDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('DarknessDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('DarknessDarkComment', s:comment)
call s:h('DarknessDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('DarknessDarkSelection', s:none, s:selection)

call s:h('DarknessDarkSubtle', s:subtle)

call s:h('DarknessDarkKeyColor', s:key_color)
call s:h('DarknessDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('DarknessDarkClassName', s:class_name)
call s:h('DarknessDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('DarknessDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('DarknessDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('DarknessDarkParameter', s:parameter_color)
call s:h('DarknessDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('DarknessDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('DarknessDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('DarknessDarkParameterInverse', s:bg, s:parameter_color)

call s:h('DarknessDarkKeyword', s:keyword_color)
call s:h('DarknessDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('DarknessDarkConstants', s:constants_color)
call s:h('DarknessDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('DarknessDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('DarknessDarkRed', s:red)
call s:h('DarknessDarkRedInverse', s:fg, s:red)

call s:h('DarknessDarkStringColor', s:string_color)
call s:h('DarknessDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('DarknessDarkError', s:red, s:none, [], s:red)

call s:h('DarknessDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('DarknessDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('DarknessDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('DarknessDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('DarknessDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('DarknessDarkBoundary', s:comment, s:bgdark)
call s:h('DarknessDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('DarknessDarkDiffChange', s:parameter_color, s:none)
call s:h('DarknessDarkDiffText', s:bg, s:parameter_color)
call s:h('DarknessDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:darkness_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  DarknessDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr DarknessDarkStringColor
hi! link DiffAdd      DarknessDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   DarknessDarkDiffChange
hi! link DiffDelete   DarknessDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     DarknessDarkDiffText
hi! link Directory    DarknessDarkConstantsBold
hi! link ErrorMsg     DarknessDarkRedInverse
hi! link FoldColumn   DarknessDarkSubtle
hi! link Folded       DarknessDarkBoundary
hi! link IncSearch    DarknessDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      DarknessDarkFgBold
hi! link NonText      DarknessDarkSubtle
" hi! link Pmenu        DarknessDarkBgDark
" hi! link PmenuSbar    DarknessDarkBgDark
hi! link PmenuSel     DarknessDarkSelection
hi! link PmenuThumb   DarknessDarkSelection
hi! link Question     DarknessDarkFgBold
hi! link Search       DarknessDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      DarknessDarkBoundary
" hi! link TabLineFill  DarknessDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        DarknessDarkClassNameBold
hi! link VertSplit    DarknessDarkBoundary
hi! link Visual       DarknessDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   DarknessDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey DarknessDarkRed
  hi! link LspDiagnosticsUnderline DarknessDarkFgUnderline
  hi! link LspDiagnosticsInformation DarknessDarkKeyColor
  hi! link LspDiagnosticsHint DarknessDarkKeyColor
  hi! link LspDiagnosticsError DarknessDarkError
  hi! link LspDiagnosticsWarning DarknessDarkParameter
  hi! link LspDiagnosticsUnderlineError DarknessDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint DarknessDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation DarknessDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning DarknessDarkWarnLine
else
  hi! link SpecialKey DarknessDarkSubtle
endif

hi! link Comment DarknessDarkComment
hi! link Underlined DarknessDarkFgUnderline
hi! link Todo DarknessDarkTodo

hi! link Error DarknessDarkError
hi! link SpellBad DarknessDarkErrorLine
hi! link SpellLocal DarknessDarkWarnLine
hi! link SpellCap DarknessDarkInfoLine
hi! link SpellRare DarknessDarkInfoLine

hi! link Constant DarknessDarkConstants
hi! link String DarknessDarkStringColor
hi! link Character DarknessDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier DarknessDarkFg
hi! link Function DarknessDarkClassName

hi! link Statement DarknessDarkKeyword
hi! link Conditional DarknessDarkKeyword
hi! link Repeat DarknessDarkKeyword
hi! link Label DarknessDarkKeyword
hi! link Operator DarknessDarkKeyword
hi! link Keyword DarknessDarkKeyword
hi! link Exception DarknessDarkKeyword

hi! link PreProc DarknessDarkKeyword
hi! link Include DarknessDarkKeyword
hi! link Define DarknessDarkKeyword
hi! link Macro DarknessDarkKeyword
hi! link PreCondit DarknessDarkKeyword
hi! link StorageClass DarknessDarkKeyword
hi! link Structure DarknessDarkKeyword
hi! link Typedef DarknessDarkKeyword

hi! link Type DarknessDarkKeyColorItalic

hi! link Delimiter DarknessDarkFg

hi! link Special DarknessDarkKeyword
hi! link SpecialComment DarknessDarkKeyColorItalic
hi! link Tag DarknessDarkKeyColor
hi! link helpHyperTextJump DarknessDarkLink
hi! link helpCommand DarknessDarkConstants
hi! link helpExample DarknessDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
