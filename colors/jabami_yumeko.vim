" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'jabami_yumeko'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:jabami_yumeko#palette.fg

let s:bglighter = g:jabami_yumeko#palette.bglighter
let s:bglight   = g:jabami_yumeko#palette.bglight
let s:bg        = g:jabami_yumeko#palette.bg
let s:bgdark    = g:jabami_yumeko#palette.bgdark
let s:bgdarker  = g:jabami_yumeko#palette.bgdarker

let s:comment   = g:jabami_yumeko#palette.comment
let s:selection = g:jabami_yumeko#palette.selection
let s:subtle    = g:jabami_yumeko#palette.subtle

let s:key_color      = g:jabami_yumeko#palette.key_color
let s:class_name     = g:jabami_yumeko#palette.class_name
let s:parameter_color    = g:jabami_yumeko#palette.parameter_color
let s:keyword_color      = g:jabami_yumeko#palette.keyword_color
let s:constants_color    = g:jabami_yumeko#palette.constants_color
let s:red       = g:jabami_yumeko#palette.red
let s:string_color    = g:jabami_yumeko#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:jabami_yumeko#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:jabami_yumeko#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:jabami_yumeko_bold')
  let g:jabami_yumeko_bold = 1
endif

if !exists('g:jabami_yumeko_italic')
  let g:jabami_yumeko_italic = 1
endif

if !exists('g:jabami_yumeko_underline')
  let g:jabami_yumeko_underline = 1
endif

if !exists('g:jabami_yumeko_undercurl') && g:jabami_yumeko_underline != 0
  let g:jabami_yumeko_undercurl = 1
endif

if !exists('g:jabami_yumeko_inverse')
  let g:jabami_yumeko_inverse = 1
endif

if !exists('g:jabami_yumeko_colorterm')
  let g:jabami_yumeko_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:jabami_yumeko_bold == 1 ? 'bold' : 0,
      \ 'italic': g:jabami_yumeko_italic == 1 ? 'italic' : 0,
      \ 'underline': g:jabami_yumeko_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:jabami_yumeko_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:jabami_yumeko_inverse == 1 ? 'inverse' : 0,
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

call s:h('JabamiYumekoBgLight', s:none, s:bglight)
call s:h('JabamiYumekoBgLighter', s:none, s:bglighter)
call s:h('JabamiYumekoBgDark', s:none, s:bgdark)
call s:h('JabamiYumekoBgDarker', s:none, s:bgdarker)

call s:h('JabamiYumekoFg', s:fg)
call s:h('JabamiYumekoFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('JabamiYumekoFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('JabamiYumekoComment', s:comment)
call s:h('JabamiYumekoCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('JabamiYumekoSelection', s:none, s:selection)

call s:h('JabamiYumekoSubtle', s:subtle)

call s:h('JabamiYumekoKeyColor', s:key_color)
call s:h('JabamiYumekoKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('JabamiYumekoClassName', s:class_name)
call s:h('JabamiYumekoClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('JabamiYumekoClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('JabamiYumekoClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('JabamiYumekoParameter', s:parameter_color)
call s:h('JabamiYumekoParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('JabamiYumekoParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('JabamiYumekoParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('JabamiYumekoParameterInverse', s:bg, s:parameter_color)

call s:h('JabamiYumekoKeyword', s:keyword_color)
call s:h('JabamiYumekoKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('JabamiYumekoConstants', s:constants_color)
call s:h('JabamiYumekoConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('JabamiYumekoConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('JabamiYumekoRed', s:red)
call s:h('JabamiYumekoRedInverse', s:fg, s:red)

call s:h('JabamiYumekoStringColor', s:string_color)
call s:h('JabamiYumekoStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('JabamiYumekoError', s:red, s:none, [], s:red)

call s:h('JabamiYumekoErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('JabamiYumekoWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('JabamiYumekoInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('JabamiYumekoTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('JabamiYumekoSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('JabamiYumekoBoundary', s:comment, s:bgdark)
call s:h('JabamiYumekoLink', s:key_color, s:none, [s:attrs.underline])

call s:h('JabamiYumekoDiffChange', s:parameter_color, s:none)
call s:h('JabamiYumekoDiffText', s:bg, s:parameter_color)
call s:h('JabamiYumekoDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:jabami_yumeko_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  JabamiYumekoBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr JabamiYumekoStringColor
hi! link DiffAdd      JabamiYumekoClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   JabamiYumekoDiffChange
hi! link DiffDelete   JabamiYumekoDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     JabamiYumekoDiffText
hi! link Directory    JabamiYumekoConstantsBold
hi! link ErrorMsg     JabamiYumekoRedInverse
hi! link FoldColumn   JabamiYumekoSubtle
hi! link Folded       JabamiYumekoBoundary
hi! link IncSearch    JabamiYumekoParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      JabamiYumekoFgBold
hi! link NonText      JabamiYumekoSubtle
" hi! link Pmenu        JabamiYumekoBgDark
" hi! link PmenuSbar    JabamiYumekoBgDark
hi! link PmenuSel     JabamiYumekoSelection
hi! link PmenuThumb   JabamiYumekoSelection
hi! link Question     JabamiYumekoFgBold
hi! link Search       JabamiYumekoSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      JabamiYumekoBoundary
" hi! link TabLineFill  JabamiYumekoBgDarker
hi! link TabLineSel   Normal
hi! link Title        JabamiYumekoClassNameBold
hi! link VertSplit    JabamiYumekoBoundary
hi! link Visual       JabamiYumekoSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   JabamiYumekoParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey JabamiYumekoRed
  hi! link LspDiagnosticsUnderline JabamiYumekoFgUnderline
  hi! link LspDiagnosticsInformation JabamiYumekoKeyColor
  hi! link LspDiagnosticsHint JabamiYumekoKeyColor
  hi! link LspDiagnosticsError JabamiYumekoError
  hi! link LspDiagnosticsWarning JabamiYumekoParameter
  hi! link LspDiagnosticsUnderlineError JabamiYumekoErrorLine
  hi! link LspDiagnosticsUnderlineHint JabamiYumekoInfoLine
  hi! link LspDiagnosticsUnderlineInformation JabamiYumekoInfoLine
  hi! link LspDiagnosticsUnderlineWarning JabamiYumekoWarnLine
else
  hi! link SpecialKey JabamiYumekoSubtle
endif

hi! link Comment JabamiYumekoComment
hi! link Underlined JabamiYumekoFgUnderline
hi! link Todo JabamiYumekoTodo

hi! link Error JabamiYumekoError
hi! link SpellBad JabamiYumekoErrorLine
hi! link SpellLocal JabamiYumekoWarnLine
hi! link SpellCap JabamiYumekoInfoLine
hi! link SpellRare JabamiYumekoInfoLine

hi! link Constant JabamiYumekoConstants
hi! link String JabamiYumekoStringColor
hi! link Character JabamiYumekoKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier JabamiYumekoFg
hi! link Function JabamiYumekoClassName

hi! link Statement JabamiYumekoKeyword
hi! link Conditional JabamiYumekoKeyword
hi! link Repeat JabamiYumekoKeyword
hi! link Label JabamiYumekoKeyword
hi! link Operator JabamiYumekoKeyword
hi! link Keyword JabamiYumekoKeyword
hi! link Exception JabamiYumekoKeyword

hi! link PreProc JabamiYumekoKeyword
hi! link Include JabamiYumekoKeyword
hi! link Define JabamiYumekoKeyword
hi! link Macro JabamiYumekoKeyword
hi! link PreCondit JabamiYumekoKeyword
hi! link StorageClass JabamiYumekoKeyword
hi! link Structure JabamiYumekoKeyword
hi! link Typedef JabamiYumekoKeyword

hi! link Type JabamiYumekoKeyColorItalic

hi! link Delimiter JabamiYumekoFg

hi! link Special JabamiYumekoKeyword
hi! link SpecialComment JabamiYumekoKeyColorItalic
hi! link Tag JabamiYumekoKeyColor
hi! link helpHyperTextJump JabamiYumekoLink
hi! link helpCommand JabamiYumekoConstants
hi! link helpExample JabamiYumekoClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
