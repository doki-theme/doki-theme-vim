if yukinoshita_yukino#should_abort()
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
    \ 'hl+':     ['fg', 'YukinoshitaYukinoParameter'],
    \ 'info':    ['fg', 'YukinoshitaYukinoConstants'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'YukinoshitaYukinoClassName'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \}
endif
"}}}
" ALE: 
if exists('g:ale_enabled')
  hi! link ALEError              YukinoshitaYukinoErrorLine
  hi! link ALEWarning            YukinoshitaYukinoWarnLine
  hi! link ALEInfo               YukinoshitaYukinoInfoLine

  hi! link ALEErrorSign          YukinoshitaYukinoRed
  hi! link ALEWarningSign        YukinoshitaYukinoParameter
  hi! link ALEInfoSign           YukinoshitaYukinoKeyColor

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
