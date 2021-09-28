" Palette: 

let g:ryuko_light#palette           = {}
let g:ryuko_light#palette.fg        = ['#101010', 233]

let g:ryuko_light#palette.bglighter = ['#fafbfc', 231]
let g:ryuko_light#palette.bglight   = ['#fafbfc', 231]
let g:ryuko_light#palette.bg        = ['#fafbfc', 231]
let g:ryuko_light#palette.bgdark    = ['#fafbfc', 231]
let g:ryuko_light#palette.bgdarker  = ['#fafbfc', 231]

let g:ryuko_light#palette.comment   = ['#505D64',  59]
let g:ryuko_light#palette.selection = ['#74adec', 111]
let g:ryuko_light#palette.subtle    = ['#e6effc', 255]

let g:ryuko_light#palette.key_color      = ['#007972', 29]
let g:ryuko_light#palette.class_name     = ['#7748B7', 97]
let g:ryuko_light#palette.parameter_color    = ['#169ef2', 39]
let g:ryuko_light#palette.keyword_color      = ['#B03F0F', 130]
let g:ryuko_light#palette.constants_color    = ['#005CC5', 26]
let g:ryuko_light#palette.red       = ['#FF5555', 203]
let g:ryuko_light#palette.string_color    = ['#0F92E3', 32]

"
" Terminal Colors
"
let g:ryuko_light#palette.color_0  = '#21222C'
let g:ryuko_light#palette.color_1  = '#E356A7'
let g:ryuko_light#palette.color_2  = '#208D3B'
let g:ryuko_light#palette.color_3  = '#F1FA8C'
let g:ryuko_light#palette.color_4  = '#5C358D'
let g:ryuko_light#palette.color_5  = '#E64747'
let g:ryuko_light#palette.color_6  = '#0896AD'
let g:ryuko_light#palette.color_7  = '#F8F8F2'
let g:ryuko_light#palette.color_8  = '#6272A4'
let g:ryuko_light#palette.color_9  = '#E356A7'
let g:ryuko_light#palette.color_10 = '#208D3B'
let g:ryuko_light#palette.color_11 = '#916121'
let g:ryuko_light#palette.color_12 = '#5C358D'
let g:ryuko_light#palette.color_13 = '#E64747'
let g:ryuko_light#palette.color_14 = '#0896AD'
let g:ryuko_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! ryuko_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'ryuko_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
