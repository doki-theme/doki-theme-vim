if {{themeName}}#should_abort()
  finish
endif

" Fzf: {{{
if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Search'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'Normal'],
    \ 'hl+':     ['fg', '{{themeProperName}}Parameter'],
    \ 'info':    ['fg', '{{themeProperName}}Constants'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', '{{themeProperName}}ClassName'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \}
endif
"}}}
" ALE: {{{
if exists('g:ale_enabled')
  hi! link ALEError              {{themeProperName}}ErrorLine
  hi! link ALEWarning            {{themeProperName}}WarnLine
  hi! link ALEInfo               {{themeProperName}}InfoLine

  hi! link ALEErrorSign          {{themeProperName}}Red
  hi! link ALEWarningSign        {{themeProperName}}Parameter
  hi! link ALEInfoSign           {{themeProperName}}KeyColor

  hi! link ALEVirtualTextError   Comment
  hi! link ALEVirtualTextWarning Comment
endif
" }}}
" CtrlP: {{{
if exists('g:loaded_ctrlp')
  hi! link CtrlPMatch     IncSearch
  hi! link CtrlPBufferHid Normal
endif
" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
