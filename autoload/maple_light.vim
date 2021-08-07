" Palette: 

let g:maple_light#palette           = {}
let g:maple_light#palette.fg        = ['#101010', 233]

let g:maple_light#palette.bglighter = ['#ffd297', 222]
let g:maple_light#palette.bglight   = ['#ffd297', 222]
let g:maple_light#palette.bg        = ['#ffd297', 222]
let g:maple_light#palette.bgdark    = ['#ffd297', 222]
let g:maple_light#palette.bgdarker  = ['#ffd297', 222]

let g:maple_light#palette.comment   = ['#908250',  101]
let g:maple_light#palette.selection = ['#ec9e74', 216]
let g:maple_light#palette.subtle    = ['#FFC392', 216]

let g:maple_light#palette.key_color      = ['#007972', 29]
let g:maple_light#palette.class_name     = ['#7748B7', 97]
let g:maple_light#palette.parameter_color    = ['#923A4E', 95]
let g:maple_light#palette.keyword_color      = ['#B03F0F', 130]
let g:maple_light#palette.constants_color    = ['#005CC5', 26]
let g:maple_light#palette.red       = ['#FF5555', 203]
let g:maple_light#palette.string_color    = ['#208D3B', 29]

"
" Terminal Colors
"
let g:maple_light#palette.color_0  = '#21222C'
let g:maple_light#palette.color_1  = '#E356A7'
let g:maple_light#palette.color_2  = '#208D3B'
let g:maple_light#palette.color_3  = '#F1FA8C'
let g:maple_light#palette.color_4  = '#7748B7'
let g:maple_light#palette.color_5  = '#E64747'
let g:maple_light#palette.color_6  = '#0896AD'
let g:maple_light#palette.color_7  = '#F8F8F2'
let g:maple_light#palette.color_8  = '#6272A4'
let g:maple_light#palette.color_9  = '#E356A7'
let g:maple_light#palette.color_10 = '#208D3B'
let g:maple_light#palette.color_11 = '#A46B21'
let g:maple_light#palette.color_12 = '#7748B7'
let g:maple_light#palette.color_13 = '#E64747'
let g:maple_light#palette.color_14 = '#0896AD'
let g:maple_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! maple_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'maple_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
