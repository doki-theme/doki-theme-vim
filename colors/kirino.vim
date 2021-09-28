" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'kirino'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:kirino#palette.fg

let s:bglighter = g:kirino#palette.bglighter
let s:bglight   = g:kirino#palette.bglight
let s:bg        = g:kirino#palette.bg
let s:bgdark    = g:kirino#palette.bgdark
let s:bgdarker  = g:kirino#palette.bgdarker

let s:comment   = g:kirino#palette.comment
let s:selection = g:kirino#palette.selection
let s:subtle    = g:kirino#palette.subtle

let s:key_color      = g:kirino#palette.key_color
let s:class_name     = g:kirino#palette.class_name
let s:parameter_color    = g:kirino#palette.parameter_color
let s:keyword_color      = g:kirino#palette.keyword_color
let s:constants_color    = g:kirino#palette.constants_color
let s:red       = g:kirino#palette.red
let s:string_color    = g:kirino#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:kirino#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:kirino#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:kirino_bold')
  let g:kirino_bold = 1
endif

if !exists('g:kirino_italic')
  let g:kirino_italic = 1
endif

if !exists('g:kirino_underline')
  let g:kirino_underline = 1
endif

if !exists('g:kirino_undercurl') && g:kirino_underline != 0
  let g:kirino_undercurl = 1
endif

if !exists('g:kirino_inverse')
  let g:kirino_inverse = 1
endif

if !exists('g:kirino_colorterm')
  let g:kirino_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:kirino_bold == 1 ? 'bold' : 0,
      \ 'italic': g:kirino_italic == 1 ? 'italic' : 0,
      \ 'underline': g:kirino_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:kirino_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:kirino_inverse == 1 ? 'inverse' : 0,
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

call s:h('KirinoBgLight', s:none, s:bglight)
call s:h('KirinoBgLighter', s:none, s:bglighter)
call s:h('KirinoBgDark', s:none, s:bgdark)
call s:h('KirinoBgDarker', s:none, s:bgdarker)

call s:h('KirinoFg', s:fg)
call s:h('KirinoFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('KirinoFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('KirinoComment', s:comment)
call s:h('KirinoCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('KirinoSelection', s:none, s:selection)

call s:h('KirinoSubtle', s:subtle)

call s:h('KirinoKeyColor', s:key_color)
call s:h('KirinoKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('KirinoClassName', s:class_name)
call s:h('KirinoClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('KirinoClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('KirinoClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('KirinoParameter', s:parameter_color)
call s:h('KirinoParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('KirinoParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('KirinoParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('KirinoParameterInverse', s:bg, s:parameter_color)

call s:h('KirinoKeyword', s:keyword_color)
call s:h('KirinoKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('KirinoConstants', s:constants_color)
call s:h('KirinoConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('KirinoConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('KirinoRed', s:red)
call s:h('KirinoRedInverse', s:fg, s:red)

call s:h('KirinoStringColor', s:string_color)
call s:h('KirinoStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('KirinoError', s:red, s:none, [], s:red)

call s:h('KirinoErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('KirinoWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('KirinoInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('KirinoTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('KirinoSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('KirinoBoundary', s:comment, s:bgdark)
call s:h('KirinoLink', s:key_color, s:none, [s:attrs.underline])

call s:h('KirinoDiffChange', s:parameter_color, s:none)
call s:h('KirinoDiffText', s:bg, s:parameter_color)
call s:h('KirinoDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:kirino_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  KirinoBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr KirinoStringColor
hi! link DiffAdd      KirinoClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   KirinoDiffChange
hi! link DiffDelete   KirinoDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     KirinoDiffText
hi! link Directory    KirinoConstantsBold
hi! link ErrorMsg     KirinoRedInverse
hi! link FoldColumn   KirinoSubtle
hi! link Folded       KirinoBoundary
hi! link IncSearch    KirinoParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      KirinoFgBold
hi! link NonText      KirinoSubtle
" hi! link Pmenu        KirinoBgDark
" hi! link PmenuSbar    KirinoBgDark
hi! link PmenuSel     KirinoSelection
hi! link PmenuThumb   KirinoSelection
hi! link Question     KirinoFgBold
hi! link Search       KirinoSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      KirinoBoundary
" hi! link TabLineFill  KirinoBgDarker
hi! link TabLineSel   Normal
hi! link Title        KirinoClassNameBold
hi! link VertSplit    KirinoBoundary
hi! link Visual       KirinoSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   KirinoParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey KirinoRed
  hi! link LspDiagnosticsUnderline KirinoFgUnderline
  hi! link LspDiagnosticsInformation KirinoKeyColor
  hi! link LspDiagnosticsHint KirinoKeyColor
  hi! link LspDiagnosticsError KirinoError
  hi! link LspDiagnosticsWarning KirinoParameter
  hi! link LspDiagnosticsUnderlineError KirinoErrorLine
  hi! link LspDiagnosticsUnderlineHint KirinoInfoLine
  hi! link LspDiagnosticsUnderlineInformation KirinoInfoLine
  hi! link LspDiagnosticsUnderlineWarning KirinoWarnLine
else
  hi! link SpecialKey KirinoSubtle
endif

hi! link Comment KirinoComment
hi! link Underlined KirinoFgUnderline
hi! link Todo KirinoTodo

hi! link Error KirinoError
hi! link SpellBad KirinoErrorLine
hi! link SpellLocal KirinoWarnLine
hi! link SpellCap KirinoInfoLine
hi! link SpellRare KirinoInfoLine

hi! link Constant KirinoConstants
hi! link String KirinoStringColor
hi! link Character KirinoKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier KirinoFg
hi! link Function KirinoClassName

hi! link Statement KirinoKeyword
hi! link Conditional KirinoKeyword
hi! link Repeat KirinoKeyword
hi! link Label KirinoKeyword
hi! link Operator KirinoKeyword
hi! link Keyword KirinoKeyword
hi! link Exception KirinoKeyword

hi! link PreProc KirinoKeyword
hi! link Include KirinoKeyword
hi! link Define KirinoKeyword
hi! link Macro KirinoKeyword
hi! link PreCondit KirinoKeyword
hi! link StorageClass KirinoKeyword
hi! link Structure KirinoKeyword
hi! link Typedef KirinoKeyword

hi! link Type KirinoKeyColorItalic

hi! link Delimiter KirinoFg

hi! link Special KirinoKeyword
hi! link SpecialComment KirinoKeyColorItalic
hi! link Tag KirinoKeyColor
hi! link helpHyperTextJump KirinoLink
hi! link helpCommand KirinoConstants
hi! link helpExample KirinoClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
