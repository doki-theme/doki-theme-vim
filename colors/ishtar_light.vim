" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'ishtar_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:ishtar_light#palette.fg

let s:bglighter = g:ishtar_light#palette.bglighter
let s:bglight   = g:ishtar_light#palette.bglight
let s:bg        = g:ishtar_light#palette.bg
let s:bgdark    = g:ishtar_light#palette.bgdark
let s:bgdarker  = g:ishtar_light#palette.bgdarker

let s:comment   = g:ishtar_light#palette.comment
let s:selection = g:ishtar_light#palette.selection
let s:subtle    = g:ishtar_light#palette.subtle

let s:key_color      = g:ishtar_light#palette.key_color
let s:class_name     = g:ishtar_light#palette.class_name
let s:parameter_color    = g:ishtar_light#palette.parameter_color
let s:keyword_color      = g:ishtar_light#palette.keyword_color
let s:constants_color    = g:ishtar_light#palette.constants_color
let s:red       = g:ishtar_light#palette.red
let s:string_color    = g:ishtar_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:ishtar_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:ishtar_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:ishtar_light_bold')
  let g:ishtar_light_bold = 1
endif

if !exists('g:ishtar_light_italic')
  let g:ishtar_light_italic = 1
endif

if !exists('g:ishtar_light_underline')
  let g:ishtar_light_underline = 1
endif

if !exists('g:ishtar_light_undercurl') && g:ishtar_light_underline != 0
  let g:ishtar_light_undercurl = 1
endif

if !exists('g:ishtar_light_inverse')
  let g:ishtar_light_inverse = 1
endif

if !exists('g:ishtar_light_colorterm')
  let g:ishtar_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:ishtar_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:ishtar_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:ishtar_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:ishtar_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:ishtar_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('IshtarLightBgLight', s:none, s:bglight)
call s:h('IshtarLightBgLighter', s:none, s:bglighter)
call s:h('IshtarLightBgDark', s:none, s:bgdark)
call s:h('IshtarLightBgDarker', s:none, s:bgdarker)

call s:h('IshtarLightFg', s:fg)
call s:h('IshtarLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('IshtarLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('IshtarLightComment', s:comment)
call s:h('IshtarLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('IshtarLightSelection', s:none, s:selection)

call s:h('IshtarLightSubtle', s:subtle)

call s:h('IshtarLightKeyColor', s:key_color)
call s:h('IshtarLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('IshtarLightClassName', s:class_name)
call s:h('IshtarLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('IshtarLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('IshtarLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('IshtarLightParameter', s:parameter_color)
call s:h('IshtarLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('IshtarLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('IshtarLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('IshtarLightParameterInverse', s:bg, s:parameter_color)

call s:h('IshtarLightKeyword', s:keyword_color)
call s:h('IshtarLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('IshtarLightConstants', s:constants_color)
call s:h('IshtarLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('IshtarLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('IshtarLightRed', s:red)
call s:h('IshtarLightRedInverse', s:fg, s:red)

call s:h('IshtarLightStringColor', s:string_color)
call s:h('IshtarLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('IshtarLightError', s:red, s:none, [], s:red)

call s:h('IshtarLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('IshtarLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('IshtarLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('IshtarLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('IshtarLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('IshtarLightBoundary', s:comment, s:bgdark)
call s:h('IshtarLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('IshtarLightDiffChange', s:parameter_color, s:none)
call s:h('IshtarLightDiffText', s:bg, s:parameter_color)
call s:h('IshtarLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:ishtar_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  IshtarLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr IshtarLightStringColor
hi! link DiffAdd      IshtarLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   IshtarLightDiffChange
hi! link DiffDelete   IshtarLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     IshtarLightDiffText
hi! link Directory    IshtarLightConstantsBold
hi! link ErrorMsg     IshtarLightRedInverse
hi! link FoldColumn   IshtarLightSubtle
hi! link Folded       IshtarLightBoundary
hi! link IncSearch    IshtarLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      IshtarLightFgBold
hi! link NonText      IshtarLightSubtle
" hi! link Pmenu        IshtarLightBgDark
" hi! link PmenuSbar    IshtarLightBgDark
hi! link PmenuSel     IshtarLightSelection
hi! link PmenuThumb   IshtarLightSelection
hi! link Question     IshtarLightFgBold
hi! link Search       IshtarLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      IshtarLightBoundary
" hi! link TabLineFill  IshtarLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        IshtarLightClassNameBold
hi! link VertSplit    IshtarLightBoundary
hi! link Visual       IshtarLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   IshtarLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey IshtarLightRed
  hi! link LspDiagnosticsUnderline IshtarLightFgUnderline
  hi! link LspDiagnosticsInformation IshtarLightKeyColor
  hi! link LspDiagnosticsHint IshtarLightKeyColor
  hi! link LspDiagnosticsError IshtarLightError
  hi! link LspDiagnosticsWarning IshtarLightParameter
  hi! link LspDiagnosticsUnderlineError IshtarLightErrorLine
  hi! link LspDiagnosticsUnderlineHint IshtarLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation IshtarLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning IshtarLightWarnLine
else
  hi! link SpecialKey IshtarLightSubtle
endif

hi! link Comment IshtarLightComment
hi! link Underlined IshtarLightFgUnderline
hi! link Todo IshtarLightTodo

hi! link Error IshtarLightError
hi! link SpellBad IshtarLightErrorLine
hi! link SpellLocal IshtarLightWarnLine
hi! link SpellCap IshtarLightInfoLine
hi! link SpellRare IshtarLightInfoLine

hi! link Constant IshtarLightConstants
hi! link String IshtarLightStringColor
hi! link Character IshtarLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier IshtarLightFg
hi! link Function IshtarLightClassName

hi! link Statement IshtarLightKeyword
hi! link Conditional IshtarLightKeyword
hi! link Repeat IshtarLightKeyword
hi! link Label IshtarLightKeyword
hi! link Operator IshtarLightKeyword
hi! link Keyword IshtarLightKeyword
hi! link Exception IshtarLightKeyword

hi! link PreProc IshtarLightKeyword
hi! link Include IshtarLightKeyword
hi! link Define IshtarLightKeyword
hi! link Macro IshtarLightKeyword
hi! link PreCondit IshtarLightKeyword
hi! link StorageClass IshtarLightKeyword
hi! link Structure IshtarLightKeyword
hi! link Typedef IshtarLightKeyword

hi! link Type IshtarLightKeyColorItalic

hi! link Delimiter IshtarLightFg

hi! link Special IshtarLightKeyword
hi! link SpecialComment IshtarLightKeyColorItalic
hi! link Tag IshtarLightKeyColor
hi! link helpHyperTextJump IshtarLightLink
hi! link helpCommand IshtarLightConstants
hi! link helpExample IshtarLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
