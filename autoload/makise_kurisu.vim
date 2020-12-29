" Palette: 

let g:makise_kurisu#palette           = {}
let g:makise_kurisu#palette.fg        = ['#c3c3c3', 251]

let g:makise_kurisu#palette.bglighter = ['#1c1010', 233]
let g:makise_kurisu#palette.bglight   = ['#1c1010', 233]
let g:makise_kurisu#palette.bg        = ['#1c1010', 233]
let g:makise_kurisu#palette.bgdark    = ['#1c1010', 233]
let g:makise_kurisu#palette.bgdarker  = ['#1c1010', 233]

let g:makise_kurisu#palette.comment   = ['#6272a4',  61]
let g:makise_kurisu#palette.selection = ['#391717', 234]
let g:makise_kurisu#palette.subtle    = ['#210e0f', 233]

let g:makise_kurisu#palette.key_color      = ['#FF8C74', 210]
let g:makise_kurisu#palette.class_name     = ['#e0474b', 167]
let g:makise_kurisu#palette.parameter_color    = ['#FFB86C', 215]
let g:makise_kurisu#palette.keyword_color      = ['#BD93F9', 141]
let g:makise_kurisu#palette.constants_color    = ['#86dbfd', 117]
let g:makise_kurisu#palette.red       = ['#FF5555', 203]
let g:makise_kurisu#palette.string_color    = ['#4593f5', 69]

"
" Terminal Colors
"
let g:makise_kurisu#palette.color_0  = '#21222C'
let g:makise_kurisu#palette.color_1  = '#E356A7'
let g:makise_kurisu#palette.color_2  = '#42E66C'
let g:makise_kurisu#palette.color_3  = '#F1FA8C'
let g:makise_kurisu#palette.color_4  = '#9B6BDF'
let g:makise_kurisu#palette.color_5  = '#E64747'
let g:makise_kurisu#palette.color_6  = '#75D7EC'
let g:makise_kurisu#palette.color_7  = '#F8F8F2'
let g:makise_kurisu#palette.color_8  = '#6272A4'
let g:makise_kurisu#palette.color_9  = '#E356A7'
let g:makise_kurisu#palette.color_10 = '#42E66C'
let g:makise_kurisu#palette.color_11 = '#EFA554'
let g:makise_kurisu#palette.color_12 = '#9B6BDF'
let g:makise_kurisu#palette.color_13 = '#E64747'
let g:makise_kurisu#palette.color_14 = '#75D7EC'
let g:makise_kurisu#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! makise_kurisu#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'makise_kurisu'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
