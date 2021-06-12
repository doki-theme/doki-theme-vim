" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'hayase_nagatoro'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:hayase_nagatoro#palette.fg

let s:bglighter = g:hayase_nagatoro#palette.bglighter
let s:bglight   = g:hayase_nagatoro#palette.bglight
let s:bg        = g:hayase_nagatoro#palette.bg
let s:bgdark    = g:hayase_nagatoro#palette.bgdark
let s:bgdarker  = g:hayase_nagatoro#palette.bgdarker

let s:comment   = g:hayase_nagatoro#palette.comment
let s:selection = g:hayase_nagatoro#palette.selection
let s:subtle    = g:hayase_nagatoro#palette.subtle

let s:key_color      = g:hayase_nagatoro#palette.key_color
let s:class_name     = g:hayase_nagatoro#palette.class_name
let s:parameter_color    = g:hayase_nagatoro#palette.parameter_color
let s:keyword_color      = g:hayase_nagatoro#palette.keyword_color
let s:constants_color    = g:hayase_nagatoro#palette.constants_color
let s:red       = g:hayase_nagatoro#palette.red
let s:string_color    = g:hayase_nagatoro#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:hayase_nagatoro#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:hayase_nagatoro#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:hayase_nagatoro_bold')
  let g:hayase_nagatoro_bold = 1
endif

if !exists('g:hayase_nagatoro_italic')
  let g:hayase_nagatoro_italic = 1
endif

if !exists('g:hayase_nagatoro_underline')
  let g:hayase_nagatoro_underline = 1
endif

if !exists('g:hayase_nagatoro_undercurl') && g:hayase_nagatoro_underline != 0
  let g:hayase_nagatoro_undercurl = 1
endif

if !exists('g:hayase_nagatoro_inverse')
  let g:hayase_nagatoro_inverse = 1
endif

if !exists('g:hayase_nagatoro_colorterm')
  let g:hayase_nagatoro_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:hayase_nagatoro_bold == 1 ? 'bold' : 0,
      \ 'italic': g:hayase_nagatoro_italic == 1 ? 'italic' : 0,
      \ 'underline': g:hayase_nagatoro_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:hayase_nagatoro_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:hayase_nagatoro_inverse == 1 ? 'inverse' : 0,
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

call s:h('HayaseNagatoroBgLight', s:none, s:bglight)
call s:h('HayaseNagatoroBgLighter', s:none, s:bglighter)
call s:h('HayaseNagatoroBgDark', s:none, s:bgdark)
call s:h('HayaseNagatoroBgDarker', s:none, s:bgdarker)

call s:h('HayaseNagatoroFg', s:fg)
call s:h('HayaseNagatoroFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('HayaseNagatoroFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('HayaseNagatoroComment', s:comment)
call s:h('HayaseNagatoroCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('HayaseNagatoroSelection', s:none, s:selection)

call s:h('HayaseNagatoroSubtle', s:subtle)

call s:h('HayaseNagatoroKeyColor', s:key_color)
call s:h('HayaseNagatoroKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('HayaseNagatoroClassName', s:class_name)
call s:h('HayaseNagatoroClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('HayaseNagatoroClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('HayaseNagatoroClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('HayaseNagatoroParameter', s:parameter_color)
call s:h('HayaseNagatoroParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('HayaseNagatoroParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('HayaseNagatoroParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('HayaseNagatoroParameterInverse', s:bg, s:parameter_color)

call s:h('HayaseNagatoroKeyword', s:keyword_color)
call s:h('HayaseNagatoroKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('HayaseNagatoroConstants', s:constants_color)
call s:h('HayaseNagatoroConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('HayaseNagatoroConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('HayaseNagatoroRed', s:red)
call s:h('HayaseNagatoroRedInverse', s:fg, s:red)

call s:h('HayaseNagatoroStringColor', s:string_color)
call s:h('HayaseNagatoroStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('HayaseNagatoroError', s:red, s:none, [], s:red)

call s:h('HayaseNagatoroErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('HayaseNagatoroWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('HayaseNagatoroInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('HayaseNagatoroTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('HayaseNagatoroSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('HayaseNagatoroBoundary', s:comment, s:bgdark)
call s:h('HayaseNagatoroLink', s:key_color, s:none, [s:attrs.underline])

call s:h('HayaseNagatoroDiffChange', s:parameter_color, s:none)
call s:h('HayaseNagatoroDiffText', s:bg, s:parameter_color)
call s:h('HayaseNagatoroDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:hayase_nagatoro_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  HayaseNagatoroBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr HayaseNagatoroStringColor
hi! link DiffAdd      HayaseNagatoroClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   HayaseNagatoroDiffChange
hi! link DiffDelete   HayaseNagatoroDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     HayaseNagatoroDiffText
hi! link Directory    HayaseNagatoroConstantsBold
hi! link ErrorMsg     HayaseNagatoroRedInverse
hi! link FoldColumn   HayaseNagatoroSubtle
hi! link Folded       HayaseNagatoroBoundary
hi! link IncSearch    HayaseNagatoroParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      HayaseNagatoroFgBold
hi! link NonText      HayaseNagatoroSubtle
" hi! link Pmenu        HayaseNagatoroBgDark
" hi! link PmenuSbar    HayaseNagatoroBgDark
hi! link PmenuSel     HayaseNagatoroSelection
hi! link PmenuThumb   HayaseNagatoroSelection
hi! link Question     HayaseNagatoroFgBold
hi! link Search       HayaseNagatoroSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      HayaseNagatoroBoundary
" hi! link TabLineFill  HayaseNagatoroBgDarker
hi! link TabLineSel   Normal
hi! link Title        HayaseNagatoroClassNameBold
hi! link VertSplit    HayaseNagatoroBoundary
hi! link Visual       HayaseNagatoroSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   HayaseNagatoroParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey HayaseNagatoroRed
  hi! link LspDiagnosticsUnderline HayaseNagatoroFgUnderline
  hi! link LspDiagnosticsInformation HayaseNagatoroKeyColor
  hi! link LspDiagnosticsHint HayaseNagatoroKeyColor
  hi! link LspDiagnosticsError HayaseNagatoroError
  hi! link LspDiagnosticsWarning HayaseNagatoroParameter
  hi! link LspDiagnosticsUnderlineError HayaseNagatoroErrorLine
  hi! link LspDiagnosticsUnderlineHint HayaseNagatoroInfoLine
  hi! link LspDiagnosticsUnderlineInformation HayaseNagatoroInfoLine
  hi! link LspDiagnosticsUnderlineWarning HayaseNagatoroWarnLine
else
  hi! link SpecialKey HayaseNagatoroSubtle
endif

hi! link Comment HayaseNagatoroComment
hi! link Underlined HayaseNagatoroFgUnderline
hi! link Todo HayaseNagatoroTodo

hi! link Error HayaseNagatoroError
hi! link SpellBad HayaseNagatoroErrorLine
hi! link SpellLocal HayaseNagatoroWarnLine
hi! link SpellCap HayaseNagatoroInfoLine
hi! link SpellRare HayaseNagatoroInfoLine

hi! link Constant HayaseNagatoroConstants
hi! link String HayaseNagatoroStringColor
hi! link Character HayaseNagatoroKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier HayaseNagatoroFg
hi! link Function HayaseNagatoroClassName

hi! link Statement HayaseNagatoroKeyword
hi! link Conditional HayaseNagatoroKeyword
hi! link Repeat HayaseNagatoroKeyword
hi! link Label HayaseNagatoroKeyword
hi! link Operator HayaseNagatoroKeyword
hi! link Keyword HayaseNagatoroKeyword
hi! link Exception HayaseNagatoroKeyword

hi! link PreProc HayaseNagatoroKeyword
hi! link Include HayaseNagatoroKeyword
hi! link Define HayaseNagatoroKeyword
hi! link Macro HayaseNagatoroKeyword
hi! link PreCondit HayaseNagatoroKeyword
hi! link StorageClass HayaseNagatoroKeyword
hi! link Structure HayaseNagatoroKeyword
hi! link Typedef HayaseNagatoroKeyword

hi! link Type HayaseNagatoroKeyColorItalic

hi! link Delimiter HayaseNagatoroFg

hi! link Special HayaseNagatoroKeyword
hi! link SpecialComment HayaseNagatoroKeyColorItalic
hi! link Tag HayaseNagatoroKeyColor
hi! link helpHyperTextJump HayaseNagatoroLink
hi! link helpCommand HayaseNagatoroConstants
hi! link helpExample HayaseNagatoroClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
