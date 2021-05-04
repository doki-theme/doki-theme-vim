" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'nakano_nino'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:nakano_nino#palette.fg

let s:bglighter = g:nakano_nino#palette.bglighter
let s:bglight   = g:nakano_nino#palette.bglight
let s:bg        = g:nakano_nino#palette.bg
let s:bgdark    = g:nakano_nino#palette.bgdark
let s:bgdarker  = g:nakano_nino#palette.bgdarker

let s:comment   = g:nakano_nino#palette.comment
let s:selection = g:nakano_nino#palette.selection
let s:subtle    = g:nakano_nino#palette.subtle

let s:key_color      = g:nakano_nino#palette.key_color
let s:class_name     = g:nakano_nino#palette.class_name
let s:parameter_color    = g:nakano_nino#palette.parameter_color
let s:keyword_color      = g:nakano_nino#palette.keyword_color
let s:constants_color    = g:nakano_nino#palette.constants_color
let s:red       = g:nakano_nino#palette.red
let s:string_color    = g:nakano_nino#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:nakano_nino#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:nakano_nino#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:nakano_nino_bold')
  let g:nakano_nino_bold = 1
endif

if !exists('g:nakano_nino_italic')
  let g:nakano_nino_italic = 1
endif

if !exists('g:nakano_nino_underline')
  let g:nakano_nino_underline = 1
endif

if !exists('g:nakano_nino_undercurl') && g:nakano_nino_underline != 0
  let g:nakano_nino_undercurl = 1
endif

if !exists('g:nakano_nino_inverse')
  let g:nakano_nino_inverse = 1
endif

if !exists('g:nakano_nino_colorterm')
  let g:nakano_nino_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:nakano_nino_bold == 1 ? 'bold' : 0,
      \ 'italic': g:nakano_nino_italic == 1 ? 'italic' : 0,
      \ 'underline': g:nakano_nino_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:nakano_nino_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:nakano_nino_inverse == 1 ? 'inverse' : 0,
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

call s:h('NakanoNinoBgLight', s:none, s:bglight)
call s:h('NakanoNinoBgLighter', s:none, s:bglighter)
call s:h('NakanoNinoBgDark', s:none, s:bgdark)
call s:h('NakanoNinoBgDarker', s:none, s:bgdarker)

call s:h('NakanoNinoFg', s:fg)
call s:h('NakanoNinoFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('NakanoNinoFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('NakanoNinoComment', s:comment)
call s:h('NakanoNinoCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('NakanoNinoSelection', s:none, s:selection)

call s:h('NakanoNinoSubtle', s:subtle)

call s:h('NakanoNinoKeyColor', s:key_color)
call s:h('NakanoNinoKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('NakanoNinoClassName', s:class_name)
call s:h('NakanoNinoClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('NakanoNinoClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('NakanoNinoClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('NakanoNinoParameter', s:parameter_color)
call s:h('NakanoNinoParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('NakanoNinoParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('NakanoNinoParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('NakanoNinoParameterInverse', s:bg, s:parameter_color)

call s:h('NakanoNinoKeyword', s:keyword_color)
call s:h('NakanoNinoKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('NakanoNinoConstants', s:constants_color)
call s:h('NakanoNinoConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('NakanoNinoConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('NakanoNinoRed', s:red)
call s:h('NakanoNinoRedInverse', s:fg, s:red)

call s:h('NakanoNinoStringColor', s:string_color)
call s:h('NakanoNinoStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('NakanoNinoError', s:red, s:none, [], s:red)

call s:h('NakanoNinoErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('NakanoNinoWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('NakanoNinoInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('NakanoNinoTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('NakanoNinoSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('NakanoNinoBoundary', s:comment, s:bgdark)
call s:h('NakanoNinoLink', s:key_color, s:none, [s:attrs.underline])

call s:h('NakanoNinoDiffChange', s:parameter_color, s:none)
call s:h('NakanoNinoDiffText', s:bg, s:parameter_color)
call s:h('NakanoNinoDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:nakano_nino_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  NakanoNinoBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr NakanoNinoStringColor
hi! link DiffAdd      NakanoNinoClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   NakanoNinoDiffChange
hi! link DiffDelete   NakanoNinoDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     NakanoNinoDiffText
hi! link Directory    NakanoNinoConstantsBold
hi! link ErrorMsg     NakanoNinoRedInverse
hi! link FoldColumn   NakanoNinoSubtle
hi! link Folded       NakanoNinoBoundary
hi! link IncSearch    NakanoNinoParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      NakanoNinoFgBold
hi! link NonText      NakanoNinoSubtle
" hi! link Pmenu        NakanoNinoBgDark
" hi! link PmenuSbar    NakanoNinoBgDark
hi! link PmenuSel     NakanoNinoSelection
hi! link PmenuThumb   NakanoNinoSelection
hi! link Question     NakanoNinoFgBold
hi! link Search       NakanoNinoSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      NakanoNinoBoundary
" hi! link TabLineFill  NakanoNinoBgDarker
hi! link TabLineSel   Normal
hi! link Title        NakanoNinoClassNameBold
hi! link VertSplit    NakanoNinoBoundary
hi! link Visual       NakanoNinoSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   NakanoNinoParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey NakanoNinoRed
  hi! link LspDiagnosticsUnderline NakanoNinoFgUnderline
  hi! link LspDiagnosticsInformation NakanoNinoKeyColor
  hi! link LspDiagnosticsHint NakanoNinoKeyColor
  hi! link LspDiagnosticsError NakanoNinoError
  hi! link LspDiagnosticsWarning NakanoNinoParameter
  hi! link LspDiagnosticsUnderlineError NakanoNinoErrorLine
  hi! link LspDiagnosticsUnderlineHint NakanoNinoInfoLine
  hi! link LspDiagnosticsUnderlineInformation NakanoNinoInfoLine
  hi! link LspDiagnosticsUnderlineWarning NakanoNinoWarnLine
else
  hi! link SpecialKey NakanoNinoSubtle
endif

hi! link Comment NakanoNinoComment
hi! link Underlined NakanoNinoFgUnderline
hi! link Todo NakanoNinoTodo

hi! link Error NakanoNinoError
hi! link SpellBad NakanoNinoErrorLine
hi! link SpellLocal NakanoNinoWarnLine
hi! link SpellCap NakanoNinoInfoLine
hi! link SpellRare NakanoNinoInfoLine

hi! link Constant NakanoNinoConstants
hi! link String NakanoNinoStringColor
hi! link Character NakanoNinoKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier NakanoNinoFg
hi! link Function NakanoNinoClassName

hi! link Statement NakanoNinoKeyword
hi! link Conditional NakanoNinoKeyword
hi! link Repeat NakanoNinoKeyword
hi! link Label NakanoNinoKeyword
hi! link Operator NakanoNinoKeyword
hi! link Keyword NakanoNinoKeyword
hi! link Exception NakanoNinoKeyword

hi! link PreProc NakanoNinoKeyword
hi! link Include NakanoNinoKeyword
hi! link Define NakanoNinoKeyword
hi! link Macro NakanoNinoKeyword
hi! link PreCondit NakanoNinoKeyword
hi! link StorageClass NakanoNinoKeyword
hi! link Structure NakanoNinoKeyword
hi! link Typedef NakanoNinoKeyword

hi! link Type NakanoNinoKeyColorItalic

hi! link Delimiter NakanoNinoFg

hi! link Special NakanoNinoKeyword
hi! link SpecialComment NakanoNinoKeyColorItalic
hi! link Tag NakanoNinoKeyColor
hi! link helpHyperTextJump NakanoNinoLink
hi! link helpCommand NakanoNinoConstants
hi! link helpExample NakanoNinoClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
