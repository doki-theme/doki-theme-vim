" Palette: 

let g:jahy#palette           = {}
let g:jahy#palette.fg        = ['#cbcbcb', 251]

let g:jahy#palette.bglighter = ['#221738', 235]
let g:jahy#palette.bglight   = ['#221738', 235]
let g:jahy#palette.bg        = ['#221738', 235]
let g:jahy#palette.bgdark    = ['#221738', 235]
let g:jahy#palette.bgdarker  = ['#221738', 235]

let g:jahy#palette.comment   = ['#816F93',  96]
let g:jahy#palette.selection = ['#452346', 238]
let g:jahy#palette.subtle    = ['#2f1336', 236]

let g:jahy#palette.key_color      = ['#eec45e', 221]
let g:jahy#palette.class_name     = ['#E77FD5', 176]
let g:jahy#palette.parameter_color    = ['#FFB86C', 215]
let g:jahy#palette.keyword_color      = ['#D53232', 167]
let g:jahy#palette.constants_color    = ['#EA7797', 174]
let g:jahy#palette.red       = ['#FF5555', 203]
let g:jahy#palette.string_color    = ['#f3b085', 216]

"
" Terminal Colors
"
let g:jahy#palette.color_0  = '#21222C'
let g:jahy#palette.color_1  = '#E356A7'
let g:jahy#palette.color_2  = '#42E66C'
let g:jahy#palette.color_3  = '#F1FA8C'
let g:jahy#palette.color_4  = '#9B6BDF'
let g:jahy#palette.color_5  = '#E64747'
let g:jahy#palette.color_6  = '#75D7EC'
let g:jahy#palette.color_7  = '#F8F8F2'
let g:jahy#palette.color_8  = '#6272A4'
let g:jahy#palette.color_9  = '#E356A7'
let g:jahy#palette.color_10 = '#42E66C'
let g:jahy#palette.color_11 = '#EFA554'
let g:jahy#palette.color_12 = '#9B6BDF'
let g:jahy#palette.color_13 = '#E64747'
let g:jahy#palette.color_14 = '#75D7EC'
let g:jahy#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! jahy#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'jahy'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
