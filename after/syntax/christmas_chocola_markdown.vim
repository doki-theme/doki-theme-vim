if christmas_chocola#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       ChristmasChocolaParameterBold
  hi! link htmlBoldItalic ChristmasChocolaParameterBoldItalic
  hi! link htmlH1         ChristmasChocolaConstantsBold
  hi! link htmlItalic     ChristmasChocolaStringColorItalic
  hi! link mkdBlockquote  ChristmasChocolaStringColorItalic
  hi! link mkdBold        ChristmasChocolaParameterBold
  hi! link mkdBoldItalic  ChristmasChocolaParameterBoldItalic
  hi! link mkdCode        ChristmasChocolaClassName
  hi! link mkdCodeEnd     ChristmasChocolaClassName
  hi! link mkdCodeStart   ChristmasChocolaClassName
  hi! link mkdHeading     ChristmasChocolaConstantsBold
  hi! link mkdInlineUrl   ChristmasChocolaLink
  hi! link mkdItalic      ChristmasChocolaStringColorItalic
  hi! link mkdLink        ChristmasChocolaKeyword
  hi! link mkdListItem    ChristmasChocolaKeyColor
  hi! link mkdRule        ChristmasChocolaComment
  hi! link mkdUrl         ChristmasChocolaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        ChristmasChocolaKeyColor
  hi! link markdownBold              ChristmasChocolaParameterBold
  hi! link markdownBoldItalic        ChristmasChocolaParameterBoldItalic
  hi! link markdownCodeBlock         ChristmasChocolaClassName
  hi! link markdownCode              ChristmasChocolaClassName
  hi! link markdownCodeDelimiter     ChristmasChocolaClassName
  hi! link markdownH1                ChristmasChocolaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            ChristmasChocolaStringColorItalic
  hi! link markdownLinkText          ChristmasChocolaKeyword
  hi! link markdownListMarker        ChristmasChocolaKeyColor
  hi! link markdownOrderedListMarker ChristmasChocolaKeyColor
  hi! link markdownRule              ChristmasChocolaComment
  hi! link markdownUrl               ChristmasChocolaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
