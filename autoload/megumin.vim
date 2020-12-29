" Palette: 

let g:megumin#palette           = {}
let g:megumin#palette.fg        = ['#bbbbbb', 250]

let g:megumin#palette.bglighter = ['#271c21', 234]
let g:megumin#palette.bglight   = ['#271c21', 234]
let g:megumin#palette.bg        = ['#271c21', 234]
let g:megumin#palette.bgdark    = ['#271c21', 234]
let g:megumin#palette.bgdarker  = ['#271c21', 234]

let g:megumin#palette.comment   = ['#6272a4',  61]
let g:megumin#palette.selection = ['#563036', 237]
let g:megumin#palette.subtle    = ['#31262b', 235]

let g:megumin#palette.key_color      = ['#AF5C5A', 131]
let g:megumin#palette.class_name     = ['#dae838', 185]
let g:megumin#palette.parameter_color    = ['#FFB86C', 215]
let g:megumin#palette.keyword_color      = ['#a28a92', 246]
let g:megumin#palette.constants_color    = ['#86dbfd', 117]
let g:megumin#palette.red       = ['#FF5555', 203]
let g:megumin#palette.string_color    = ['#ffd866', 221]

"
" Terminal Colors
"
let g:megumin#palette.color_0  = '#21222C'
let g:megumin#palette.color_1  = '#E356A7'
let g:megumin#palette.color_2  = '#42E66C'
let g:megumin#palette.color_3  = '#F1FA8C'
let g:megumin#palette.color_4  = '#9B6BDF'
let g:megumin#palette.color_5  = '#E64747'
let g:megumin#palette.color_6  = '#75D7EC'
let g:megumin#palette.color_7  = '#F8F8F2'
let g:megumin#palette.color_8  = '#6272A4'
let g:megumin#palette.color_9  = '#E356A7'
let g:megumin#palette.color_10 = '#42E66C'
let g:megumin#palette.color_11 = '#EFA554'
let g:megumin#palette.color_12 = '#9B6BDF'
let g:megumin#palette.color_13 = '#E64747'
let g:megumin#palette.color_14 = '#75D7EC'
let g:megumin#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! megumin#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'megumin'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
