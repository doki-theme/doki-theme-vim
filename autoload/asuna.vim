" Palette: 

let g:asuna#palette           = {}
let g:asuna#palette.fg        = ['#252427', 235]

let g:asuna#palette.bglighter = ['#ffffff', 231]
let g:asuna#palette.bglight   = ['#ffffff', 231]
let g:asuna#palette.bg        = ['#ffffff', 231]
let g:asuna#palette.bgdark    = ['#ffffff', 231]
let g:asuna#palette.bgdarker  = ['#ffffff', 231]

let g:asuna#palette.comment   = ['#6272A4',  61]
let g:asuna#palette.selection = ['#e9b4b8', 181]
let g:asuna#palette.subtle    = ['#f6f6f6', 255]

let g:asuna#palette.key_color      = ['#0d5fa6', 25]
let g:asuna#palette.class_name     = ['#db974d', 173]
let g:asuna#palette.parameter_color    = ['#FFB86C', 215]
let g:asuna#palette.keyword_color      = ['#a61d0d', 124]
let g:asuna#palette.constants_color    = ['#BD93F9', 141]
let g:asuna#palette.red       = ['#FF5555', 203]
let g:asuna#palette.string_color    = ['#a61d0d', 124]

"
" Terminal Colors
"
let g:asuna#palette.color_0  = '#21222C'
let g:asuna#palette.color_1  = '#FF5555'
let g:asuna#palette.color_2  = '#50FA7B'
let g:asuna#palette.color_3  = '#F1FA8C'
let g:asuna#palette.color_4  = '#BD93F9'
let g:asuna#palette.color_5  = '#FF79C6'
let g:asuna#palette.color_6  = '#8BE9FD'
let g:asuna#palette.color_7  = '#F8F8F2'
let g:asuna#palette.color_8  = '#6272A4'
let g:asuna#palette.color_9  = '#FF6E6E'
let g:asuna#palette.color_10 = '#69FF94'
let g:asuna#palette.color_11 = '#FFFFA5'
let g:asuna#palette.color_12 = '#D6ACFF'
let g:asuna#palette.color_13 = '#FF92DF'
let g:asuna#palette.color_14 = '#A4FFFF'
let g:asuna#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! asuna#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'asuna'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
