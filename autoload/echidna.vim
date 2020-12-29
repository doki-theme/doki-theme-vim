" Palette: 

let g:echidna#palette           = {}
let g:echidna#palette.fg        = ['#a8a8a8', 248]

let g:echidna#palette.bglighter = ['#141216', 233]
let g:echidna#palette.bglight   = ['#141216', 233]
let g:echidna#palette.bg        = ['#141216', 233]
let g:echidna#palette.bgdark    = ['#141216', 233]
let g:echidna#palette.bgdarker  = ['#141216', 233]

let g:echidna#palette.comment   = ['#41495A',  238]
let g:echidna#palette.selection = ['#274540', 238]
let g:echidna#palette.subtle    = ['#1a171c', 234]

let g:echidna#palette.key_color      = ['#BD93F9', 141]
let g:echidna#palette.class_name     = ['#EFA554', 215]
let g:echidna#palette.parameter_color    = ['#FFB86C', 215]
let g:echidna#palette.keyword_color      = ['#8b8b8b', 245]
let g:echidna#palette.constants_color    = ['#86dbfd', 117]
let g:echidna#palette.red       = ['#FF5555', 203]
let g:echidna#palette.string_color    = ['#f4fa8c', 228]

"
" Terminal Colors
"
let g:echidna#palette.color_0  = '#21222C'
let g:echidna#palette.color_1  = '#E356A7'
let g:echidna#palette.color_2  = '#42E66C'
let g:echidna#palette.color_3  = '#F1FA8C'
let g:echidna#palette.color_4  = '#9B6BDF'
let g:echidna#palette.color_5  = '#E64747'
let g:echidna#palette.color_6  = '#75D7EC'
let g:echidna#palette.color_7  = '#F8F8F2'
let g:echidna#palette.color_8  = '#6272A4'
let g:echidna#palette.color_9  = '#E356A7'
let g:echidna#palette.color_10 = '#42E66C'
let g:echidna#palette.color_11 = '#EFA554'
let g:echidna#palette.color_12 = '#9B6BDF'
let g:echidna#palette.color_13 = '#E64747'
let g:echidna#palette.color_14 = '#75D7EC'
let g:echidna#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! echidna#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'echidna'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
