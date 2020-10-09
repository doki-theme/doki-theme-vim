if aqua#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       AquaParameterBold
  hi! link htmlBoldItalic AquaParameterBoldItalic
  hi! link htmlH1         AquaConstantsBold
  hi! link htmlItalic     AquaStringColorItalic
  hi! link mkdBlockquote  AquaStringColorItalic
  hi! link mkdBold        AquaParameterBold
  hi! link mkdBoldItalic  AquaParameterBoldItalic
  hi! link mkdCode        AquaClassName
  hi! link mkdCodeEnd     AquaClassName
  hi! link mkdCodeStart   AquaClassName
  hi! link mkdHeading     AquaConstantsBold
  hi! link mkdInlineUrl   AquaLink
  hi! link mkdItalic      AquaStringColorItalic
  hi! link mkdLink        AquaKeyword
  hi! link mkdListItem    AquaKeyColor
  hi! link mkdRule        AquaComment
  hi! link mkdUrl         AquaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        AquaKeyColor
  hi! link markdownBold              AquaParameterBold
  hi! link markdownBoldItalic        AquaParameterBoldItalic
  hi! link markdownCodeBlock         AquaClassName
  hi! link markdownCode              AquaClassName
  hi! link markdownCodeDelimiter     AquaClassName
  hi! link markdownH1                AquaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            AquaStringColorItalic
  hi! link markdownLinkText          AquaKeyword
  hi! link markdownListMarker        AquaKeyColor
  hi! link markdownOrderedListMarker AquaKeyColor
  hi! link markdownRule              AquaComment
  hi! link markdownUrl               AquaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
