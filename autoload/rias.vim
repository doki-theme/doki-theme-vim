" Palette: 

let g:rias#palette           = {}
let g:rias#palette.fg        = ['#fafafa', 231]

let g:rias#palette.bglighter = ['#401112', 233]
let g:rias#palette.bglight   = ['#401112', 233]
let g:rias#palette.bg        = ['#401112', 233]
let g:rias#palette.bgdark    = ['#401112', 233]
let g:rias#palette.bgdarker  = ['#401112', 233]

let g:rias#palette.comment   = ['#6272a4',  61]
let g:rias#palette.selection = ['#822e2e', 236]
let g:rias#palette.subtle    = ['#491818', 234]

let g:rias#palette.key_color      = ['#eea367', 215]
let g:rias#palette.class_name     = ['#e03392', 168]
let g:rias#palette.parameter_color    = ['#FFB86C', 215]
let g:rias#palette.keyword_color      = ['#C04750', 131]
let g:rias#palette.constants_color    = ['#86dbfd', 117]
let g:rias#palette.red       = ['#FF5555', 203]
let g:rias#palette.string_color    = ['#9EB7D6', 146]

"
" Terminal Colors
"
let g:rias#palette.color_0  = '#21222C'
let g:rias#palette.color_1  = '#E356A7'
let g:rias#palette.color_2  = '#42E66C'
let g:rias#palette.color_3  = '#F1FA8C'
let g:rias#palette.color_4  = '#9B6BDF'
let g:rias#palette.color_5  = '#E64747'
let g:rias#palette.color_6  = '#75D7EC'
let g:rias#palette.color_7  = '#F8F8F2'
let g:rias#palette.color_8  = '#6272A4'
let g:rias#palette.color_9  = '#E356A7'
let g:rias#palette.color_10 = '#42E66C'
let g:rias#palette.color_11 = '#EFA554'
let g:rias#palette.color_12 = '#9B6BDF'
let g:rias#palette.color_13 = '#E64747'
let g:rias#palette.color_14 = '#75D7EC'
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
