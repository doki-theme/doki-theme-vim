if hatsune_miku#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       HatsuneMikuParameterBold
  hi! link htmlBoldItalic HatsuneMikuParameterBoldItalic
  hi! link htmlH1         HatsuneMikuConstantsBold
  hi! link htmlItalic     HatsuneMikuStringColorItalic
  hi! link mkdBlockquote  HatsuneMikuStringColorItalic
  hi! link mkdBold        HatsuneMikuParameterBold
  hi! link mkdBoldItalic  HatsuneMikuParameterBoldItalic
  hi! link mkdCode        HatsuneMikuClassName
  hi! link mkdCodeEnd     HatsuneMikuClassName
  hi! link mkdCodeStart   HatsuneMikuClassName
  hi! link mkdHeading     HatsuneMikuConstantsBold
  hi! link mkdInlineUrl   HatsuneMikuLink
  hi! link mkdItalic      HatsuneMikuStringColorItalic
  hi! link mkdLink        HatsuneMikuKeyword
  hi! link mkdListItem    HatsuneMikuKeyColor
  hi! link mkdRule        HatsuneMikuComment
  hi! link mkdUrl         HatsuneMikuLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        HatsuneMikuKeyColor
  hi! link markdownBold              HatsuneMikuParameterBold
  hi! link markdownBoldItalic        HatsuneMikuParameterBoldItalic
  hi! link markdownCodeBlock         HatsuneMikuClassName
  hi! link markdownCode              HatsuneMikuClassName
  hi! link markdownCodeDelimiter     HatsuneMikuClassName
  hi! link markdownH1                HatsuneMikuConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            HatsuneMikuStringColorItalic
  hi! link markdownLinkText          HatsuneMikuKeyword
  hi! link markdownListMarker        HatsuneMikuKeyColor
  hi! link markdownOrderedListMarker HatsuneMikuKeyColor
  hi! link markdownRule              HatsuneMikuComment
  hi! link markdownUrl               HatsuneMikuLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
