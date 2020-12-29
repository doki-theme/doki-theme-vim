" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'yukinoshita_yukino'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:yukinoshita_yukino#palette.fg

let s:bglighter = g:yukinoshita_yukino#palette.bglighter
let s:bglight   = g:yukinoshita_yukino#palette.bglight
let s:bg        = g:yukinoshita_yukino#palette.bg
let s:bgdark    = g:yukinoshita_yukino#palette.bgdark
let s:bgdarker  = g:yukinoshita_yukino#palette.bgdarker

let s:comment   = g:yukinoshita_yukino#palette.comment
let s:selection = g:yukinoshita_yukino#palette.selection
let s:subtle    = g:yukinoshita_yukino#palette.subtle

let s:key_color      = g:yukinoshita_yukino#palette.key_color
let s:class_name     = g:yukinoshita_yukino#palette.class_name
let s:parameter_color    = g:yukinoshita_yukino#palette.parameter_color
let s:keyword_color      = g:yukinoshita_yukino#palette.keyword_color
let s:constants_color    = g:yukinoshita_yukino#palette.constants_color
let s:red       = g:yukinoshita_yukino#palette.red
let s:string_color    = g:yukinoshita_yukino#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:yukinoshita_yukino#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:yukinoshita_yukino#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:yukinoshita_yukino_bold')
  let g:yukinoshita_yukino_bold = 1
endif

if !exists('g:yukinoshita_yukino_italic')
  let g:yukinoshita_yukino_italic = 1
endif

if !exists('g:yukinoshita_yukino_underline')
  let g:yukinoshita_yukino_underline = 1
endif

if !exists('g:yukinoshita_yukino_undercurl') && g:yukinoshita_yukino_underline != 0
  let g:yukinoshita_yukino_undercurl = 1
endif

if !exists('g:yukinoshita_yukino_inverse')
  let g:yukinoshita_yukino_inverse = 1
endif

if !exists('g:yukinoshita_yukino_colorterm')
  let g:yukinoshita_yukino_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:yukinoshita_yukino_bold == 1 ? 'bold' : 0,
      \ 'italic': g:yukinoshita_yukino_italic == 1 ? 'italic' : 0,
      \ 'underline': g:yukinoshita_yukino_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:yukinoshita_yukino_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:yukinoshita_yukino_inverse == 1 ? 'inverse' : 0,
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

call s:h('YukinoshitaYukinoBgLight', s:none, s:bglight)
call s:h('YukinoshitaYukinoBgLighter', s:none, s:bglighter)
call s:h('YukinoshitaYukinoBgDark', s:none, s:bgdark)
call s:h('YukinoshitaYukinoBgDarker', s:none, s:bgdarker)

call s:h('YukinoshitaYukinoFg', s:fg)
call s:h('YukinoshitaYukinoFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('YukinoshitaYukinoFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('YukinoshitaYukinoComment', s:comment)
call s:h('YukinoshitaYukinoCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('YukinoshitaYukinoSelection', s:none, s:selection)

call s:h('YukinoshitaYukinoSubtle', s:subtle)

call s:h('YukinoshitaYukinoKeyColor', s:key_color)
call s:h('YukinoshitaYukinoKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('YukinoshitaYukinoClassName', s:class_name)
call s:h('YukinoshitaYukinoClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('YukinoshitaYukinoClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('YukinoshitaYukinoClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('YukinoshitaYukinoParameter', s:parameter_color)
call s:h('YukinoshitaYukinoParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('YukinoshitaYukinoParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('YukinoshitaYukinoParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('YukinoshitaYukinoParameterInverse', s:bg, s:parameter_color)

call s:h('YukinoshitaYukinoKeyword', s:keyword_color)
call s:h('YukinoshitaYukinoKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('YukinoshitaYukinoConstants', s:constants_color)
call s:h('YukinoshitaYukinoConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('YukinoshitaYukinoConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('YukinoshitaYukinoRed', s:red)
call s:h('YukinoshitaYukinoRedInverse', s:fg, s:red)

call s:h('YukinoshitaYukinoStringColor', s:string_color)
call s:h('YukinoshitaYukinoStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('YukinoshitaYukinoError', s:red, s:none, [], s:red)

call s:h('YukinoshitaYukinoErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('YukinoshitaYukinoWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('YukinoshitaYukinoInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('YukinoshitaYukinoTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('YukinoshitaYukinoSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('YukinoshitaYukinoBoundary', s:comment, s:bgdark)
call s:h('YukinoshitaYukinoLink', s:key_color, s:none, [s:attrs.underline])

call s:h('YukinoshitaYukinoDiffChange', s:parameter_color, s:none)
call s:h('YukinoshitaYukinoDiffText', s:bg, s:parameter_color)
call s:h('YukinoshitaYukinoDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:yukinoshita_yukino_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  YukinoshitaYukinoBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr YukinoshitaYukinoStringColor
hi! link DiffAdd      YukinoshitaYukinoClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   YukinoshitaYukinoDiffChange
hi! link DiffDelete   YukinoshitaYukinoDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     YukinoshitaYukinoDiffText
hi! link Directory    YukinoshitaYukinoConstantsBold
hi! link ErrorMsg     YukinoshitaYukinoRedInverse
hi! link FoldColumn   YukinoshitaYukinoSubtle
hi! link Folded       YukinoshitaYukinoBoundary
hi! link IncSearch    YukinoshitaYukinoParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      YukinoshitaYukinoFgBold
hi! link NonText      YukinoshitaYukinoSubtle
" hi! link Pmenu        YukinoshitaYukinoBgDark
" hi! link PmenuSbar    YukinoshitaYukinoBgDark
hi! link PmenuSel     YukinoshitaYukinoSelection
hi! link PmenuThumb   YukinoshitaYukinoSelection
hi! link Question     YukinoshitaYukinoFgBold
hi! link Search       YukinoshitaYukinoSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      YukinoshitaYukinoBoundary
" hi! link TabLineFill  YukinoshitaYukinoBgDarker
hi! link TabLineSel   Normal
hi! link Title        YukinoshitaYukinoClassNameBold
hi! link VertSplit    YukinoshitaYukinoBoundary
hi! link Visual       YukinoshitaYukinoSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   YukinoshitaYukinoParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey YukinoshitaYukinoRed
  hi! link LspDiagnosticsUnderline YukinoshitaYukinoFgUnderline
  hi! link LspDiagnosticsInformation YukinoshitaYukinoKeyColor
  hi! link LspDiagnosticsHint YukinoshitaYukinoKeyColor
  hi! link LspDiagnosticsError YukinoshitaYukinoError
  hi! link LspDiagnosticsWarning YukinoshitaYukinoParameter
  hi! link LspDiagnosticsUnderlineError YukinoshitaYukinoErrorLine
  hi! link LspDiagnosticsUnderlineHint YukinoshitaYukinoInfoLine
  hi! link LspDiagnosticsUnderlineInformation YukinoshitaYukinoInfoLine
  hi! link LspDiagnosticsUnderlineWarning YukinoshitaYukinoWarnLine
else
  hi! link SpecialKey YukinoshitaYukinoSubtle
endif

hi! link Comment YukinoshitaYukinoComment
hi! link Underlined YukinoshitaYukinoFgUnderline
hi! link Todo YukinoshitaYukinoTodo

hi! link Error YukinoshitaYukinoError
hi! link SpellBad YukinoshitaYukinoErrorLine
hi! link SpellLocal YukinoshitaYukinoWarnLine
hi! link SpellCap YukinoshitaYukinoInfoLine
hi! link SpellRare YukinoshitaYukinoInfoLine

hi! link Constant YukinoshitaYukinoConstants
hi! link String YukinoshitaYukinoStringColor
hi! link Character YukinoshitaYukinoKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier YukinoshitaYukinoFg
hi! link Function YukinoshitaYukinoClassName

hi! link Statement YukinoshitaYukinoKeyword
hi! link Conditional YukinoshitaYukinoKeyword
hi! link Repeat YukinoshitaYukinoKeyword
hi! link Label YukinoshitaYukinoKeyword
hi! link Operator YukinoshitaYukinoKeyword
hi! link Keyword YukinoshitaYukinoKeyword
hi! link Exception YukinoshitaYukinoKeyword

hi! link PreProc YukinoshitaYukinoKeyword
hi! link Include YukinoshitaYukinoKeyword
hi! link Define YukinoshitaYukinoKeyword
hi! link Macro YukinoshitaYukinoKeyword
hi! link PreCondit YukinoshitaYukinoKeyword
hi! link StorageClass YukinoshitaYukinoKeyword
hi! link Structure YukinoshitaYukinoKeyword
hi! link Typedef YukinoshitaYukinoKeyword

hi! link Type YukinoshitaYukinoKeyColorItalic

hi! link Delimiter YukinoshitaYukinoFg

hi! link Special YukinoshitaYukinoKeyword
hi! link SpecialComment YukinoshitaYukinoKeyColorItalic
hi! link Tag YukinoshitaYukinoKeyColor
hi! link helpHyperTextJump YukinoshitaYukinoLink
hi! link helpCommand YukinoshitaYukinoConstants
hi! link helpExample YukinoshitaYukinoClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
