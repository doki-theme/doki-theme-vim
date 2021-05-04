" Palette: 

let g:tohru#palette           = {}
let g:tohru#palette.fg        = ['#101010', 233]

let g:tohru#palette.bglighter = ['#ffe591', 222]
let g:tohru#palette.bglight   = ['#ffe591', 222]
let g:tohru#palette.bg        = ['#ffe591', 222]
let g:tohru#palette.bgdark    = ['#ffe591', 222]
let g:tohru#palette.bgdarker  = ['#ffe591', 222]

let g:tohru#palette.comment   = ['#908250',  101]
let g:tohru#palette.selection = ['#ec9e74', 216]
let g:tohru#palette.subtle    = ['#ffe797', 222]

let g:tohru#palette.key_color      = ['#176B82', 24]
let g:tohru#palette.class_name     = ['#0E8D61', 29]
let g:tohru#palette.parameter_color    = ['#d23c4b', 167]
let g:tohru#palette.keyword_color      = ['#A74503', 130]
let g:tohru#palette.constants_color    = ['#005CC5', 26]
let g:tohru#palette.red       = ['#FF5555', 203]
let g:tohru#palette.string_color    = ['#005CC5', 26]

"
" Terminal Colors
"
let g:tohru#palette.color_0  = '#21222C'
let g:tohru#palette.color_1  = '#E356A7'
let g:tohru#palette.color_2  = '#3ab55b'
let g:tohru#palette.color_3  = '#F1FA8C'
let g:tohru#palette.color_4  = '#9B6BDF'
let g:tohru#palette.color_5  = '#E64747'
let g:tohru#palette.color_6  = '#1fb5cd'
let g:tohru#palette.color_7  = '#F8F8F2'
let g:tohru#palette.color_8  = '#6272A4'
let g:tohru#palette.color_9  = '#E356A7'
let g:tohru#palette.color_10 = '#3ab55b'
let g:tohru#palette.color_11 = '#db974d'
let g:tohru#palette.color_12 = '#9B6BDF'
let g:tohru#palette.color_13 = '#E64747'
let g:tohru#palette.color_14 = '#1fb5cd'
let g:tohru#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! tohru#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'tohru'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
