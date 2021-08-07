" Palette: 

let g:cinnamon#palette           = {}
let g:cinnamon#palette.fg        = ['#f3edff', 255]

let g:cinnamon#palette.bglighter = ['#393784', 237]
let g:cinnamon#palette.bglight   = ['#393784', 237]
let g:cinnamon#palette.bg        = ['#393784', 237]
let g:cinnamon#palette.bgdark    = ['#393784', 237]
let g:cinnamon#palette.bgdarker  = ['#393784', 237]

let g:cinnamon#palette.comment   = ['#7384d4',  68]
let g:cinnamon#palette.selection = ['#3a6c75', 242]
let g:cinnamon#palette.subtle    = ['#3f3c91', 60]

let g:cinnamon#palette.key_color      = ['#FFD448', 221]
let g:cinnamon#palette.class_name     = ['#d0a2fa', 183]
let g:cinnamon#palette.parameter_color    = ['#FFB86C', 215]
let g:cinnamon#palette.keyword_color      = ['#53dac7', 80]
let g:cinnamon#palette.constants_color    = ['#8bc1f8', 111]
let g:cinnamon#palette.red       = ['#FF5555', 203]
let g:cinnamon#palette.string_color    = ['#b3a9ff', 147]

"
" Terminal Colors
"
let g:cinnamon#palette.color_0  = '#21222C'
let g:cinnamon#palette.color_1  = '#FF7AB2'
let g:cinnamon#palette.color_2  = '#54ea7c'
let g:cinnamon#palette.color_3  = '#F1FA8C'
let g:cinnamon#palette.color_4  = '#B39AFF'
let g:cinnamon#palette.color_5  = '#FF91BF'
let g:cinnamon#palette.color_6  = '#6DD6EE'
let g:cinnamon#palette.color_7  = '#F8F8F2'
let g:cinnamon#palette.color_8  = '#6272A4'
let g:cinnamon#palette.color_9  = '#FF7AB2'
let g:cinnamon#palette.color_10 = '#54ea7c'
let g:cinnamon#palette.color_11 = '#fdaa39'
let g:cinnamon#palette.color_12 = '#B39AFF'
let g:cinnamon#palette.color_13 = '#FF91BF'
let g:cinnamon#palette.color_14 = '#6DD6EE'
let g:cinnamon#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! cinnamon#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'cinnamon'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
