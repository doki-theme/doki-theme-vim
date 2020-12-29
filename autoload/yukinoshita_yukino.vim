" Palette: 

let g:yukinoshita_yukino#palette           = {}
let g:yukinoshita_yukino#palette.fg        = ['#bbbbbb', 250]

let g:yukinoshita_yukino#palette.bglighter = ['#24262b', 235]
let g:yukinoshita_yukino#palette.bglight   = ['#24262b', 235]
let g:yukinoshita_yukino#palette.bg        = ['#24262b', 235]
let g:yukinoshita_yukino#palette.bgdark    = ['#24262b', 235]
let g:yukinoshita_yukino#palette.bgdarker  = ['#24262b', 235]

let g:yukinoshita_yukino#palette.comment   = ['#41495A',  238]
let g:yukinoshita_yukino#palette.selection = ['#2d3b55', 237]
let g:yukinoshita_yukino#palette.subtle    = ['#23252a', 235]

let g:yukinoshita_yukino#palette.key_color      = ['#ead979', 186]
let g:yukinoshita_yukino#palette.class_name     = ['#9DACF6', 147]
let g:yukinoshita_yukino#palette.parameter_color    = ['#FFB86C', 215]
let g:yukinoshita_yukino#palette.keyword_color      = ['#e0474b', 167]
let g:yukinoshita_yukino#palette.constants_color    = ['#86dbfd', 117]
let g:yukinoshita_yukino#palette.red       = ['#FF5555', 203]
let g:yukinoshita_yukino#palette.string_color    = ['#F6E3CC', 224]

"
" Terminal Colors
"
let g:yukinoshita_yukino#palette.color_0  = '#21222C'
let g:yukinoshita_yukino#palette.color_1  = '#E356A7'
let g:yukinoshita_yukino#palette.color_2  = '#42E66C'
let g:yukinoshita_yukino#palette.color_3  = '#F1FA8C'
let g:yukinoshita_yukino#palette.color_4  = '#9B6BDF'
let g:yukinoshita_yukino#palette.color_5  = '#E64747'
let g:yukinoshita_yukino#palette.color_6  = '#75D7EC'
let g:yukinoshita_yukino#palette.color_7  = '#F8F8F2'
let g:yukinoshita_yukino#palette.color_8  = '#6272A4'
let g:yukinoshita_yukino#palette.color_9  = '#E356A7'
let g:yukinoshita_yukino#palette.color_10 = '#42E66C'
let g:yukinoshita_yukino#palette.color_11 = '#EFA554'
let g:yukinoshita_yukino#palette.color_12 = '#9B6BDF'
let g:yukinoshita_yukino#palette.color_13 = '#E64747'
let g:yukinoshita_yukino#palette.color_14 = '#75D7EC'
let g:yukinoshita_yukino#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! yukinoshita_yukino#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'yukinoshita_yukino'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
