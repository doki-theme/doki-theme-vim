" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'rory_mercury'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:rory_mercury#palette.fg

let s:bglighter = g:rory_mercury#palette.bglighter
let s:bglight   = g:rory_mercury#palette.bglight
let s:bg        = g:rory_mercury#palette.bg
let s:bgdark    = g:rory_mercury#palette.bgdark
let s:bgdarker  = g:rory_mercury#palette.bgdarker

let s:comment   = g:rory_mercury#palette.comment
let s:selection = g:rory_mercury#palette.selection
let s:subtle    = g:rory_mercury#palette.subtle

let s:key_color      = g:rory_mercury#palette.key_color
let s:class_name     = g:rory_mercury#palette.class_name
let s:parameter_color    = g:rory_mercury#palette.parameter_color
let s:keyword_color      = g:rory_mercury#palette.keyword_color
let s:constants_color    = g:rory_mercury#palette.constants_color
let s:red       = g:rory_mercury#palette.red
let s:string_color    = g:rory_mercury#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:rory_mercury#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:rory_mercury#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:rory_mercury_bold')
  let g:rory_mercury_bold = 1
endif

if !exists('g:rory_mercury_italic')
  let g:rory_mercury_italic = 1
endif

if !exists('g:rory_mercury_underline')
  let g:rory_mercury_underline = 1
endif

if !exists('g:rory_mercury_undercurl') && g:rory_mercury_underline != 0
  let g:rory_mercury_undercurl = 1
endif

if !exists('g:rory_mercury_inverse')
  let g:rory_mercury_inverse = 1
endif

if !exists('g:rory_mercury_colorterm')
  let g:rory_mercury_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:rory_mercury_bold == 1 ? 'bold' : 0,
      \ 'italic': g:rory_mercury_italic == 1 ? 'italic' : 0,
      \ 'underline': g:rory_mercury_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:rory_mercury_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:rory_mercury_inverse == 1 ? 'inverse' : 0,
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

call s:h('RoryMercuryBgLight', s:none, s:bglight)
call s:h('RoryMercuryBgLighter', s:none, s:bglighter)
call s:h('RoryMercuryBgDark', s:none, s:bgdark)
call s:h('RoryMercuryBgDarker', s:none, s:bgdarker)

call s:h('RoryMercuryFg', s:fg)
call s:h('RoryMercuryFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RoryMercuryFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RoryMercuryComment', s:comment)
call s:h('RoryMercuryCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RoryMercurySelection', s:none, s:selection)

call s:h('RoryMercurySubtle', s:subtle)

call s:h('RoryMercuryKeyColor', s:key_color)
call s:h('RoryMercuryKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('RoryMercuryClassName', s:class_name)
call s:h('RoryMercuryClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('RoryMercuryClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('RoryMercuryClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RoryMercuryParameter', s:parameter_color)
call s:h('RoryMercuryParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('RoryMercuryParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('RoryMercuryParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RoryMercuryParameterInverse', s:bg, s:parameter_color)

call s:h('RoryMercuryKeyword', s:keyword_color)
call s:h('RoryMercuryKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('RoryMercuryConstants', s:constants_color)
call s:h('RoryMercuryConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('RoryMercuryConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('RoryMercuryRed', s:red)
call s:h('RoryMercuryRedInverse', s:fg, s:red)

call s:h('RoryMercuryStringColor', s:string_color)
call s:h('RoryMercuryStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RoryMercuryError', s:red, s:none, [], s:red)

call s:h('RoryMercuryErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RoryMercuryWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('RoryMercuryInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('RoryMercuryTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RoryMercurySearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('RoryMercuryBoundary', s:comment, s:bgdark)
call s:h('RoryMercuryLink', s:key_color, s:none, [s:attrs.underline])

call s:h('RoryMercuryDiffChange', s:parameter_color, s:none)
call s:h('RoryMercuryDiffText', s:bg, s:parameter_color)
call s:h('RoryMercuryDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:rory_mercury_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RoryMercuryBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RoryMercuryStringColor
hi! link DiffAdd      RoryMercuryClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RoryMercuryDiffChange
hi! link DiffDelete   RoryMercuryDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RoryMercuryDiffText
hi! link Directory    RoryMercuryConstantsBold
hi! link ErrorMsg     RoryMercuryRedInverse
hi! link FoldColumn   RoryMercurySubtle
hi! link Folded       RoryMercuryBoundary
hi! link IncSearch    RoryMercuryParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RoryMercuryFgBold
hi! link NonText      RoryMercurySubtle
" hi! link Pmenu        RoryMercuryBgDark
" hi! link PmenuSbar    RoryMercuryBgDark
hi! link PmenuSel     RoryMercurySelection
hi! link PmenuThumb   RoryMercurySelection
hi! link Question     RoryMercuryFgBold
hi! link Search       RoryMercurySearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RoryMercuryBoundary
" hi! link TabLineFill  RoryMercuryBgDarker
hi! link TabLineSel   Normal
hi! link Title        RoryMercuryClassNameBold
hi! link VertSplit    RoryMercuryBoundary
hi! link Visual       RoryMercurySelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RoryMercuryParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RoryMercuryRed
  hi! link LspDiagnosticsUnderline RoryMercuryFgUnderline
  hi! link LspDiagnosticsInformation RoryMercuryKeyColor
  hi! link LspDiagnosticsHint RoryMercuryKeyColor
  hi! link LspDiagnosticsError RoryMercuryError
  hi! link LspDiagnosticsWarning RoryMercuryParameter
  hi! link LspDiagnosticsUnderlineError RoryMercuryErrorLine
  hi! link LspDiagnosticsUnderlineHint RoryMercuryInfoLine
  hi! link LspDiagnosticsUnderlineInformation RoryMercuryInfoLine
  hi! link LspDiagnosticsUnderlineWarning RoryMercuryWarnLine
else
  hi! link SpecialKey RoryMercurySubtle
endif

hi! link Comment RoryMercuryComment
hi! link Underlined RoryMercuryFgUnderline
hi! link Todo RoryMercuryTodo

hi! link Error RoryMercuryError
hi! link SpellBad RoryMercuryErrorLine
hi! link SpellLocal RoryMercuryWarnLine
hi! link SpellCap RoryMercuryInfoLine
hi! link SpellRare RoryMercuryInfoLine

hi! link Constant RoryMercuryConstants
hi! link String RoryMercuryStringColor
hi! link Character RoryMercuryKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RoryMercuryFg
hi! link Function RoryMercuryClassName

hi! link Statement RoryMercuryKeyword
hi! link Conditional RoryMercuryKeyword
hi! link Repeat RoryMercuryKeyword
hi! link Label RoryMercuryKeyword
hi! link Operator RoryMercuryKeyword
hi! link Keyword RoryMercuryKeyword
hi! link Exception RoryMercuryKeyword

hi! link PreProc RoryMercuryKeyword
hi! link Include RoryMercuryKeyword
hi! link Define RoryMercuryKeyword
hi! link Macro RoryMercuryKeyword
hi! link PreCondit RoryMercuryKeyword
hi! link StorageClass RoryMercuryKeyword
hi! link Structure RoryMercuryKeyword
hi! link Typedef RoryMercuryKeyword

hi! link Type RoryMercuryKeyColorItalic

hi! link Delimiter RoryMercuryFg

hi! link Special RoryMercuryKeyword
hi! link SpecialComment RoryMercuryKeyColorItalic
hi! link Tag RoryMercuryKeyColor
hi! link helpHyperTextJump RoryMercuryLink
hi! link helpCommand RoryMercuryConstants
hi! link helpExample RoryMercuryClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
