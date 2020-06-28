" Configuration: {{{

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = '{{themeName}}'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: {{{2

let s:fg        = g:{{themeName}}#palette.fg

let s:bglighter = g:{{themeName}}#palette.bglighter
let s:bglight   = g:{{themeName}}#palette.bglight
let s:bg        = g:{{themeName}}#palette.bg
let s:bgdark    = g:{{themeName}}#palette.bgdark
let s:bgdarker  = g:{{themeName}}#palette.bgdarker

let s:comment   = g:{{themeName}}#palette.comment
let s:selection = g:{{themeName}}#palette.selection
let s:subtle    = g:{{themeName}}#palette.subtle

let s:cyan      = g:{{themeName}}#palette.cyan
let s:green     = g:{{themeName}}#palette.green
let s:orange    = g:{{themeName}}#palette.orange
let s:pink      = g:{{themeName}}#palette.pink
let s:purple    = g:{{themeName}}#palette.purple
let s:red       = g:{{themeName}}#palette.red
let s:string_color    = g:{{themeName}}#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:{{themeName}}#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:{{themeName}}#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: {{{2

if !exists('g:{{themeName}}_bold')
  let g:{{themeName}}_bold = 1
endif

if !exists('g:{{themeName}}_italic')
  let g:{{themeName}}_italic = 1
endif

if !exists('g:{{themeName}}_underline')
  let g:{{themeName}}_underline = 1
endif

if !exists('g:{{themeName}}_undercurl') && g:{{themeName}}_underline != 0
  let g:{{themeName}}_undercurl = 1
endif

if !exists('g:{{themeName}}_inverse')
  let g:{{themeName}}_inverse = 1
endif

if !exists('g:{{themeName}}_colorterm')
  let g:{{themeName}}_colorterm = 1
endif

"}}}2
" Script Helpers: {{{2

let s:attrs = {
      \ 'bold': g:{{themeName}}_bold == 1 ? 'bold' : 0,
      \ 'italic': g:{{themeName}}_italic == 1 ? 'italic' : 0,
      \ 'underline': g:{{themeName}}_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:{{themeName}}_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:{{themeName}}_inverse == 1 ? 'inverse' : 0,
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
"Highlight Groups: {{{2

call s:h('{{themeProperName}}BgLight', s:none, s:bglight)
call s:h('{{themeProperName}}BgLighter', s:none, s:bglighter)
call s:h('{{themeProperName}}BgDark', s:none, s:bgdark)
call s:h('{{themeProperName}}BgDarker', s:none, s:bgdarker)

call s:h('{{themeProperName}}Fg', s:fg)
call s:h('{{themeProperName}}FgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('{{themeProperName}}FgBold', s:fg, s:none, [s:attrs.bold])

call s:h('{{themeProperName}}Comment', s:comment)
call s:h('{{themeProperName}}CommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('{{themeProperName}}Selection', s:none, s:selection)

call s:h('{{themeProperName}}Subtle', s:subtle)

call s:h('{{themeProperName}}Cyan', s:cyan)
call s:h('{{themeProperName}}CyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('{{themeProperName}}Green', s:green)
call s:h('{{themeProperName}}GreenBold', s:green, s:none, [s:attrs.bold])
call s:h('{{themeProperName}}GreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('{{themeProperName}}GreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('{{themeProperName}}Orange', s:orange)
call s:h('{{themeProperName}}OrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('{{themeProperName}}OrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('{{themeProperName}}OrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('{{themeProperName}}OrangeInverse', s:bg, s:orange)

call s:h('{{themeProperName}}Pink', s:pink)
call s:h('{{themeProperName}}PinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('{{themeProperName}}Purple', s:purple)
call s:h('{{themeProperName}}PurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('{{themeProperName}}PurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('{{themeProperName}}Red', s:red)
call s:h('{{themeProperName}}RedInverse', s:fg, s:red)

call s:h('{{themeProperName}}StringColor', s:string_color)
call s:h('{{themeProperName}}StringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('{{themeProperName}}Error', s:red, s:none, [], s:red)

call s:h('{{themeProperName}}ErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('{{themeProperName}}WarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('{{themeProperName}}InfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('{{themeProperName}}Todo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('{{themeProperName}}Search', s:green, s:none, [s:attrs.inverse])
call s:h('{{themeProperName}}Boundary', s:comment, s:bgdark)
call s:h('{{themeProperName}}Link', s:cyan, s:none, [s:attrs.underline])

call s:h('{{themeProperName}}DiffChange', s:orange, s:none)
call s:h('{{themeProperName}}DiffText', s:bg, s:orange)
call s:h('{{themeProperName}}DiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: {{{


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:{{themeName}}_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  {{themeProperName}}BgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr {{themeProperName}}StringColor
hi! link DiffAdd      {{themeProperName}}Green
hi! link DiffAdded    DiffAdd
hi! link DiffChange   {{themeProperName}}DiffChange
hi! link DiffDelete   {{themeProperName}}DiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     {{themeProperName}}DiffText
hi! link Directory    {{themeProperName}}PurpleBold
hi! link ErrorMsg     {{themeProperName}}RedInverse
hi! link FoldColumn   {{themeProperName}}Subtle
hi! link Folded       {{themeProperName}}Boundary
hi! link IncSearch    {{themeProperName}}OrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      {{themeProperName}}FgBold
hi! link NonText      {{themeProperName}}Subtle
" hi! link Pmenu        {{themeProperName}}BgDark
" hi! link PmenuSbar    {{themeProperName}}BgDark
hi! link PmenuSel     {{themeProperName}}Selection
hi! link PmenuThumb   {{themeProperName}}Selection
hi! link Question     {{themeProperName}}FgBold
hi! link Search       {{themeProperName}}Search
call s:h('SignColumn', s:comment)
hi! link TabLine      {{themeProperName}}Boundary
" hi! link TabLineFill  {{themeProperName}}BgDarker
hi! link TabLineSel   Normal
hi! link Title        {{themeProperName}}GreenBold
hi! link VertSplit    {{themeProperName}}Boundary
hi! link Visual       {{themeProperName}}Selection
hi! link VisualNOS    Visual
hi! link WarningMsg   {{themeProperName}}OrangeInverse

" }}}
" Syntax: {{{

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey {{themeProperName}}Red
  hi! link LspDiagnosticsUnderline {{themeProperName}}FgUnderline
  hi! link LspDiagnosticsInformation {{themeProperName}}Cyan
  hi! link LspDiagnosticsHint {{themeProperName}}Cyan
  hi! link LspDiagnosticsError {{themeProperName}}Error
  hi! link LspDiagnosticsWarning {{themeProperName}}Orange
  hi! link LspDiagnosticsUnderlineError {{themeProperName}}ErrorLine
  hi! link LspDiagnosticsUnderlineHint {{themeProperName}}InfoLine
  hi! link LspDiagnosticsUnderlineInformation {{themeProperName}}InfoLine
  hi! link LspDiagnosticsUnderlineWarning {{themeProperName}}WarnLine
else
  hi! link SpecialKey {{themeProperName}}Subtle
endif

hi! link Comment {{themeProperName}}Comment
hi! link Underlined {{themeProperName}}FgUnderline
hi! link Todo {{themeProperName}}Todo

hi! link Error {{themeProperName}}Error
hi! link SpellBad {{themeProperName}}ErrorLine
hi! link SpellLocal {{themeProperName}}WarnLine
hi! link SpellCap {{themeProperName}}InfoLine
hi! link SpellRare {{themeProperName}}InfoLine

hi! link Constant {{themeProperName}}Purple
hi! link String {{themeProperName}}StringColor
hi! link Character {{themeProperName}}Pink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier {{themeProperName}}Fg
hi! link Function {{themeProperName}}Green

hi! link Statement {{themeProperName}}Pink
hi! link Conditional {{themeProperName}}Pink
hi! link Repeat {{themeProperName}}Pink
hi! link Label {{themeProperName}}Pink
hi! link Operator {{themeProperName}}Pink
hi! link Keyword {{themeProperName}}Pink
hi! link Exception {{themeProperName}}Pink

hi! link PreProc {{themeProperName}}Pink
hi! link Include {{themeProperName}}Pink
hi! link Define {{themeProperName}}Pink
hi! link Macro {{themeProperName}}Pink
hi! link PreCondit {{themeProperName}}Pink
hi! link StorageClass {{themeProperName}}Pink
hi! link Structure {{themeProperName}}Pink
hi! link Typedef {{themeProperName}}Pink

hi! link Type {{themeProperName}}CyanItalic

hi! link Delimiter {{themeProperName}}Fg

hi! link Special {{themeProperName}}Pink
hi! link SpecialComment {{themeProperName}}CyanItalic
hi! link Tag {{themeProperName}}Cyan
hi! link helpHyperTextJump {{themeProperName}}Link
hi! link helpCommand {{themeProperName}}Purple
hi! link helpExample {{themeProperName}}Green
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
