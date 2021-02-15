if zero_two_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       ZeroTwoLightParameterBold
  hi! link htmlBoldItalic ZeroTwoLightParameterBoldItalic
  hi! link htmlH1         ZeroTwoLightConstantsBold
  hi! link htmlItalic     ZeroTwoLightStringColorItalic
  hi! link mkdBlockquote  ZeroTwoLightStringColorItalic
  hi! link mkdBold        ZeroTwoLightParameterBold
  hi! link mkdBoldItalic  ZeroTwoLightParameterBoldItalic
  hi! link mkdCode        ZeroTwoLightClassName
  hi! link mkdCodeEnd     ZeroTwoLightClassName
  hi! link mkdCodeStart   ZeroTwoLightClassName
  hi! link mkdHeading     ZeroTwoLightConstantsBold
  hi! link mkdInlineUrl   ZeroTwoLightLink
  hi! link mkdItalic      ZeroTwoLightStringColorItalic
  hi! link mkdLink        ZeroTwoLightKeyword
  hi! link mkdListItem    ZeroTwoLightKeyColor
  hi! link mkdRule        ZeroTwoLightComment
  hi! link mkdUrl         ZeroTwoLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        ZeroTwoLightKeyColor
  hi! link markdownBold              ZeroTwoLightParameterBold
  hi! link markdownBoldItalic        ZeroTwoLightParameterBoldItalic
  hi! link markdownCodeBlock         ZeroTwoLightClassName
  hi! link markdownCode              ZeroTwoLightClassName
  hi! link markdownCodeDelimiter     ZeroTwoLightClassName
  hi! link markdownH1                ZeroTwoLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            ZeroTwoLightStringColorItalic
  hi! link markdownLinkText          ZeroTwoLightKeyword
  hi! link markdownListMarker        ZeroTwoLightKeyColor
  hi! link markdownOrderedListMarker ZeroTwoLightKeyColor
  hi! link markdownRule              ZeroTwoLightComment
  hi! link markdownUrl               ZeroTwoLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
