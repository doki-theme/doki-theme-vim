" Palette: 

let g:natsuki_light#palette           = {}
let g:natsuki_light#palette.fg        = ['#000000', 16]

let g:natsuki_light#palette.bglighter = ['#ffe4f1', 225]
let g:natsuki_light#palette.bglight   = ['#ffe4f1', 225]
let g:natsuki_light#palette.bg        = ['#ffe4f1', 225]
let g:natsuki_light#palette.bgdark    = ['#ffe4f1', 225]
let g:natsuki_light#palette.bgdarker  = ['#ffe4f1', 225]

let g:natsuki_light#palette.comment   = ['#6272A4',  61]
let g:natsuki_light#palette.selection = ['#dc99bb', 175]
let g:natsuki_light#palette.subtle    = ['#424450', 238]

let g:natsuki_light#palette.cyan      = ['#8BE9FD', 117]
let g:natsuki_light#palette.green     = ['#50FA7B',  84]
let g:natsuki_light#palette.orange    = ['#FFB86C', 215]
let g:natsuki_light#palette.pink      = ['#FF79C6', 212]
let g:natsuki_light#palette.purple    = ['#BD93F9', 141]
let g:natsuki_light#palette.red       = ['#FF5555', 203]
let g:natsuki_light#palette.string_color    = ['#DC872E', 172]

"
" Terminal Colors
"
let g:natsuki_light#palette.color_0  = '#21222C'
let g:natsuki_light#palette.color_1  = '#FF5555'
let g:natsuki_light#palette.color_2  = '#50FA7B'
let g:natsuki_light#palette.color_3  = '#F1FA8C'
let g:natsuki_light#palette.color_4  = '#BD93F9'
let g:natsuki_light#palette.color_5  = '#FF79C6'
let g:natsuki_light#palette.color_6  = '#8BE9FD'
let g:natsuki_light#palette.color_7  = '#F8F8F2'
let g:natsuki_light#palette.color_8  = '#6272A4'
let g:natsuki_light#palette.color_9  = '#FF6E6E'
let g:natsuki_light#palette.color_10 = '#69FF94'
let g:natsuki_light#palette.color_11 = '#FFFFA5'
let g:natsuki_light#palette.color_12 = '#D6ACFF'
let g:natsuki_light#palette.color_13 = '#FF92DF'
let g:natsuki_light#palette.color_14 = '#A4FFFF'
let g:natsuki_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! natsuki_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'natsuki_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0: