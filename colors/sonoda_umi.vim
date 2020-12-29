" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'sonoda_umi'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:sonoda_umi#palette.fg

let s:bglighter = g:sonoda_umi#palette.bglighter
let s:bglight   = g:sonoda_umi#palette.bglight
let s:bg        = g:sonoda_umi#palette.bg
let s:bgdark    = g:sonoda_umi#palette.bgdark
let s:bgdarker  = g:sonoda_umi#palette.bgdarker

let s:comment   = g:sonoda_umi#palette.comment
let s:selection = g:sonoda_umi#palette.selection
let s:subtle    = g:sonoda_umi#palette.subtle

let s:key_color      = g:sonoda_umi#palette.key_color
let s:class_name     = g:sonoda_umi#palette.class_name
let s:parameter_color    = g:sonoda_umi#palette.parameter_color
let s:keyword_color      = g:sonoda_umi#palette.keyword_color
let s:constants_color    = g:sonoda_umi#palette.constants_color
let s:red       = g:sonoda_umi#palette.red
let s:string_color    = g:sonoda_umi#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:sonoda_umi#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:sonoda_umi#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:sonoda_umi_bold')
  let g:sonoda_umi_bold = 1
endif

if !exists('g:sonoda_umi_italic')
  let g:sonoda_umi_italic = 1
endif

if !exists('g:sonoda_umi_underline')
  let g:sonoda_umi_underline = 1
endif

if !exists('g:sonoda_umi_undercurl') && g:sonoda_umi_underline != 0
  let g:sonoda_umi_undercurl = 1
endif

if !exists('g:sonoda_umi_inverse')
  let g:sonoda_umi_inverse = 1
endif

if !exists('g:sonoda_umi_colorterm')
  let g:sonoda_umi_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:sonoda_umi_bold == 1 ? 'bold' : 0,
      \ 'italic': g:sonoda_umi_italic == 1 ? 'italic' : 0,
      \ 'underline': g:sonoda_umi_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:sonoda_umi_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:sonoda_umi_inverse == 1 ? 'inverse' : 0,
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

call s:h('SonodaUmiBgLight', s:none, s:bglight)
call s:h('SonodaUmiBgLighter', s:none, s:bglighter)
call s:h('SonodaUmiBgDark', s:none, s:bgdark)
call s:h('SonodaUmiBgDarker', s:none, s:bgdarker)

call s:h('SonodaUmiFg', s:fg)
call s:h('SonodaUmiFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('SonodaUmiFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('SonodaUmiComment', s:comment)
call s:h('SonodaUmiCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('SonodaUmiSelection', s:none, s:selection)

call s:h('SonodaUmiSubtle', s:subtle)

call s:h('SonodaUmiKeyColor', s:key_color)
call s:h('SonodaUmiKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('SonodaUmiClassName', s:class_name)
call s:h('SonodaUmiClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('SonodaUmiClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('SonodaUmiClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('SonodaUmiParameter', s:parameter_color)
call s:h('SonodaUmiParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('SonodaUmiParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('SonodaUmiParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('SonodaUmiParameterInverse', s:bg, s:parameter_color)

call s:h('SonodaUmiKeyword', s:keyword_color)
call s:h('SonodaUmiKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('SonodaUmiConstants', s:constants_color)
call s:h('SonodaUmiConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('SonodaUmiConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('SonodaUmiRed', s:red)
call s:h('SonodaUmiRedInverse', s:fg, s:red)

call s:h('SonodaUmiStringColor', s:string_color)
call s:h('SonodaUmiStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('SonodaUmiError', s:red, s:none, [], s:red)

call s:h('SonodaUmiErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('SonodaUmiWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('SonodaUmiInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('SonodaUmiTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('SonodaUmiSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('SonodaUmiBoundary', s:comment, s:bgdark)
call s:h('SonodaUmiLink', s:key_color, s:none, [s:attrs.underline])

call s:h('SonodaUmiDiffChange', s:parameter_color, s:none)
call s:h('SonodaUmiDiffText', s:bg, s:parameter_color)
call s:h('SonodaUmiDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:sonoda_umi_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  SonodaUmiBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr SonodaUmiStringColor
hi! link DiffAdd      SonodaUmiClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   SonodaUmiDiffChange
hi! link DiffDelete   SonodaUmiDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     SonodaUmiDiffText
hi! link Directory    SonodaUmiConstantsBold
hi! link ErrorMsg     SonodaUmiRedInverse
hi! link FoldColumn   SonodaUmiSubtle
hi! link Folded       SonodaUmiBoundary
hi! link IncSearch    SonodaUmiParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      SonodaUmiFgBold
hi! link NonText      SonodaUmiSubtle
" hi! link Pmenu        SonodaUmiBgDark
" hi! link PmenuSbar    SonodaUmiBgDark
hi! link PmenuSel     SonodaUmiSelection
hi! link PmenuThumb   SonodaUmiSelection
hi! link Question     SonodaUmiFgBold
hi! link Search       SonodaUmiSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      SonodaUmiBoundary
" hi! link TabLineFill  SonodaUmiBgDarker
hi! link TabLineSel   Normal
hi! link Title        SonodaUmiClassNameBold
hi! link VertSplit    SonodaUmiBoundary
hi! link Visual       SonodaUmiSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   SonodaUmiParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey SonodaUmiRed
  hi! link LspDiagnosticsUnderline SonodaUmiFgUnderline
  hi! link LspDiagnosticsInformation SonodaUmiKeyColor
  hi! link LspDiagnosticsHint SonodaUmiKeyColor
  hi! link LspDiagnosticsError SonodaUmiError
  hi! link LspDiagnosticsWarning SonodaUmiParameter
  hi! link LspDiagnosticsUnderlineError SonodaUmiErrorLine
  hi! link LspDiagnosticsUnderlineHint SonodaUmiInfoLine
  hi! link LspDiagnosticsUnderlineInformation SonodaUmiInfoLine
  hi! link LspDiagnosticsUnderlineWarning SonodaUmiWarnLine
else
  hi! link SpecialKey SonodaUmiSubtle
endif

hi! link Comment SonodaUmiComment
hi! link Underlined SonodaUmiFgUnderline
hi! link Todo SonodaUmiTodo

hi! link Error SonodaUmiError
hi! link SpellBad SonodaUmiErrorLine
hi! link SpellLocal SonodaUmiWarnLine
hi! link SpellCap SonodaUmiInfoLine
hi! link SpellRare SonodaUmiInfoLine

hi! link Constant SonodaUmiConstants
hi! link String SonodaUmiStringColor
hi! link Character SonodaUmiKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier SonodaUmiFg
hi! link Function SonodaUmiClassName

hi! link Statement SonodaUmiKeyword
hi! link Conditional SonodaUmiKeyword
hi! link Repeat SonodaUmiKeyword
hi! link Label SonodaUmiKeyword
hi! link Operator SonodaUmiKeyword
hi! link Keyword SonodaUmiKeyword
hi! link Exception SonodaUmiKeyword

hi! link PreProc SonodaUmiKeyword
hi! link Include SonodaUmiKeyword
hi! link Define SonodaUmiKeyword
hi! link Macro SonodaUmiKeyword
hi! link PreCondit SonodaUmiKeyword
hi! link StorageClass SonodaUmiKeyword
hi! link Structure SonodaUmiKeyword
hi! link Typedef SonodaUmiKeyword

hi! link Type SonodaUmiKeyColorItalic

hi! link Delimiter SonodaUmiFg

hi! link Special SonodaUmiKeyword
hi! link SpecialComment SonodaUmiKeyColorItalic
hi! link Tag SonodaUmiKeyColor
hi! link helpHyperTextJump SonodaUmiLink
hi! link helpCommand SonodaUmiConstants
hi! link helpExample SonodaUmiClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
