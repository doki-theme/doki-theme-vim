" Palette: 

let g:essex#palette           = {}
let g:essex#palette.fg        = ['#d7d7d7', 188]

let g:essex#palette.bglighter = ['#002446', 17]
let g:essex#palette.bglight   = ['#002446', 17]
let g:essex#palette.bg        = ['#002446', 17]
let g:essex#palette.bgdark    = ['#002446', 17]
let g:essex#palette.bgdarker  = ['#002446', 17]

let g:essex#palette.comment   = ['#6387AF',  67]
let g:essex#palette.selection = ['#480F0F', 52]
let g:essex#palette.subtle    = ['#261a30', 235]

let g:essex#palette.key_color      = ['#eec45e', 221]
let g:essex#palette.class_name     = ['#B5AAEE', 147]
let g:essex#palette.parameter_color    = ['#FFB86C', 215]
let g:essex#palette.keyword_color      = ['#e83737', 167]
let g:essex#palette.constants_color    = ['#78DBEF', 117]
let g:essex#palette.red       = ['#FF5555', 203]
let g:essex#palette.string_color    = ['#f3b085', 216]

"
" Terminal Colors
"
let g:essex#palette.color_0  = '#21222C'
let g:essex#palette.color_1  = '#E356A7'
let g:essex#palette.color_2  = '#42E66C'
let g:essex#palette.color_3  = '#F1FA8C'
let g:essex#palette.color_4  = '#9B6BDF'
let g:essex#palette.color_5  = '#E64747'
let g:essex#palette.color_6  = '#75D7EC'
let g:essex#palette.color_7  = '#F8F8F2'
let g:essex#palette.color_8  = '#6272A4'
let g:essex#palette.color_9  = '#E356A7'
let g:essex#palette.color_10 = '#42E66C'
let g:essex#palette.color_11 = '#EFA554'
let g:essex#palette.color_12 = '#9B6BDF'
let g:essex#palette.color_13 = '#E64747'
let g:essex#palette.color_14 = '#75D7EC'
let g:essex#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! essex#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'essex'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
