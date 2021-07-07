if chocola#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       ChocolaParameterBold
  hi! link htmlBoldItalic ChocolaParameterBoldItalic
  hi! link htmlH1         ChocolaConstantsBold
  hi! link htmlItalic     ChocolaStringColorItalic
  hi! link mkdBlockquote  ChocolaStringColorItalic
  hi! link mkdBold        ChocolaParameterBold
  hi! link mkdBoldItalic  ChocolaParameterBoldItalic
  hi! link mkdCode        ChocolaClassName
  hi! link mkdCodeEnd     ChocolaClassName
  hi! link mkdCodeStart   ChocolaClassName
  hi! link mkdHeading     ChocolaConstantsBold
  hi! link mkdInlineUrl   ChocolaLink
  hi! link mkdItalic      ChocolaStringColorItalic
  hi! link mkdLink        ChocolaKeyword
  hi! link mkdListItem    ChocolaKeyColor
  hi! link mkdRule        ChocolaComment
  hi! link mkdUrl         ChocolaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        ChocolaKeyColor
  hi! link markdownBold              ChocolaParameterBold
  hi! link markdownBoldItalic        ChocolaParameterBoldItalic
  hi! link markdownCodeBlock         ChocolaClassName
  hi! link markdownCode              ChocolaClassName
  hi! link markdownCodeDelimiter     ChocolaClassName
  hi! link markdownH1                ChocolaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            ChocolaStringColorItalic
  hi! link markdownLinkText          ChocolaKeyword
  hi! link markdownListMarker        ChocolaKeyColor
  hi! link markdownOrderedListMarker ChocolaKeyColor
  hi! link markdownRule              ChocolaComment
  hi! link markdownUrl               ChocolaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
