" Palette: 

let g:emilia_light#palette           = {}
let g:emilia_light#palette.fg        = ['#252427', 235]

let g:emilia_light#palette.bglighter = ['#fcf3ff', 231]
let g:emilia_light#palette.bglight   = ['#fcf3ff', 231]
let g:emilia_light#palette.bg        = ['#fcf3ff', 231]
let g:emilia_light#palette.bgdark    = ['#fcf3ff', 231]
let g:emilia_light#palette.bgdarker  = ['#fcf3ff', 231]

let g:emilia_light#palette.comment   = ['#6a737d',  243]
let g:emilia_light#palette.selection = ['#c7a0d2', 182]
let g:emilia_light#palette.subtle    = ['#f1dcf7', 225]

let g:emilia_light#palette.key_color      = ['#7C75EF', 105]
let g:emilia_light#palette.class_name     = ['#cb70a5', 169]
let g:emilia_light#palette.parameter_color    = ['#82357d', 96]
let g:emilia_light#palette.keyword_color      = ['#C869A3', 169]
let g:emilia_light#palette.constants_color    = ['#4C94D6', 68]
let g:emilia_light#palette.red       = ['#FF5555', 203]
let g:emilia_light#palette.string_color    = ['#d27f2d', 172]

"
" Terminal Colors
"
let g:emilia_light#palette.color_0  = '#21222C'
let g:emilia_light#palette.color_1  = '#FF5555'
let g:emilia_light#palette.color_2  = '#50FA7B'
let g:emilia_light#palette.color_3  = '#F1FA8C'
let g:emilia_light#palette.color_4  = '#BD93F9'
let g:emilia_light#palette.color_5  = '#FF79C6'
let g:emilia_light#palette.color_6  = '#8BE9FD'
let g:emilia_light#palette.color_7  = '#F8F8F2'
let g:emilia_light#palette.color_8  = '#6272A4'
let g:emilia_light#palette.color_9  = '#FF6E6E'
let g:emilia_light#palette.color_10 = '#69FF94'
let g:emilia_light#palette.color_11 = '#FFFFA5'
let g:emilia_light#palette.color_12 = '#D6ACFF'
let g:emilia_light#palette.color_13 = '#FF92DF'
let g:emilia_light#palette.color_14 = '#A4FFFF'
let g:emilia_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! emilia_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'emilia_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
