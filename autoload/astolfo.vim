" Palette: 

let g:astolfo#palette           = {}
let g:astolfo#palette.fg        = ['#bbbbbb', 250]

let g:astolfo#palette.bglighter = ['#171816', 233]
let g:astolfo#palette.bglight   = ['#171816', 233]
let g:astolfo#palette.bg        = ['#171816', 233]
let g:astolfo#palette.bgdark    = ['#171816', 233]
let g:astolfo#palette.bgdarker  = ['#171816', 233]

let g:astolfo#palette.comment   = ['#6272a4',  61]
let g:astolfo#palette.selection = ['#391717', 234]
let g:astolfo#palette.subtle    = ['#20221f', 234]

let g:astolfo#palette.key_color      = ['#f6ebb7', 223]
let g:astolfo#palette.class_name     = ['#f5c9fc', 225]
let g:astolfo#palette.parameter_color    = ['#FFB86C', 215]
let g:astolfo#palette.keyword_color      = ['#d776ae', 175]
let g:astolfo#palette.constants_color    = ['#a7a0d1', 146]
let g:astolfo#palette.red       = ['#FF5555', 203]
let g:astolfo#palette.string_color    = ['#cd5257', 167]

"
" Terminal Colors
"
let g:astolfo#palette.color_0  = '#21222C'
let g:astolfo#palette.color_1  = '#E356A7'
let g:astolfo#palette.color_2  = '#42E66C'
let g:astolfo#palette.color_3  = '#F1FA8C'
let g:astolfo#palette.color_4  = '#9B6BDF'
let g:astolfo#palette.color_5  = '#E64747'
let g:astolfo#palette.color_6  = '#75D7EC'
let g:astolfo#palette.color_7  = '#F8F8F2'
let g:astolfo#palette.color_8  = '#6272A4'
let g:astolfo#palette.color_9  = '#E356A7'
let g:astolfo#palette.color_10 = '#42E66C'
let g:astolfo#palette.color_11 = '#EFA554'
let g:astolfo#palette.color_12 = '#9B6BDF'
let g:astolfo#palette.color_13 = '#E64747'
let g:astolfo#palette.color_14 = '#75D7EC'
let g:astolfo#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! astolfo#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'astolfo'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
