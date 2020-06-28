" Palette: 

let g:beatrice#palette           = {}
let g:beatrice#palette.fg        = ['#000000', 16]

let g:beatrice#palette.bglighter = ['#ffe4f1', 225]
let g:beatrice#palette.bglight   = ['#ffe4f1', 225]
let g:beatrice#palette.bg        = ['#ffe4f1', 225]
let g:beatrice#palette.bgdark    = ['#ffe4f1', 225]
let g:beatrice#palette.bgdarker  = ['#ffe4f1', 225]

let g:beatrice#palette.comment   = ['#6272A4',  61]
let g:beatrice#palette.selection = ['#dc99bb', 175]
let g:beatrice#palette.subtle    = ['#ffdce6', 224]

let g:beatrice#palette.key_color      = ['#7C75EF', 105]
let g:beatrice#palette.class_name     = ['#df81b8', 175]
let g:beatrice#palette.parameter_color    = ['#FFB86C', 215]
let g:beatrice#palette.keyword_color      = ['#C869A3', 169]
let g:beatrice#palette.constants_color    = ['#BD93F9', 141]
let g:beatrice#palette.red       = ['#FF5555', 203]
let g:beatrice#palette.string_color    = ['#DC872E', 172]

"
" Terminal Colors
"
let g:beatrice#palette.color_0  = '#21222C'
let g:beatrice#palette.color_1  = '#FF5555'
let g:beatrice#palette.color_2  = '#50FA7B'
let g:beatrice#palette.color_3  = '#F1FA8C'
let g:beatrice#palette.color_4  = '#BD93F9'
let g:beatrice#palette.color_5  = '#FF79C6'
let g:beatrice#palette.color_6  = '#8BE9FD'
let g:beatrice#palette.color_7  = '#F8F8F2'
let g:beatrice#palette.color_8  = '#6272A4'
let g:beatrice#palette.color_9  = '#FF6E6E'
let g:beatrice#palette.color_10 = '#69FF94'
let g:beatrice#palette.color_11 = '#FFFFA5'
let g:beatrice#palette.color_12 = '#D6ACFF'
let g:beatrice#palette.color_13 = '#FF92DF'
let g:beatrice#palette.color_14 = '#A4FFFF'
let g:beatrice#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! beatrice#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'beatrice'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
