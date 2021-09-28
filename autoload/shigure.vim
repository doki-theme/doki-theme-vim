" Palette: 

let g:shigure#palette           = {}
let g:shigure#palette.fg        = ['#101010', 233]

let g:shigure#palette.bglighter = ['#e5e5ff', 189]
let g:shigure#palette.bglight   = ['#e5e5ff', 189]
let g:shigure#palette.bg        = ['#e5e5ff', 189]
let g:shigure#palette.bgdark    = ['#e5e5ff', 189]
let g:shigure#palette.bgdarker  = ['#e5e5ff', 189]

let g:shigure#palette.comment   = ['#2E2E57',  236]
let g:shigure#palette.selection = ['#5756a2', 61]
let g:shigure#palette.subtle    = ['#d4d2ff', 189]

let g:shigure#palette.key_color      = ['#5E037E', 54]
let g:shigure#palette.class_name     = ['#7748B7', 97]
let g:shigure#palette.parameter_color    = ['#5e1f7f', 54]
let g:shigure#palette.keyword_color      = ['#410cb2', 55]
let g:shigure#palette.constants_color    = ['#005CC5', 26]
let g:shigure#palette.red       = ['#FF5555', 203]
let g:shigure#palette.string_color    = ['#208D3B', 29]

"
" Terminal Colors
"
let g:shigure#palette.color_0  = '#21222C'
let g:shigure#palette.color_1  = '#E356A7'
let g:shigure#palette.color_2  = '#208D3B'
let g:shigure#palette.color_3  = '#F1FA8C'
let g:shigure#palette.color_4  = '#7748B7'
let g:shigure#palette.color_5  = '#E64747'
let g:shigure#palette.color_6  = '#0896AD'
let g:shigure#palette.color_7  = '#F8F8F2'
let g:shigure#palette.color_8  = '#6272A4'
let g:shigure#palette.color_9  = '#E356A7'
let g:shigure#palette.color_10 = '#208D3B'
let g:shigure#palette.color_11 = '#A46B21'
let g:shigure#palette.color_12 = '#7748B7'
let g:shigure#palette.color_13 = '#E64747'
let g:shigure#palette.color_14 = '#0896AD'
let g:shigure#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! shigure#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'shigure'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
