if ryuko#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       RyukoParameterBold
  hi! link htmlBoldItalic RyukoParameterBoldItalic
  hi! link htmlH1         RyukoConstantsBold
  hi! link htmlItalic     RyukoStringColorItalic
  hi! link mkdBlockquote  RyukoStringColorItalic
  hi! link mkdBold        RyukoParameterBold
  hi! link mkdBoldItalic  RyukoParameterBoldItalic
  hi! link mkdCode        RyukoClassName
  hi! link mkdCodeEnd     RyukoClassName
  hi! link mkdCodeStart   RyukoClassName
  hi! link mkdHeading     RyukoConstantsBold
  hi! link mkdInlineUrl   RyukoLink
  hi! link mkdItalic      RyukoStringColorItalic
  hi! link mkdLink        RyukoKeyword
  hi! link mkdListItem    RyukoKeyColor
  hi! link mkdRule        RyukoComment
  hi! link mkdUrl         RyukoLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        RyukoKeyColor
  hi! link markdownBold              RyukoParameterBold
  hi! link markdownBoldItalic        RyukoParameterBoldItalic
  hi! link markdownCodeBlock         RyukoClassName
  hi! link markdownCode              RyukoClassName
  hi! link markdownCodeDelimiter     RyukoClassName
  hi! link markdownH1                RyukoConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            RyukoStringColorItalic
  hi! link markdownLinkText          RyukoKeyword
  hi! link markdownListMarker        RyukoKeyColor
  hi! link markdownOrderedListMarker RyukoKeyColor
  hi! link markdownRule              RyukoComment
  hi! link markdownUrl               RyukoLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
