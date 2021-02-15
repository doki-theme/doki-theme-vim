if zero_two_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       ZeroTwoDarkParameterBold
  hi! link htmlBoldItalic ZeroTwoDarkParameterBoldItalic
  hi! link htmlH1         ZeroTwoDarkConstantsBold
  hi! link htmlItalic     ZeroTwoDarkStringColorItalic
  hi! link mkdBlockquote  ZeroTwoDarkStringColorItalic
  hi! link mkdBold        ZeroTwoDarkParameterBold
  hi! link mkdBoldItalic  ZeroTwoDarkParameterBoldItalic
  hi! link mkdCode        ZeroTwoDarkClassName
  hi! link mkdCodeEnd     ZeroTwoDarkClassName
  hi! link mkdCodeStart   ZeroTwoDarkClassName
  hi! link mkdHeading     ZeroTwoDarkConstantsBold
  hi! link mkdInlineUrl   ZeroTwoDarkLink
  hi! link mkdItalic      ZeroTwoDarkStringColorItalic
  hi! link mkdLink        ZeroTwoDarkKeyword
  hi! link mkdListItem    ZeroTwoDarkKeyColor
  hi! link mkdRule        ZeroTwoDarkComment
  hi! link mkdUrl         ZeroTwoDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        ZeroTwoDarkKeyColor
  hi! link markdownBold              ZeroTwoDarkParameterBold
  hi! link markdownBoldItalic        ZeroTwoDarkParameterBoldItalic
  hi! link markdownCodeBlock         ZeroTwoDarkClassName
  hi! link markdownCode              ZeroTwoDarkClassName
  hi! link markdownCodeDelimiter     ZeroTwoDarkClassName
  hi! link markdownH1                ZeroTwoDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            ZeroTwoDarkStringColorItalic
  hi! link markdownLinkText          ZeroTwoDarkKeyword
  hi! link markdownListMarker        ZeroTwoDarkKeyColor
  hi! link markdownOrderedListMarker ZeroTwoDarkKeyColor
  hi! link markdownRule              ZeroTwoDarkComment
  hi! link markdownUrl               ZeroTwoDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
