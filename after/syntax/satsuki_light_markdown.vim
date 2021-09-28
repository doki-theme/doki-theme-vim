if satsuki_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       SatsukiLightParameterBold
  hi! link htmlBoldItalic SatsukiLightParameterBoldItalic
  hi! link htmlH1         SatsukiLightConstantsBold
  hi! link htmlItalic     SatsukiLightStringColorItalic
  hi! link mkdBlockquote  SatsukiLightStringColorItalic
  hi! link mkdBold        SatsukiLightParameterBold
  hi! link mkdBoldItalic  SatsukiLightParameterBoldItalic
  hi! link mkdCode        SatsukiLightClassName
  hi! link mkdCodeEnd     SatsukiLightClassName
  hi! link mkdCodeStart   SatsukiLightClassName
  hi! link mkdHeading     SatsukiLightConstantsBold
  hi! link mkdInlineUrl   SatsukiLightLink
  hi! link mkdItalic      SatsukiLightStringColorItalic
  hi! link mkdLink        SatsukiLightKeyword
  hi! link mkdListItem    SatsukiLightKeyColor
  hi! link mkdRule        SatsukiLightComment
  hi! link mkdUrl         SatsukiLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        SatsukiLightKeyColor
  hi! link markdownBold              SatsukiLightParameterBold
  hi! link markdownBoldItalic        SatsukiLightParameterBoldItalic
  hi! link markdownCodeBlock         SatsukiLightClassName
  hi! link markdownCode              SatsukiLightClassName
  hi! link markdownCodeDelimiter     SatsukiLightClassName
  hi! link markdownH1                SatsukiLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            SatsukiLightStringColorItalic
  hi! link markdownLinkText          SatsukiLightKeyword
  hi! link markdownListMarker        SatsukiLightKeyColor
  hi! link markdownOrderedListMarker SatsukiLightKeyColor
  hi! link markdownRule              SatsukiLightComment
  hi! link markdownUrl               SatsukiLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
