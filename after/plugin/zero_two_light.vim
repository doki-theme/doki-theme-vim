if zero_two_light#should_abort()
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
    \ 'hl+':     ['fg', 'ZeroTwoLightParameter'],
    \ 'info':    ['fg', 'ZeroTwoLightConstants'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'ZeroTwoLightClassName'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \}
endif
"}}}
" ALE: 
if exists('g:ale_enabled')
  hi! link ALEError              ZeroTwoLightErrorLine
  hi! link ALEWarning            ZeroTwoLightWarnLine
  hi! link ALEInfo               ZeroTwoLightInfoLine

  hi! link ALEErrorSign          ZeroTwoLightRed
  hi! link ALEWarningSign        ZeroTwoLightParameter
  hi! link ALEInfoSign           ZeroTwoLightKeyColor

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
