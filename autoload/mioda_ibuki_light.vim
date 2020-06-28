" Palette: 

let g:mioda_ibuki_light#palette           = {}
let g:mioda_ibuki_light#palette.fg        = ['#272426', 235]

let g:mioda_ibuki_light#palette.bglighter = ['#ffedfe', 231]
let g:mioda_ibuki_light#palette.bglight   = ['#ffedfe', 231]
let g:mioda_ibuki_light#palette.bg        = ['#ffedfe', 231]
let g:mioda_ibuki_light#palette.bgdark    = ['#ffedfe', 231]
let g:mioda_ibuki_light#palette.bgdarker  = ['#ffedfe', 231]

let g:mioda_ibuki_light#palette.comment   = ['#6272A4',  61]
let g:mioda_ibuki_light#palette.selection = ['#8EDBFF', 117]
let g:mioda_ibuki_light#palette.subtle    = ['#f7dcf3', 225]

let g:mioda_ibuki_light#palette.key_color      = ['#4174b3', 67]
let g:mioda_ibuki_light#palette.class_name     = ['#cb70a5', 169]
let g:mioda_ibuki_light#palette.parameter_color    = ['#FFB86C', 215]
let g:mioda_ibuki_light#palette.keyword_color      = ['#C869A3', 169]
let g:mioda_ibuki_light#palette.constants_color    = ['#BD93F9', 141]
let g:mioda_ibuki_light#palette.red       = ['#FF5555', 203]
let g:mioda_ibuki_light#palette.string_color    = ['#d27f2d', 172]

"
" Terminal Colors
"
let g:mioda_ibuki_light#palette.color_0  = '#21222C'
let g:mioda_ibuki_light#palette.color_1  = '#FF5555'
let g:mioda_ibuki_light#palette.color_2  = '#50FA7B'
let g:mioda_ibuki_light#palette.color_3  = '#F1FA8C'
let g:mioda_ibuki_light#palette.color_4  = '#BD93F9'
let g:mioda_ibuki_light#palette.color_5  = '#FF79C6'
let g:mioda_ibuki_light#palette.color_6  = '#8BE9FD'
let g:mioda_ibuki_light#palette.color_7  = '#F8F8F2'
let g:mioda_ibuki_light#palette.color_8  = '#6272A4'
let g:mioda_ibuki_light#palette.color_9  = '#FF6E6E'
let g:mioda_ibuki_light#palette.color_10 = '#69FF94'
let g:mioda_ibuki_light#palette.color_11 = '#FFFFA5'
let g:mioda_ibuki_light#palette.color_12 = '#D6ACFF'
let g:mioda_ibuki_light#palette.color_13 = '#FF92DF'
let g:mioda_ibuki_light#palette.color_14 = '#A4FFFF'
let g:mioda_ibuki_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! mioda_ibuki_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'mioda_ibuki_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
