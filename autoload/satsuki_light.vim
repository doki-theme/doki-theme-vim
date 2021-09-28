" Palette: 

let g:satsuki_light#palette           = {}
let g:satsuki_light#palette.fg        = ['#101010', 233]

let g:satsuki_light#palette.bglighter = ['#fafbfc', 231]
let g:satsuki_light#palette.bglight   = ['#fafbfc', 231]
let g:satsuki_light#palette.bg        = ['#fafbfc', 231]
let g:satsuki_light#palette.bgdark    = ['#fafbfc', 231]
let g:satsuki_light#palette.bgdarker  = ['#fafbfc', 231]

let g:satsuki_light#palette.comment   = ['#505D64',  59]
let g:satsuki_light#palette.selection = ['#748fec', 105]
let g:satsuki_light#palette.subtle    = ['#e6effc', 255]

let g:satsuki_light#palette.key_color      = ['#79074c', 89]
let g:satsuki_light#palette.class_name     = ['#7748B7', 97]
let g:satsuki_light#palette.parameter_color    = ['#275AB3', 25]
let g:satsuki_light#palette.keyword_color      = ['#13a78c', 36]
let g:satsuki_light#palette.constants_color    = ['#005CC5', 26]
let g:satsuki_light#palette.red       = ['#FF5555', 203]
let g:satsuki_light#palette.string_color    = ['#0F92E3', 32]

"
" Terminal Colors
"
let g:satsuki_light#palette.color_0  = '#21222C'
let g:satsuki_light#palette.color_1  = '#E356A7'
let g:satsuki_light#palette.color_2  = '#208D3B'
let g:satsuki_light#palette.color_3  = '#F1FA8C'
let g:satsuki_light#palette.color_4  = '#5C358D'
let g:satsuki_light#palette.color_5  = '#E64747'
let g:satsuki_light#palette.color_6  = '#0896AD'
let g:satsuki_light#palette.color_7  = '#F8F8F2'
let g:satsuki_light#palette.color_8  = '#6272A4'
let g:satsuki_light#palette.color_9  = '#E356A7'
let g:satsuki_light#palette.color_10 = '#208D3B'
let g:satsuki_light#palette.color_11 = '#916121'
let g:satsuki_light#palette.color_12 = '#5C358D'
let g:satsuki_light#palette.color_13 = '#E64747'
let g:satsuki_light#palette.color_14 = '#0896AD'
let g:satsuki_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! satsuki_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'satsuki_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
