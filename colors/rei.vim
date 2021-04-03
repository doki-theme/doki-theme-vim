" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'rei'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:rei#palette.fg

let s:bglighter = g:rei#palette.bglighter
let s:bglight   = g:rei#palette.bglight
let s:bg        = g:rei#palette.bg
let s:bgdark    = g:rei#palette.bgdark
let s:bgdarker  = g:rei#palette.bgdarker

let s:comment   = g:rei#palette.comment
let s:selection = g:rei#palette.selection
let s:subtle    = g:rei#palette.subtle

let s:key_color      = g:rei#palette.key_color
let s:class_name     = g:rei#palette.class_name
let s:parameter_color    = g:rei#palette.parameter_color
let s:keyword_color      = g:rei#palette.keyword_color
let s:constants_color    = g:rei#palette.constants_color
let s:red       = g:rei#palette.red
let s:string_color    = g:rei#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:rei#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:rei#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:rei_bold')
  let g:rei_bold = 1
endif

if !exists('g:rei_italic')
  let g:rei_italic = 1
endif

if !exists('g:rei_underline')
  let g:rei_underline = 1
endif

if !exists('g:rei_undercurl') && g:rei_underline != 0
  let g:rei_undercurl = 1
endif

if !exists('g:rei_inverse')
  let g:rei_inverse = 1
endif

if !exists('g:rei_colorterm')
  let g:rei_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:rei_bold == 1 ? 'bold' : 0,
      \ 'italic': g:rei_italic == 1 ? 'italic' : 0,
      \ 'underline': g:rei_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:rei_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:rei_inverse == 1 ? 'inverse' : 0,
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

call s:h('ReiBgLight', s:none, s:bglight)
call s:h('ReiBgLighter', s:none, s:bglighter)
call s:h('ReiBgDark', s:none, s:bgdark)
call s:h('ReiBgDarker', s:none, s:bgdarker)

call s:h('ReiFg', s:fg)
call s:h('ReiFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('ReiFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('ReiComment', s:comment)
call s:h('ReiCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('ReiSelection', s:none, s:selection)

call s:h('ReiSubtle', s:subtle)

call s:h('ReiKeyColor', s:key_color)
call s:h('ReiKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('ReiClassName', s:class_name)
call s:h('ReiClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('ReiClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('ReiClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('ReiParameter', s:parameter_color)
call s:h('ReiParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('ReiParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('ReiParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('ReiParameterInverse', s:bg, s:parameter_color)

call s:h('ReiKeyword', s:keyword_color)
call s:h('ReiKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('ReiConstants', s:constants_color)
call s:h('ReiConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('ReiConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('ReiRed', s:red)
call s:h('ReiRedInverse', s:fg, s:red)

call s:h('ReiStringColor', s:string_color)
call s:h('ReiStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('ReiError', s:red, s:none, [], s:red)

call s:h('ReiErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('ReiWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('ReiInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('ReiTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('ReiSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('ReiBoundary', s:comment, s:bgdark)
call s:h('ReiLink', s:key_color, s:none, [s:attrs.underline])

call s:h('ReiDiffChange', s:parameter_color, s:none)
call s:h('ReiDiffText', s:bg, s:parameter_color)
call s:h('ReiDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:rei_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  ReiBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr ReiStringColor
hi! link DiffAdd      ReiClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   ReiDiffChange
hi! link DiffDelete   ReiDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     ReiDiffText
hi! link Directory    ReiConstantsBold
hi! link ErrorMsg     ReiRedInverse
hi! link FoldColumn   ReiSubtle
hi! link Folded       ReiBoundary
hi! link IncSearch    ReiParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      ReiFgBold
hi! link NonText      ReiSubtle
" hi! link Pmenu        ReiBgDark
" hi! link PmenuSbar    ReiBgDark
hi! link PmenuSel     ReiSelection
hi! link PmenuThumb   ReiSelection
hi! link Question     ReiFgBold
hi! link Search       ReiSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      ReiBoundary
" hi! link TabLineFill  ReiBgDarker
hi! link TabLineSel   Normal
hi! link Title        ReiClassNameBold
hi! link VertSplit    ReiBoundary
hi! link Visual       ReiSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   ReiParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey ReiRed
  hi! link LspDiagnosticsUnderline ReiFgUnderline
  hi! link LspDiagnosticsInformation ReiKeyColor
  hi! link LspDiagnosticsHint ReiKeyColor
  hi! link LspDiagnosticsError ReiError
  hi! link LspDiagnosticsWarning ReiParameter
  hi! link LspDiagnosticsUnderlineError ReiErrorLine
  hi! link LspDiagnosticsUnderlineHint ReiInfoLine
  hi! link LspDiagnosticsUnderlineInformation ReiInfoLine
  hi! link LspDiagnosticsUnderlineWarning ReiWarnLine
else
  hi! link SpecialKey ReiSubtle
endif

hi! link Comment ReiComment
hi! link Underlined ReiFgUnderline
hi! link Todo ReiTodo

hi! link Error ReiError
hi! link SpellBad ReiErrorLine
hi! link SpellLocal ReiWarnLine
hi! link SpellCap ReiInfoLine
hi! link SpellRare ReiInfoLine

hi! link Constant ReiConstants
hi! link String ReiStringColor
hi! link Character ReiKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier ReiFg
hi! link Function ReiClassName

hi! link Statement ReiKeyword
hi! link Conditional ReiKeyword
hi! link Repeat ReiKeyword
hi! link Label ReiKeyword
hi! link Operator ReiKeyword
hi! link Keyword ReiKeyword
hi! link Exception ReiKeyword

hi! link PreProc ReiKeyword
hi! link Include ReiKeyword
hi! link Define ReiKeyword
hi! link Macro ReiKeyword
hi! link PreCondit ReiKeyword
hi! link StorageClass ReiKeyword
hi! link Structure ReiKeyword
hi! link Typedef ReiKeyword

hi! link Type ReiKeyColorItalic

hi! link Delimiter ReiFg

hi! link Special ReiKeyword
hi! link SpecialComment ReiKeyColorItalic
hi! link Tag ReiKeyColor
hi! link helpHyperTextJump ReiLink
hi! link helpCommand ReiConstants
hi! link helpExample ReiClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
