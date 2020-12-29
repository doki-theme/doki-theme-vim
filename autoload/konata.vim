" Palette: 

let g:konata#palette           = {}
let g:konata#palette.fg        = ['#f3edff', 255]

let g:konata#palette.bglighter = ['#334c7d', 60]
let g:konata#palette.bglight   = ['#334c7d', 60]
let g:konata#palette.bg        = ['#334c7d', 60]
let g:konata#palette.bgdark    = ['#334c7d', 60]
let g:konata#palette.bgdarker  = ['#334c7d', 60]

let g:konata#palette.comment   = ['#B0C0FC',  147]
let g:konata#palette.selection = ['#3a6c75', 242]
let g:konata#palette.subtle    = ['#3d5d96', 60]

let g:konata#palette.key_color      = ['#fffd9b', 228]
let g:konata#palette.class_name     = ['#cda8fa', 183]
let g:konata#palette.parameter_color    = ['#FFB86C', 215]
let g:konata#palette.keyword_color      = ['#ffc9d7', 224]
let g:konata#palette.constants_color    = ['#f6be8b', 216]
let g:konata#palette.red       = ['#FF5555', 203]
let g:konata#palette.string_color    = ['#fc9ee6', 218]

"
" Terminal Colors
"
let g:konata#palette.color_0  = '#21222C'
let g:konata#palette.color_1  = '#FF7AB2'
let g:konata#palette.color_2  = '#54ea7c'
let g:konata#palette.color_3  = '#F1FA8C'
let g:konata#palette.color_4  = '#B39AFF'
let g:konata#palette.color_5  = '#FF91BF'
let g:konata#palette.color_6  = '#6DD6EE'
let g:konata#palette.color_7  = '#F8F8F2'
let g:konata#palette.color_8  = '#6272A4'
let g:konata#palette.color_9  = '#FF7AB2'
let g:konata#palette.color_10 = '#54ea7c'
let g:konata#palette.color_11 = '#fdaa39'
let g:konata#palette.color_12 = '#B39AFF'
let g:konata#palette.color_13 = '#FF91BF'
let g:konata#palette.color_14 = '#6DD6EE'
let g:konata#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! konata#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'konata'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
