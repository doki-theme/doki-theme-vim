" Palette: 

let g:shima_rin#palette           = {}
let g:shima_rin#palette.fg        = ['#b0b0b0', 145]

let g:shima_rin#palette.bglighter = ['#323742', 237]
let g:shima_rin#palette.bglight   = ['#323742', 237]
let g:shima_rin#palette.bg        = ['#323742', 237]
let g:shima_rin#palette.bgdark    = ['#323742', 237]
let g:shima_rin#palette.bgdarker  = ['#323742', 237]

let g:shima_rin#palette.comment   = ['#687380',  243]
let g:shima_rin#palette.selection = ['#4f3a4e', 239]
let g:shima_rin#palette.subtle    = ['#313a49', 237]

let g:shima_rin#palette.key_color      = ['#61ead9', 80]
let g:shima_rin#palette.class_name     = ['#89acf6', 111]
let g:shima_rin#palette.parameter_color    = ['#FFB86C', 215]
let g:shima_rin#palette.keyword_color      = ['#ea73d6', 170]
let g:shima_rin#palette.constants_color    = ['#ec9cb2', 217]
let g:shima_rin#palette.red       = ['#FF5555', 203]
let g:shima_rin#palette.string_color    = ['#F6E9CB', 224]

"
" Terminal Colors
"
let g:shima_rin#palette.color_0  = '#21222C'
let g:shima_rin#palette.color_1  = '#E356A7'
let g:shima_rin#palette.color_2  = '#42E66C'
let g:shima_rin#palette.color_3  = '#F1FA8C'
let g:shima_rin#palette.color_4  = '#9B6BDF'
let g:shima_rin#palette.color_5  = '#E64747'
let g:shima_rin#palette.color_6  = '#75D7EC'
let g:shima_rin#palette.color_7  = '#F8F8F2'
let g:shima_rin#palette.color_8  = '#6272A4'
let g:shima_rin#palette.color_9  = '#E356A7'
let g:shima_rin#palette.color_10 = '#42E66C'
let g:shima_rin#palette.color_11 = '#EFA554'
let g:shima_rin#palette.color_12 = '#9B6BDF'
let g:shima_rin#palette.color_13 = '#E64747'
let g:shima_rin#palette.color_14 = '#75D7EC'
let g:shima_rin#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! shima_rin#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'shima_rin'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
