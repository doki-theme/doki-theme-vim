" Palette: 

let g:asuna_dark#palette           = {}
let g:asuna_dark#palette.fg        = ['#bbbbbb', 250]

let g:asuna_dark#palette.bglighter = ['#202020', 234]
let g:asuna_dark#palette.bglight   = ['#202020', 234]
let g:asuna_dark#palette.bg        = ['#202020', 234]
let g:asuna_dark#palette.bgdark    = ['#202020', 234]
let g:asuna_dark#palette.bgdarker  = ['#202020', 234]

let g:asuna_dark#palette.comment   = ['#41495A',  238]
let g:asuna_dark#palette.selection = ['#391717', 234]
let g:asuna_dark#palette.subtle    = ['#1f1f1f', 234]

let g:asuna_dark#palette.key_color      = ['#3B82BD', 67]
let g:asuna_dark#palette.class_name     = ['#db974d', 173]
let g:asuna_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:asuna_dark#palette.keyword_color      = ['#988F9A', 246]
let g:asuna_dark#palette.constants_color    = ['#86dbfd', 117]
let g:asuna_dark#palette.red       = ['#FF5555', 203]
let g:asuna_dark#palette.string_color    = ['#f5cc5a', 221]

"
" Terminal Colors
"
let g:asuna_dark#palette.color_0  = '#21222C'
let g:asuna_dark#palette.color_1  = '#E356A7'
let g:asuna_dark#palette.color_2  = '#42E66C'
let g:asuna_dark#palette.color_3  = '#F1FA8C'
let g:asuna_dark#palette.color_4  = '#9B6BDF'
let g:asuna_dark#palette.color_5  = '#E64747'
let g:asuna_dark#palette.color_6  = '#75D7EC'
let g:asuna_dark#palette.color_7  = '#F8F8F2'
let g:asuna_dark#palette.color_8  = '#6272A4'
let g:asuna_dark#palette.color_9  = '#E356A7'
let g:asuna_dark#palette.color_10 = '#42E66C'
let g:asuna_dark#palette.color_11 = '#EFA554'
let g:asuna_dark#palette.color_12 = '#9B6BDF'
let g:asuna_dark#palette.color_13 = '#E64747'
let g:asuna_dark#palette.color_14 = '#75D7EC'
let g:asuna_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! asuna_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'asuna_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
