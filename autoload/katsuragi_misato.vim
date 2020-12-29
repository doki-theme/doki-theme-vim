" Palette: 

let g:katsuragi_misato#palette           = {}
let g:katsuragi_misato#palette.fg        = ['#b5a3b0', 145]

let g:katsuragi_misato#palette.bglighter = ['#3a2333', 236]
let g:katsuragi_misato#palette.bglight   = ['#3a2333', 236]
let g:katsuragi_misato#palette.bg        = ['#3a2333', 236]
let g:katsuragi_misato#palette.bgdark    = ['#3a2333', 236]
let g:katsuragi_misato#palette.bgdarker  = ['#3a2333', 236]

let g:katsuragi_misato#palette.comment   = ['#6272a4',  61]
let g:katsuragi_misato#palette.selection = ['#8a2b4d', 89]
let g:katsuragi_misato#palette.subtle    = ['#402d41', 237]

let g:katsuragi_misato#palette.key_color      = ['#FF357C', 204]
let g:katsuragi_misato#palette.class_name     = ['#6AADFF', 75]
let g:katsuragi_misato#palette.parameter_color    = ['#FFB86C', 215]
let g:katsuragi_misato#palette.keyword_color      = ['#BD84DD', 140]
let g:katsuragi_misato#palette.constants_color    = ['#86dbfd', 117]
let g:katsuragi_misato#palette.red       = ['#FF5555', 203]
let g:katsuragi_misato#palette.string_color    = ['#FAF7BA', 229]

"
" Terminal Colors
"
let g:katsuragi_misato#palette.color_0  = '#21222C'
let g:katsuragi_misato#palette.color_1  = '#E356A7'
let g:katsuragi_misato#palette.color_2  = '#42E66C'
let g:katsuragi_misato#palette.color_3  = '#F1FA8C'
let g:katsuragi_misato#palette.color_4  = '#9B6BDF'
let g:katsuragi_misato#palette.color_5  = '#E64747'
let g:katsuragi_misato#palette.color_6  = '#75D7EC'
let g:katsuragi_misato#palette.color_7  = '#F8F8F2'
let g:katsuragi_misato#palette.color_8  = '#6272A4'
let g:katsuragi_misato#palette.color_9  = '#E356A7'
let g:katsuragi_misato#palette.color_10 = '#42E66C'
let g:katsuragi_misato#palette.color_11 = '#EFA554'
let g:katsuragi_misato#palette.color_12 = '#9B6BDF'
let g:katsuragi_misato#palette.color_13 = '#E64747'
let g:katsuragi_misato#palette.color_14 = '#75D7EC'
let g:katsuragi_misato#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! katsuragi_misato#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'katsuragi_misato'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
