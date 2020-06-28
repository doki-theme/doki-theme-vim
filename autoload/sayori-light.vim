" Palette: 

let g:sayori-light#palette           = {}
let g:sayori-light#palette.fg        = ['#252427', 235]

let g:sayori-light#palette.bglighter = ['#f3faff', 231]
let g:sayori-light#palette.bglight   = ['#f3faff', 231]
let g:sayori-light#palette.bg        = ['#f3faff', 231]
let g:sayori-light#palette.bgdark    = ['#f3faff', 231]
let g:sayori-light#palette.bgdarker  = ['#f3faff', 231]

let g:sayori-light#palette.comment   = ['#6272A4',  61]
let g:sayori-light#palette.selection = ['#44475A', 239]
let g:sayori-light#palette.subtle    = ['#424450', 238]

let g:sayori-light#palette.cyan      = ['#8BE9FD', 117]
let g:sayori-light#palette.green     = ['#50FA7B',  84]
let g:sayori-light#palette.orange    = ['#FFB86C', 215]
let g:sayori-light#palette.pink      = ['#FF79C6', 212]
let g:sayori-light#palette.purple    = ['#BD93F9', 141]
let g:sayori-light#palette.red       = ['#FF5555', 203]
let g:sayori-light#palette.yellow    = ['#F1FA8C', 228]

"
" Terminal Colors
"
let g:sayori-light#palette.color_0  = '#21222C'
let g:sayori-light#palette.color_1  = '#FF5555'
let g:sayori-light#palette.color_2  = '#50FA7B'
let g:sayori-light#palette.color_3  = '#F1FA8C'
let g:sayori-light#palette.color_4  = '#BD93F9'
let g:sayori-light#palette.color_5  = '#FF79C6'
let g:sayori-light#palette.color_6  = '#8BE9FD'
let g:sayori-light#palette.color_7  = '#F8F8F2'
let g:sayori-light#palette.color_8  = '#6272A4'
let g:sayori-light#palette.color_9  = '#FF6E6E'
let g:sayori-light#palette.color_10 = '#69FF94'
let g:sayori-light#palette.color_11 = '#FFFFA5'
let g:sayori-light#palette.color_12 = '#D6ACFF'
let g:sayori-light#palette.color_13 = '#FF92DF'
let g:sayori-light#palette.color_14 = '#A4FFFF'
let g:sayori-light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! sayori-light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'sayori-light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
