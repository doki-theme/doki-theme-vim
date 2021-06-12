" Palette: 

let g:hanekawa_tsubasa#palette           = {}
let g:hanekawa_tsubasa#palette.fg        = ['#c3c3c3', 251]

let g:hanekawa_tsubasa#palette.bglighter = ['#141115', 233]
let g:hanekawa_tsubasa#palette.bglight   = ['#141115', 233]
let g:hanekawa_tsubasa#palette.bg        = ['#141115', 233]
let g:hanekawa_tsubasa#palette.bgdark    = ['#141115', 233]
let g:hanekawa_tsubasa#palette.bgdarker  = ['#141115', 233]

let g:hanekawa_tsubasa#palette.comment   = ['#79769f',  243]
let g:hanekawa_tsubasa#palette.selection = ['#5a3b5d', 240]
let g:hanekawa_tsubasa#palette.subtle    = ['#1e1d1f', 234]

let g:hanekawa_tsubasa#palette.key_color      = ['#7ceec8', 122]
let g:hanekawa_tsubasa#palette.class_name     = ['#e39656', 173]
let g:hanekawa_tsubasa#palette.parameter_color    = ['#FFB86C', 215]
let g:hanekawa_tsubasa#palette.keyword_color      = ['#d55fde', 170]
let g:hanekawa_tsubasa#palette.constants_color    = ['#86dbfd', 117]
let g:hanekawa_tsubasa#palette.red       = ['#FF5555', 203]
let g:hanekawa_tsubasa#palette.string_color    = ['#F6E3CC', 224]

"
" Terminal Colors
"
let g:hanekawa_tsubasa#palette.color_0  = '#21222C'
let g:hanekawa_tsubasa#palette.color_1  = '#E356A7'
let g:hanekawa_tsubasa#palette.color_2  = '#42E66C'
let g:hanekawa_tsubasa#palette.color_3  = '#F1FA8C'
let g:hanekawa_tsubasa#palette.color_4  = '#9B6BDF'
let g:hanekawa_tsubasa#palette.color_5  = '#E64747'
let g:hanekawa_tsubasa#palette.color_6  = '#75D7EC'
let g:hanekawa_tsubasa#palette.color_7  = '#F8F8F2'
let g:hanekawa_tsubasa#palette.color_8  = '#6272A4'
let g:hanekawa_tsubasa#palette.color_9  = '#E356A7'
let g:hanekawa_tsubasa#palette.color_10 = '#42E66C'
let g:hanekawa_tsubasa#palette.color_11 = '#EFA554'
let g:hanekawa_tsubasa#palette.color_12 = '#9B6BDF'
let g:hanekawa_tsubasa#palette.color_13 = '#E64747'
let g:hanekawa_tsubasa#palette.color_14 = '#75D7EC'
let g:hanekawa_tsubasa#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! hanekawa_tsubasa#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'hanekawa_tsubasa'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
