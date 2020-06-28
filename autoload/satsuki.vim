" Palette: 

let g:satsuki#palette           = {}
let g:satsuki#palette.fg        = ['#F8F8F2', 253]

let g:satsuki#palette.bglighter = ['#424450', 238]
let g:satsuki#palette.bglight   = ['#343746', 237]
let g:satsuki#palette.bg        = ['#282A36', 236]
let g:satsuki#palette.bgdark    = ['#21222C', 235]
let g:satsuki#palette.bgdarker  = ['#191A21', 234]

let g:satsuki#palette.comment   = ['#6272A4',  61]
let g:satsuki#palette.selection = ['#44475A', 239]
let g:satsuki#palette.subtle    = ['#424450', 238]

let g:satsuki#palette.cyan      = ['#8BE9FD', 117]
let g:satsuki#palette.green     = ['#50FA7B',  84]
let g:satsuki#palette.orange    = ['#FFB86C', 215]
let g:satsuki#palette.pink      = ['#FF79C6', 212]
let g:satsuki#palette.purple    = ['#BD93F9', 141]
let g:satsuki#palette.red       = ['#FF5555', 203]
let g:satsuki#palette.yellow    = ['#F1FA8C', 228]

"
" Terminal Colors
"
let g:satsuki#palette.color_0  = '#21222C'
let g:satsuki#palette.color_1  = '#FF5555'
let g:satsuki#palette.color_2  = '#50FA7B'
let g:satsuki#palette.color_3  = '#F1FA8C'
let g:satsuki#palette.color_4  = '#BD93F9'
let g:satsuki#palette.color_5  = '#FF79C6'
let g:satsuki#palette.color_6  = '#8BE9FD'
let g:satsuki#palette.color_7  = '#F8F8F2'
let g:satsuki#palette.color_8  = '#6272A4'
let g:satsuki#palette.color_9  = '#FF6E6E'
let g:satsuki#palette.color_10 = '#69FF94'
let g:satsuki#palette.color_11 = '#FFFFA5'
let g:satsuki#palette.color_12 = '#D6ACFF'
let g:satsuki#palette.color_13 = '#FF92DF'
let g:satsuki#palette.color_14 = '#A4FFFF'
let g:satsuki#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! satsuki#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'satsuki'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
