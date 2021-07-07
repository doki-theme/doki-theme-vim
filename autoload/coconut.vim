" Palette: 

let g:coconut#palette           = {}
let g:coconut#palette.fg        = ['#d3d3d3', 252]

let g:coconut#palette.bglighter = ['#3a3143', 237]
let g:coconut#palette.bglight   = ['#3a3143', 237]
let g:coconut#palette.bg        = ['#3a3143', 237]
let g:coconut#palette.bgdark    = ['#3a3143', 237]
let g:coconut#palette.bgdarker  = ['#3a3143', 237]

let g:coconut#palette.comment   = ['#6f6880',  242]
let g:coconut#palette.selection = ['#255b82', 24]
let g:coconut#palette.subtle    = ['#393243', 237]

let g:coconut#palette.key_color      = ['#48eae4', 80]
let g:coconut#palette.class_name     = ['#f689f6', 213]
let g:coconut#palette.parameter_color    = ['#FFB86C', 215]
let g:coconut#palette.keyword_color      = ['#b897f6', 141]
let g:coconut#palette.constants_color    = ['#50b5d1', 74]
let g:coconut#palette.red       = ['#FF5555', 203]
let g:coconut#palette.string_color    = ['#F6E9CB', 224]

"
" Terminal Colors
"
let g:coconut#palette.color_0  = '#21222C'
let g:coconut#palette.color_1  = '#E356A7'
let g:coconut#palette.color_2  = '#42E66C'
let g:coconut#palette.color_3  = '#F1FA8C'
let g:coconut#palette.color_4  = '#9B6BDF'
let g:coconut#palette.color_5  = '#E64747'
let g:coconut#palette.color_6  = '#75D7EC'
let g:coconut#palette.color_7  = '#F8F8F2'
let g:coconut#palette.color_8  = '#6272A4'
let g:coconut#palette.color_9  = '#E356A7'
let g:coconut#palette.color_10 = '#42E66C'
let g:coconut#palette.color_11 = '#EFA554'
let g:coconut#palette.color_12 = '#9B6BDF'
let g:coconut#palette.color_13 = '#E64747'
let g:coconut#palette.color_14 = '#75D7EC'
let g:coconut#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! coconut#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'coconut'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
