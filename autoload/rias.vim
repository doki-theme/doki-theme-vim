" Palette: 

let g:rias#palette           = {}
let g:rias#palette.fg        = ['#fafafa', 231]

let g:rias#palette.bglighter = ['#401112', 233]
let g:rias#palette.bglight   = ['#401112', 233]
let g:rias#palette.bg        = ['#401112', 233]
let g:rias#palette.bgdark    = ['#401112', 233]
let g:rias#palette.bgdarker  = ['#401112', 233]

let g:rias#palette.comment   = ['#6272A4',  61]
let g:rias#palette.selection = ['#44475A', 239]
let g:rias#palette.subtle    = ['#424450', 238]

let g:rias#palette.cyan      = ['#8BE9FD', 117]
let g:rias#palette.green     = ['#50FA7B',  84]
let g:rias#palette.orange    = ['#FFB86C', 215]
let g:rias#palette.pink      = ['#FF79C6', 212]
let g:rias#palette.purple    = ['#BD93F9', 141]
let g:rias#palette.red       = ['#FF5555', 203]
let g:rias#palette.yellow    = ['#F1FA8C', 228]

"
" Terminal Colors
"
let g:rias#palette.color_0  = '#21222C'
let g:rias#palette.color_1  = '#FF5555'
let g:rias#palette.color_2  = '#50FA7B'
let g:rias#palette.color_3  = '#F1FA8C'
let g:rias#palette.color_4  = '#BD93F9'
let g:rias#palette.color_5  = '#FF79C6'
let g:rias#palette.color_6  = '#8BE9FD'
let g:rias#palette.color_7  = '#F8F8F2'
let g:rias#palette.color_8  = '#6272A4'
let g:rias#palette.color_9  = '#FF6E6E'
let g:rias#palette.color_10 = '#69FF94'
let g:rias#palette.color_11 = '#FFFFA5'
let g:rias#palette.color_12 = '#D6ACFF'
let g:rias#palette.color_13 = '#FF92DF'
let g:rias#palette.color_14 = '#A4FFFF'
let g:rias#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! rias#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'rias'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
