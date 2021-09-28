" Palette: 

let g:satsuki_dark#palette           = {}
let g:satsuki_dark#palette.fg        = ['#d3d3d3', 252]

let g:satsuki_dark#palette.bglighter = ['#272b2d', 235]
let g:satsuki_dark#palette.bglight   = ['#272b2d', 235]
let g:satsuki_dark#palette.bg        = ['#272b2d', 235]
let g:satsuki_dark#palette.bgdark    = ['#272b2d', 235]
let g:satsuki_dark#palette.bgdarker  = ['#272b2d', 235]

let g:satsuki_dark#palette.comment   = ['#596570',  241]
let g:satsuki_dark#palette.selection = ['#5d2626', 235]
let g:satsuki_dark#palette.subtle    = ['#2b2e31', 236]

let g:satsuki_dark#palette.key_color      = ['#46F263', 83]
let g:satsuki_dark#palette.class_name     = ['#6893f3', 69]
let g:satsuki_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:satsuki_dark#palette.keyword_color      = ['#e24a3e', 167]
let g:satsuki_dark#palette.constants_color    = ['#96b7fb', 111]
let g:satsuki_dark#palette.red       = ['#FF5555', 203]
let g:satsuki_dark#palette.string_color    = ['#F6E9CB', 224]

"
" Terminal Colors
"
let g:satsuki_dark#palette.color_0  = '#21222C'
let g:satsuki_dark#palette.color_1  = '#E356A7'
let g:satsuki_dark#palette.color_2  = '#42E66C'
let g:satsuki_dark#palette.color_3  = '#F1FA8C'
let g:satsuki_dark#palette.color_4  = '#9B6BDF'
let g:satsuki_dark#palette.color_5  = '#E64747'
let g:satsuki_dark#palette.color_6  = '#75D7EC'
let g:satsuki_dark#palette.color_7  = '#F8F8F2'
let g:satsuki_dark#palette.color_8  = '#6272A4'
let g:satsuki_dark#palette.color_9  = '#E356A7'
let g:satsuki_dark#palette.color_10 = '#42E66C'
let g:satsuki_dark#palette.color_11 = '#EFA554'
let g:satsuki_dark#palette.color_12 = '#9B6BDF'
let g:satsuki_dark#palette.color_13 = '#E64747'
let g:satsuki_dark#palette.color_14 = '#75D7EC'
let g:satsuki_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! satsuki_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'satsuki_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
