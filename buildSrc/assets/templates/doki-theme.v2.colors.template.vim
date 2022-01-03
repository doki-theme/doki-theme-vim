if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = '{{themeName}}'

set t_Co=256

" Set to "256" for 256-color terminals, or
" set to "16" to use your terminal emulator's native colors
" (a 16-color palette for this color scheme is available; see
" < https://github.com/joshdick/{{themeName}.vim/blob/main/README.md >
" for more information.)
if !exists("g:{{themeName}}_termcolors")
  let g:{{themeName}}_termcolors = 256
endif

" Not all terminals support italics properly. If yours does, opt-in.
if !exists("g:{{themeName}}_terminal_italics")
  let g:{{themeName}}_terminal_italics = 0
endif

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" This function is based on one from FlatColor: https://github.com/MaxSt/FlatColor/
" Which in turn was based on one found in hemisu: https://github.com/noahfrederick/vim-hemisu/
let s:group_colors = {} " Cache of default highlight group settings, for later reference via `{{themeName}#extend_highlight`
function! s:h(group, style, ...)
  if (a:0 > 0) " Will be true if we got here from {{themeName}#extend_highlight
    let s:highlight = s:group_colors[a:group]
    for style_type in ["fg", "bg", "sp"]
      if (has_key(a:style, style_type))
        let l:default_style = (has_key(s:highlight, style_type) ? copy(s:highlight[style_type]) : { "cterm16": "NONE", "cterm": "NONE", "gui": "NONE" })
        let s:highlight[style_type] = extend(l:default_style, a:style[style_type])
      endif
    endfor
    if (has_key(a:style, "gui"))
      let s:highlight.gui = a:style.gui
    endif
  else
    let s:highlight = a:style
    let s:group_colors[a:group] = s:highlight " Cache default highlight group settings
  endif

  if g:{{themeName}}_terminal_italics == 0
    if has_key(s:highlight, "cterm") && s:highlight["cterm"] == "italic"
      unlet s:highlight.cterm
    endif
    if has_key(s:highlight, "gui") && s:highlight["gui"] == "italic"
      unlet s:highlight.gui
    endif
  endif

  if g:{{themeName}}_termcolors == 16
    let l:ctermfg = (has_key(s:highlight, "fg") ? s:highlight.fg.cterm16 : "NONE")
    let l:ctermbg = (has_key(s:highlight, "bg") ? s:highlight.bg.cterm16 : "NONE")
  else
    let l:ctermfg = (has_key(s:highlight, "fg") ? s:highlight.fg.cterm : "NONE")
    let l:ctermbg = (has_key(s:highlight, "bg") ? s:highlight.bg.cterm : "NONE")
  endif

  execute "highlight" a:group
    \ "guifg="   (has_key(s:highlight, "fg")    ? s:highlight.fg.gui   : "NONE")
    \ "guibg="   (has_key(s:highlight, "bg")    ? s:highlight.bg.gui   : "NONE")
    \ "guisp="   (has_key(s:highlight, "sp")    ? s:highlight.sp.gui   : "NONE")
    \ "gui="     (has_key(s:highlight, "gui")   ? s:highlight.gui      : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (has_key(s:highlight, "cterm") ? s:highlight.cterm    : "NONE")
endfunction

let s:colors = {{themeName}}#GetColors() " Autoloaded from the specific color theme

" Global colors
call s:h("Comment", { "fg": s:colors.comments, "gui": "italic", "cterm": "italic" })
call s:h("String", {"fg": s:colors.stringColor})
call s:h("Constant", {"fg": s:colors.constantColor})
call s:h("Identifier", {"fg": s:colors.foregroundColorEditor})
call s:h("Function", {"fg": s:colors.classNameColor})
call s:h("Underlined", {"fg": s:colors.keyColor})
call s:h("StorageClass", {"fg": s:colors.keywordColor})
call s:h("Keyword", {"fg": s:colors.keywordColor})
call s:h("Statement", {"fg": s:colors.keywordColor})
call s:h("Operator", {"fg": s:colors.htmlTagColor})
call s:h("foldBraces", {"fg": s:colors.foregroundColorEditor})

" HTML Colors
call s:h("htmlTagName", { "fg": s:colors.htmlTagColor})
call s:h("htmlEndTag", { "fg": s:colors.htmlTagColor})
call s:h("htmlEndTag", { "fg": s:colors.foregroundColorEditor})
call s:h("htmlHead", { "fg": s:colors.htmlTagColor})
call s:h("htmlSpecialTagName", { "fg": s:colors.htmlTagColor})
call s:h("htmlArg", { "fg": s:colors.editorAccentColor, "gui": "italic", "cterm": "italic"})
call s:h("htmlTagN", { "fg": s:colors.htmlTagColor})
call s:h("htmlScriptTag", { "fg": s:colors.foregroundColorEditor})
call s:h("htmlTag", { "fg": s:colors.foregroundColorEditor})
call s:h("htmlTitle", { "fg": s:colors.stringColor})
call s:h("htmlH1", { "fg": s:colors.stringColor })
call s:h("htmlH2", { "fg": s:colors.stringColor })
call s:h("htmlH3", { "fg": s:colors.stringColor })
call s:h("htmlH4", { "fg": s:colors.stringColor })
call s:h("htmlH5", { "fg": s:colors.stringColor })
call s:h("htmlH6", { "fg": s:colors.stringColor })
call s:h("htmlLink", { "fg": s:colors.keyColor })
call s:h("htmlSpecialChar", { "fg": s:colors.keywordColor})

" Javascript
call s:h("jsFuncCall", { "fg": s:colors.editorAccentColor})
call s:h("jsDecoratorFunction", { "fg": s:colors.editorAccentColor})
call s:h("jsDecorator", { "fg": s:colors.editorAccentColor})
call s:h("jsRegexpString", { "fg": s:colors.editorAccentColor})
call s:h("jsStorageClass", { "fg": s:colors.keywordColor})
call s:h("jsThis", { "fg": s:colors.keywordColor})
call s:h("jsOperatorKeyword", { "fg": s:colors.keywordColor})
call s:h("jsVariableDef", { "fg": s:colors.foregroundColorEditor})
call s:h("jsFuncBlock", { "fg": s:colors.foregroundColorEditor})
call s:h("jsParens", { "fg": s:colors.foregroundColorEditor})
call s:h("jsBrackets", { "fg": s:colors.foregroundColorEditor})
call s:h("jsGlobalObjects", { "fg": s:colors.constantColor})
call s:h("jsArrowFunction", { "fg": s:colors.htmlTagColor})
call s:h("jsFunctionArgs", { "fg": s:colors.stringColor})
call s:h("jsFuncArgs", { "fg": s:colors.stringColor})
call s:h("jsObjectProp", { "fg": s:colors.foregroundColorEditor, "gui": "bold", "cterm": "bold"})
call s:h("jsObjectKey", { "fg": s:colors.foregroundColorEditor, "gui": "bold", "cterm": "bold"})

" Typescript
call s:h("typescriptBraces", { "fg": s:colors.foregroundColorEditor})
call s:h("typescriptEndColons", { "fg": s:colors.foregroundColorEditor})
call s:h("typescriptParens", { "fg": s:colors.foregroundColorEditor})
call s:h("typescriptDecorators", { "fg": s:colors.editorAccentColor})
call s:h("typescriptGlobalObjects", { "fg": s:colors.classNameColor})
call s:h("typescriptDocTags", { "fg": s:colors.keyColor})
call s:h("typescriptDocParam", { "fg": s:colors.stringColor})
call s:h("typescriptIdentifier", { "fg": s:colors.keywordColor})


" Referencable colors for other syntax stuffs
call s:h("ForegroundColorEditor", { "fg": s:colors.foregroundColorEditor})
call s:h("HtmlTagColor", { "fg": s:colors.htmlTagColor})
