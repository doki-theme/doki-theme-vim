if rory_mercury#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       RoryMercuryParameterBold
  hi! link htmlBoldItalic RoryMercuryParameterBoldItalic
  hi! link htmlH1         RoryMercuryConstantsBold
  hi! link htmlItalic     RoryMercuryStringColorItalic
  hi! link mkdBlockquote  RoryMercuryStringColorItalic
  hi! link mkdBold        RoryMercuryParameterBold
  hi! link mkdBoldItalic  RoryMercuryParameterBoldItalic
  hi! link mkdCode        RoryMercuryClassName
  hi! link mkdCodeEnd     RoryMercuryClassName
  hi! link mkdCodeStart   RoryMercuryClassName
  hi! link mkdHeading     RoryMercuryConstantsBold
  hi! link mkdInlineUrl   RoryMercuryLink
  hi! link mkdItalic      RoryMercuryStringColorItalic
  hi! link mkdLink        RoryMercuryKeyword
  hi! link mkdListItem    RoryMercuryKeyColor
  hi! link mkdRule        RoryMercuryComment
  hi! link mkdUrl         RoryMercuryLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        RoryMercuryKeyColor
  hi! link markdownBold              RoryMercuryParameterBold
  hi! link markdownBoldItalic        RoryMercuryParameterBoldItalic
  hi! link markdownCodeBlock         RoryMercuryClassName
  hi! link markdownCode              RoryMercuryClassName
  hi! link markdownCodeDelimiter     RoryMercuryClassName
  hi! link markdownH1                RoryMercuryConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            RoryMercuryStringColorItalic
  hi! link markdownLinkText          RoryMercuryKeyword
  hi! link markdownListMarker        RoryMercuryKeyColor
  hi! link markdownOrderedListMarker RoryMercuryKeyColor
  hi! link markdownRule              RoryMercuryComment
  hi! link markdownUrl               RoryMercuryLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
