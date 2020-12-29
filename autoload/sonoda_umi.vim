" Palette: 

let g:sonoda_umi#palette           = {}
let g:sonoda_umi#palette.fg        = ['#d0d0d0', 252]

let g:sonoda_umi#palette.bglighter = ['#15173e', 234]
let g:sonoda_umi#palette.bglight   = ['#15173e', 234]
let g:sonoda_umi#palette.bg        = ['#15173e', 234]
let g:sonoda_umi#palette.bgdark    = ['#15173e', 234]
let g:sonoda_umi#palette.bgdarker  = ['#15173e', 234]

let g:sonoda_umi#palette.comment   = ['#6272a4',  61]
let g:sonoda_umi#palette.selection = ['#23264f', 235]
let g:sonoda_umi#palette.subtle    = ['#181A46', 234]

let g:sonoda_umi#palette.key_color      = ['#BD84DD', 140]
let g:sonoda_umi#palette.class_name     = ['#78F5F0', 123]
let g:sonoda_umi#palette.parameter_color    = ['#FFB86C', 215]
let g:sonoda_umi#palette.keyword_color      = ['#58b7ff', 75]
let g:sonoda_umi#palette.constants_color    = ['#86dbfd', 117]
let g:sonoda_umi#palette.red       = ['#FF5555', 203]
let g:sonoda_umi#palette.string_color    = ['#FFF6B3', 229]

"
" Terminal Colors
"
let g:sonoda_umi#palette.color_0  = '#21222C'
let g:sonoda_umi#palette.color_1  = '#E356A7'
let g:sonoda_umi#palette.color_2  = '#42E66C'
let g:sonoda_umi#palette.color_3  = '#F1FA8C'
let g:sonoda_umi#palette.color_4  = '#9B6BDF'
let g:sonoda_umi#palette.color_5  = '#E64747'
let g:sonoda_umi#palette.color_6  = '#75D7EC'
let g:sonoda_umi#palette.color_7  = '#F8F8F2'
let g:sonoda_umi#palette.color_8  = '#6272A4'
let g:sonoda_umi#palette.color_9  = '#E356A7'
let g:sonoda_umi#palette.color_10 = '#42E66C'
let g:sonoda_umi#palette.color_11 = '#EFA554'
let g:sonoda_umi#palette.color_12 = '#9B6BDF'
let g:sonoda_umi#palette.color_13 = '#E64747'
let g:sonoda_umi#palette.color_14 = '#75D7EC'
let g:sonoda_umi#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! sonoda_umi#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'sonoda_umi'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
