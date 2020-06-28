" Palette: 

let g:rem#palette           = {}
let g:rem#palette.fg        = ['#bbbbbb', 250]

let g:rem#palette.bglighter = ['#292A30', 236]
let g:rem#palette.bglight   = ['#292A30', 236]
let g:rem#palette.bg        = ['#292A30', 236]
let g:rem#palette.bgdark    = ['#292A30', 236]
let g:rem#palette.bgdarker  = ['#292A30', 236]

let g:rem#palette.comment   = ['#6272A4',  61]
let g:rem#palette.selection = ['#4C637A', 60]
let g:rem#palette.subtle    = ['#424450', 238]

let g:rem#palette.cyan      = ['#8BE9FD', 117]
let g:rem#palette.green     = ['#50FA7B',  84]
let g:rem#palette.orange    = ['#FFB86C', 215]
let g:rem#palette.pink      = ['#FF79C6', 212]
let g:rem#palette.purple    = ['#BD93F9', 141]
let g:rem#palette.red       = ['#FF5555', 203]
let g:rem#palette.yellow    = ['#F1FA8C', 228]

"
" Terminal Colors
"
let g:rem#palette.color_0  = '#21222C'
let g:rem#palette.color_1  = '#FF5555'
let g:rem#palette.color_2  = '#50FA7B'
let g:rem#palette.color_3  = '#F1FA8C'
let g:rem#palette.color_4  = '#BD93F9'
let g:rem#palette.color_5  = '#FF79C6'
let g:rem#palette.color_6  = '#8BE9FD'
let g:rem#palette.color_7  = '#F8F8F2'
let g:rem#palette.color_8  = '#6272A4'
let g:rem#palette.color_9  = '#FF6E6E'
let g:rem#palette.color_10 = '#69FF94'
let g:rem#palette.color_11 = '#FFFFA5'
let g:rem#palette.color_12 = '#D6ACFF'
let g:rem#palette.color_13 = '#FF92DF'
let g:rem#palette.color_14 = '#A4FFFF'
let g:rem#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! rem#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'rem'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
