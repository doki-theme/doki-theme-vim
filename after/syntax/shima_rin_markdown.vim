if shima_rin#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       ShimaRinParameterBold
  hi! link htmlBoldItalic ShimaRinParameterBoldItalic
  hi! link htmlH1         ShimaRinConstantsBold
  hi! link htmlItalic     ShimaRinStringColorItalic
  hi! link mkdBlockquote  ShimaRinStringColorItalic
  hi! link mkdBold        ShimaRinParameterBold
  hi! link mkdBoldItalic  ShimaRinParameterBoldItalic
  hi! link mkdCode        ShimaRinClassName
  hi! link mkdCodeEnd     ShimaRinClassName
  hi! link mkdCodeStart   ShimaRinClassName
  hi! link mkdHeading     ShimaRinConstantsBold
  hi! link mkdInlineUrl   ShimaRinLink
  hi! link mkdItalic      ShimaRinStringColorItalic
  hi! link mkdLink        ShimaRinKeyword
  hi! link mkdListItem    ShimaRinKeyColor
  hi! link mkdRule        ShimaRinComment
  hi! link mkdUrl         ShimaRinLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        ShimaRinKeyColor
  hi! link markdownBold              ShimaRinParameterBold
  hi! link markdownBoldItalic        ShimaRinParameterBoldItalic
  hi! link markdownCodeBlock         ShimaRinClassName
  hi! link markdownCode              ShimaRinClassName
  hi! link markdownCodeDelimiter     ShimaRinClassName
  hi! link markdownH1                ShimaRinConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            ShimaRinStringColorItalic
  hi! link markdownLinkText          ShimaRinKeyword
  hi! link markdownListMarker        ShimaRinKeyColor
  hi! link markdownOrderedListMarker ShimaRinKeyColor
  hi! link markdownRule              ShimaRinComment
  hi! link markdownUrl               ShimaRinLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
