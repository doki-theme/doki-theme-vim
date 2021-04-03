" Palette: 

let g:rei#palette           = {}
let g:rei#palette.fg        = ['#d2d2d2', 252]

let g:rei#palette.bglighter = ['#171918', 234]
let g:rei#palette.bglight   = ['#171918', 234]
let g:rei#palette.bg        = ['#171918', 234]
let g:rei#palette.bgdark    = ['#171918', 234]
let g:rei#palette.bgdarker  = ['#171918', 234]

let g:rei#palette.comment   = ['#6272a4',  61]
let g:rei#palette.selection = ['#25435a', 238]
let g:rei#palette.subtle    = ['#1f2125', 235]

let g:rei#palette.key_color      = ['#45e68a', 78]
let g:rei#palette.class_name     = ['#6AADFF', 75]
let g:rei#palette.parameter_color    = ['#FFB86C', 215]
let g:rei#palette.keyword_color      = ['#788a8b', 245]
let g:rei#palette.constants_color    = ['#86dbfd', 117]
let g:rei#palette.red       = ['#FF5555', 203]
let g:rei#palette.string_color    = ['#F6E3CC', 224]

"
" Terminal Colors
"
let g:rei#palette.color_0  = '#21222C'
let g:rei#palette.color_1  = '#E356A7'
let g:rei#palette.color_2  = '#42E66C'
let g:rei#palette.color_3  = '#F1FA8C'
let g:rei#palette.color_4  = '#9B6BDF'
let g:rei#palette.color_5  = '#E64747'
let g:rei#palette.color_6  = '#75D7EC'
let g:rei#palette.color_7  = '#F8F8F2'
let g:rei#palette.color_8  = '#6272A4'
let g:rei#palette.color_9  = '#E356A7'
let g:rei#palette.color_10 = '#42E66C'
let g:rei#palette.color_11 = '#EFA554'
let g:rei#palette.color_12 = '#9B6BDF'
let g:rei#palette.color_13 = '#E64747'
let g:rei#palette.color_14 = '#75D7EC'
let g:rei#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! rei#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'rei'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
