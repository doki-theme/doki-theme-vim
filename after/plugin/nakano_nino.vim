if nakano_nino#should_abort()
  finish
endif

" Fzf: 
if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Search'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'Normal'],
    \ 'hl+':     ['fg', 'NakanoNinoParameter'],
    \ 'info':    ['fg', 'NakanoNinoConstants'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'NakanoNinoClassName'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \}
endif
"}}}
" ALE: 
if exists('g:ale_enabled')
  hi! link ALEError              NakanoNinoErrorLine
  hi! link ALEWarning            NakanoNinoWarnLine
  hi! link ALEInfo               NakanoNinoInfoLine

  hi! link ALEErrorSign          NakanoNinoRed
  hi! link ALEWarningSign        NakanoNinoParameter
  hi! link ALEInfoSign           NakanoNinoKeyColor

  hi! link ALEVirtualTextError   Comment
  hi! link ALEVirtualTextWarning Comment
endif
" }}}
" CtrlP: 
if exists('g:loaded_ctrlp')
  hi! link CtrlPMatch     IncSearch
  hi! link CtrlPBufferHid Normal
endif
" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
