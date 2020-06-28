" Palette: 

let g:darkness_light#palette           = {}
let g:darkness_light#palette.fg        = ['#000000', 16]

let g:darkness_light#palette.bglighter = ['#fefefa', 231]
let g:darkness_light#palette.bglight   = ['#fefefa', 231]
let g:darkness_light#palette.bg        = ['#fefefa', 231]
let g:darkness_light#palette.bgdark    = ['#fefefa', 231]
let g:darkness_light#palette.bgdarker  = ['#fefefa', 231]

let g:darkness_light#palette.comment   = ['#6a737d',  243]
let g:darkness_light#palette.selection = ['#fff3b4', 229]
let g:darkness_light#palette.subtle    = ['#FFF6E4', 230]

let g:darkness_light#palette.key_color      = ['#3492b1', 67]
let g:darkness_light#palette.class_name     = ['#c79c19', 178]
let g:darkness_light#palette.parameter_color    = ['#F5C83C', 221]
let g:darkness_light#palette.keyword_color      = ['#E36207', 166]
let g:darkness_light#palette.constants_color    = ['#005CC5', 26]
let g:darkness_light#palette.red       = ['#FF5555', 203]
let g:darkness_light#palette.string_color    = ['#005CC5', 26]

"
" Terminal Colors
"
let g:darkness_light#palette.color_0  = '#21222C'
let g:darkness_light#palette.color_1  = '#FF5555'
let g:darkness_light#palette.color_2  = '#50FA7B'
let g:darkness_light#palette.color_3  = '#F1FA8C'
let g:darkness_light#palette.color_4  = '#BD93F9'
let g:darkness_light#palette.color_5  = '#FF79C6'
let g:darkness_light#palette.color_6  = '#8BE9FD'
let g:darkness_light#palette.color_7  = '#F8F8F2'
let g:darkness_light#palette.color_8  = '#6272A4'
let g:darkness_light#palette.color_9  = '#FF6E6E'
let g:darkness_light#palette.color_10 = '#69FF94'
let g:darkness_light#palette.color_11 = '#FFFFA5'
let g:darkness_light#palette.color_12 = '#D6ACFF'
let g:darkness_light#palette.color_13 = '#FF92DF'
let g:darkness_light#palette.color_14 = '#A4FFFF'
let g:darkness_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! darkness_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'darkness_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
