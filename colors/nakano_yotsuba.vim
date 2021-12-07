" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'nakano_yotsuba'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:nakano_yotsuba#palette.fg

let s:bglighter = g:nakano_yotsuba#palette.bglighter
let s:bglight   = g:nakano_yotsuba#palette.bglight
let s:bg        = g:nakano_yotsuba#palette.bg
let s:bgdark    = g:nakano_yotsuba#palette.bgdark
let s:bgdarker  = g:nakano_yotsuba#palette.bgdarker

let s:comment   = g:nakano_yotsuba#palette.comment
let s:selection = g:nakano_yotsuba#palette.selection
let s:subtle    = g:nakano_yotsuba#palette.subtle

let s:key_color      = g:nakano_yotsuba#palette.key_color
let s:class_name     = g:nakano_yotsuba#palette.class_name
let s:parameter_color    = g:nakano_yotsuba#palette.parameter_color
let s:keyword_color      = g:nakano_yotsuba#palette.keyword_color
let s:constants_color    = g:nakano_yotsuba#palette.constants_color
let s:red       = g:nakano_yotsuba#palette.red
let s:string_color    = g:nakano_yotsuba#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:nakano_yotsuba#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:nakano_yotsuba#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:nakano_yotsuba_bold')
  let g:nakano_yotsuba_bold = 1
endif

if !exists('g:nakano_yotsuba_italic')
  let g:nakano_yotsuba_italic = 1
endif

if !exists('g:nakano_yotsuba_underline')
  let g:nakano_yotsuba_underline = 1
endif

if !exists('g:nakano_yotsuba_undercurl') && g:nakano_yotsuba_underline != 0
  let g:nakano_yotsuba_undercurl = 1
endif

if !exists('g:nakano_yotsuba_inverse')
  let g:nakano_yotsuba_inverse = 1
endif

if !exists('g:nakano_yotsuba_colorterm')
  let g:nakano_yotsuba_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:nakano_yotsuba_bold == 1 ? 'bold' : 0,
      \ 'italic': g:nakano_yotsuba_italic == 1 ? 'italic' : 0,
      \ 'underline': g:nakano_yotsuba_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:nakano_yotsuba_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:nakano_yotsuba_inverse == 1 ? 'inverse' : 0,
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

call s:h('NakanoYotsubaBgLight', s:none, s:bglight)
call s:h('NakanoYotsubaBgLighter', s:none, s:bglighter)
call s:h('NakanoYotsubaBgDark', s:none, s:bgdark)
call s:h('NakanoYotsubaBgDarker', s:none, s:bgdarker)

call s:h('NakanoYotsubaFg', s:fg)
call s:h('NakanoYotsubaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('NakanoYotsubaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('NakanoYotsubaComment', s:comment)
call s:h('NakanoYotsubaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('NakanoYotsubaSelection', s:none, s:selection)

call s:h('NakanoYotsubaSubtle', s:subtle)

call s:h('NakanoYotsubaKeyColor', s:key_color)
call s:h('NakanoYotsubaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('NakanoYotsubaClassName', s:class_name)
call s:h('NakanoYotsubaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('NakanoYotsubaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('NakanoYotsubaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('NakanoYotsubaParameter', s:parameter_color)
call s:h('NakanoYotsubaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('NakanoYotsubaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('NakanoYotsubaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('NakanoYotsubaParameterInverse', s:bg, s:parameter_color)

call s:h('NakanoYotsubaKeyword', s:keyword_color)
call s:h('NakanoYotsubaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('NakanoYotsubaConstants', s:constants_color)
call s:h('NakanoYotsubaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('NakanoYotsubaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('NakanoYotsubaRed', s:red)
call s:h('NakanoYotsubaRedInverse', s:fg, s:red)

call s:h('NakanoYotsubaStringColor', s:string_color)
call s:h('NakanoYotsubaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('NakanoYotsubaError', s:red, s:none, [], s:red)

call s:h('NakanoYotsubaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('NakanoYotsubaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('NakanoYotsubaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('NakanoYotsubaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('NakanoYotsubaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('NakanoYotsubaBoundary', s:comment, s:bgdark)
call s:h('NakanoYotsubaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('NakanoYotsubaDiffChange', s:parameter_color, s:none)
call s:h('NakanoYotsubaDiffText', s:bg, s:parameter_color)
call s:h('NakanoYotsubaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:nakano_yotsuba_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  NakanoYotsubaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr NakanoYotsubaStringColor
hi! link DiffAdd      NakanoYotsubaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   NakanoYotsubaDiffChange
hi! link DiffDelete   NakanoYotsubaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     NakanoYotsubaDiffText
hi! link Directory    NakanoYotsubaConstantsBold
hi! link ErrorMsg     NakanoYotsubaRedInverse
hi! link FoldColumn   NakanoYotsubaSubtle
hi! link Folded       NakanoYotsubaBoundary
hi! link IncSearch    NakanoYotsubaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      NakanoYotsubaFgBold
hi! link NonText      NakanoYotsubaSubtle
" hi! link Pmenu        NakanoYotsubaBgDark
" hi! link PmenuSbar    NakanoYotsubaBgDark
hi! link PmenuSel     NakanoYotsubaSelection
hi! link PmenuThumb   NakanoYotsubaSelection
hi! link Question     NakanoYotsubaFgBold
hi! link Search       NakanoYotsubaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      NakanoYotsubaBoundary
" hi! link TabLineFill  NakanoYotsubaBgDarker
hi! link TabLineSel   Normal
hi! link Title        NakanoYotsubaClassNameBold
hi! link VertSplit    NakanoYotsubaBoundary
hi! link Visual       NakanoYotsubaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   NakanoYotsubaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey NakanoYotsubaRed
  hi! link LspDiagnosticsUnderline NakanoYotsubaFgUnderline
  hi! link LspDiagnosticsInformation NakanoYotsubaKeyColor
  hi! link LspDiagnosticsHint NakanoYotsubaKeyColor
  hi! link LspDiagnosticsError NakanoYotsubaError
  hi! link LspDiagnosticsWarning NakanoYotsubaParameter
  hi! link LspDiagnosticsUnderlineError NakanoYotsubaErrorLine
  hi! link LspDiagnosticsUnderlineHint NakanoYotsubaInfoLine
  hi! link LspDiagnosticsUnderlineInformation NakanoYotsubaInfoLine
  hi! link LspDiagnosticsUnderlineWarning NakanoYotsubaWarnLine
else
  hi! link SpecialKey NakanoYotsubaSubtle
endif

hi! link Comment NakanoYotsubaComment
hi! link Underlined NakanoYotsubaFgUnderline
hi! link Todo NakanoYotsubaTodo

hi! link Error NakanoYotsubaError
hi! link SpellBad NakanoYotsubaErrorLine
hi! link SpellLocal NakanoYotsubaWarnLine
hi! link SpellCap NakanoYotsubaInfoLine
hi! link SpellRare NakanoYotsubaInfoLine

hi! link Constant NakanoYotsubaConstants
hi! link String NakanoYotsubaStringColor
hi! link Character NakanoYotsubaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier NakanoYotsubaFg
hi! link Function NakanoYotsubaClassName

hi! link Statement NakanoYotsubaKeyword
hi! link Conditional NakanoYotsubaKeyword
hi! link Repeat NakanoYotsubaKeyword
hi! link Label NakanoYotsubaKeyword
hi! link Operator NakanoYotsubaKeyword
hi! link Keyword NakanoYotsubaKeyword
hi! link Exception NakanoYotsubaKeyword

hi! link PreProc NakanoYotsubaKeyword
hi! link Include NakanoYotsubaKeyword
hi! link Define NakanoYotsubaKeyword
hi! link Macro NakanoYotsubaKeyword
hi! link PreCondit NakanoYotsubaKeyword
hi! link StorageClass NakanoYotsubaKeyword
hi! link Structure NakanoYotsubaKeyword
hi! link Typedef NakanoYotsubaKeyword

hi! link Type NakanoYotsubaKeyColorItalic

hi! link Delimiter NakanoYotsubaFg

hi! link Special NakanoYotsubaKeyword
hi! link SpecialComment NakanoYotsubaKeyColorItalic
hi! link Tag NakanoYotsubaKeyColor
hi! link helpHyperTextJump NakanoYotsubaLink
hi! link helpCommand NakanoYotsubaConstants
hi! link helpExample NakanoYotsubaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
