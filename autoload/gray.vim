" Palette: 

let g:gray#palette           = {}
let g:gray#palette.fg        = ['#b0b0b0', 145]

let g:gray#palette.bglighter = ['#3b3f41', 237]
let g:gray#palette.bglight   = ['#3b3f41', 237]
let g:gray#palette.bg        = ['#3b3f41', 237]
let g:gray#palette.bgdark    = ['#3b3f41', 237]
let g:gray#palette.bgdarker  = ['#3b3f41', 237]

let g:gray#palette.comment   = ['#6b7b80',  243]
let g:gray#palette.selection = ['#295043', 238]
let g:gray#palette.subtle    = ['#353d41', 237]

let g:gray#palette.key_color      = ['#61ead9', 80]
let g:gray#palette.class_name     = ['#89acf6', 111]
let g:gray#palette.parameter_color    = ['#FFB86C', 215]
let g:gray#palette.keyword_color      = ['#9f73ea', 134]
let g:gray#palette.constants_color    = ['#ec9cb2', 217]
let g:gray#palette.red       = ['#FF5555', 203]
let g:gray#palette.string_color    = ['#F6E9CB', 224]

"
" Terminal Colors
"
let g:gray#palette.color_0  = '#21222C'
let g:gray#palette.color_1  = '#E356A7'
let g:gray#palette.color_2  = '#42E66C'
let g:gray#palette.color_3  = '#F1FA8C'
let g:gray#palette.color_4  = '#9B6BDF'
let g:gray#palette.color_5  = '#E64747'
let g:gray#palette.color_6  = '#75D7EC'
let g:gray#palette.color_7  = '#F8F8F2'
let g:gray#palette.color_8  = '#6272A4'
let g:gray#palette.color_9  = '#E356A7'
let g:gray#palette.color_10 = '#42E66C'
let g:gray#palette.color_11 = '#EFA554'
let g:gray#palette.color_12 = '#9B6BDF'
let g:gray#palette.color_13 = '#E64747'
let g:gray#palette.color_14 = '#75D7EC'
let g:gray#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! gray#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'gray'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
