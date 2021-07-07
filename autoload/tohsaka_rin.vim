" Palette: 

let g:tohsaka_rin#palette           = {}
let g:tohsaka_rin#palette.fg        = ['#bbbbbb', 250]

let g:tohsaka_rin#palette.bglighter = ['#191718', 234]
let g:tohsaka_rin#palette.bglight   = ['#191718', 234]
let g:tohsaka_rin#palette.bg        = ['#191718', 234]
let g:tohsaka_rin#palette.bgdark    = ['#191718', 234]
let g:tohsaka_rin#palette.bgdarker  = ['#191718', 234]

let g:tohsaka_rin#palette.comment   = ['#4c8484',  66]
let g:tohsaka_rin#palette.selection = ['#391717', 234]
let g:tohsaka_rin#palette.subtle    = ['#22191b', 234]

let g:tohsaka_rin#palette.key_color      = ['#e0474b', 167]
let g:tohsaka_rin#palette.class_name     = ['#EFA554', 215]
let g:tohsaka_rin#palette.parameter_color    = ['#FFB86C', 215]
let g:tohsaka_rin#palette.keyword_color      = ['#666f71', 242]
let g:tohsaka_rin#palette.constants_color    = ['#86dbfd', 117]
let g:tohsaka_rin#palette.red       = ['#FF5555', 203]
let g:tohsaka_rin#palette.string_color    = ['#69e0f5', 81]

"
" Terminal Colors
"
let g:tohsaka_rin#palette.color_0  = '#21222C'
let g:tohsaka_rin#palette.color_1  = '#E356A7'
let g:tohsaka_rin#palette.color_2  = '#42E66C'
let g:tohsaka_rin#palette.color_3  = '#F1FA8C'
let g:tohsaka_rin#palette.color_4  = '#9B6BDF'
let g:tohsaka_rin#palette.color_5  = '#E64747'
let g:tohsaka_rin#palette.color_6  = '#75D7EC'
let g:tohsaka_rin#palette.color_7  = '#F8F8F2'
let g:tohsaka_rin#palette.color_8  = '#6272A4'
let g:tohsaka_rin#palette.color_9  = '#E356A7'
let g:tohsaka_rin#palette.color_10 = '#42E66C'
let g:tohsaka_rin#palette.color_11 = '#EFA554'
let g:tohsaka_rin#palette.color_12 = '#9B6BDF'
let g:tohsaka_rin#palette.color_13 = '#E64747'
let g:tohsaka_rin#palette.color_14 = '#75D7EC'
let g:tohsaka_rin#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! tohsaka_rin#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'tohsaka_rin'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
