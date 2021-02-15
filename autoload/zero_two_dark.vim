" Palette: 

let g:zero_two_dark#palette           = {}
let g:zero_two_dark#palette.fg        = ['#efefef', 255]

let g:zero_two_dark#palette.bglighter = ['#330f10', 233]
let g:zero_two_dark#palette.bglight   = ['#330f10', 233]
let g:zero_two_dark#palette.bg        = ['#330f10', 233]
let g:zero_two_dark#palette.bgdark    = ['#330f10', 233]
let g:zero_two_dark#palette.bgdarker  = ['#330f10', 233]

let g:zero_two_dark#palette.comment   = ['#a47272',  131]
let g:zero_two_dark#palette.selection = ['#531e1e', 234]
let g:zero_two_dark#palette.subtle    = ['#3c1414', 233]

let g:zero_two_dark#palette.key_color      = ['#C04750', 131]
let g:zero_two_dark#palette.class_name     = ['#FFB86C', 215]
let g:zero_two_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:zero_two_dark#palette.keyword_color      = ['#39e6a6', 79]
let g:zero_two_dark#palette.constants_color    = ['#34a7d1', 74]
let g:zero_two_dark#palette.red       = ['#FF5555', 203]
let g:zero_two_dark#palette.string_color    = ['#e2d9bd', 187]

"
" Terminal Colors
"
let g:zero_two_dark#palette.color_0  = '#21222C'
let g:zero_two_dark#palette.color_1  = '#E356A7'
let g:zero_two_dark#palette.color_2  = '#42E66C'
let g:zero_two_dark#palette.color_3  = '#F1FA8C'
let g:zero_two_dark#palette.color_4  = '#9B6BDF'
let g:zero_two_dark#palette.color_5  = '#E64747'
let g:zero_two_dark#palette.color_6  = '#75D7EC'
let g:zero_two_dark#palette.color_7  = '#F8F8F2'
let g:zero_two_dark#palette.color_8  = '#6272A4'
let g:zero_two_dark#palette.color_9  = '#E356A7'
let g:zero_two_dark#palette.color_10 = '#42E66C'
let g:zero_two_dark#palette.color_11 = '#EFA554'
let g:zero_two_dark#palette.color_12 = '#9B6BDF'
let g:zero_two_dark#palette.color_13 = '#E64747'
let g:zero_two_dark#palette.color_14 = '#75D7EC'
let g:zero_two_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! zero_two_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'zero_two_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
