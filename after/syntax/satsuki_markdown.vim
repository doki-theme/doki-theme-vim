if satsuki#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       SatsukiParameterBold
  hi! link htmlBoldItalic SatsukiParameterBoldItalic
  hi! link htmlH1         SatsukiConstantsBold
  hi! link htmlItalic     SatsukiStringColorItalic
  hi! link mkdBlockquote  SatsukiStringColorItalic
  hi! link mkdBold        SatsukiParameterBold
  hi! link mkdBoldItalic  SatsukiParameterBoldItalic
  hi! link mkdCode        SatsukiClassName
  hi! link mkdCodeEnd     SatsukiClassName
  hi! link mkdCodeStart   SatsukiClassName
  hi! link mkdHeading     SatsukiConstantsBold
  hi! link mkdInlineUrl   SatsukiLink
  hi! link mkdItalic      SatsukiStringColorItalic
  hi! link mkdLink        SatsukiKeyword
  hi! link mkdListItem    SatsukiKeyColor
  hi! link mkdRule        SatsukiComment
  hi! link mkdUrl         SatsukiLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        SatsukiKeyColor
  hi! link markdownBold              SatsukiParameterBold
  hi! link markdownBoldItalic        SatsukiParameterBoldItalic
  hi! link markdownCodeBlock         SatsukiClassName
  hi! link markdownCode              SatsukiClassName
  hi! link markdownCodeDelimiter     SatsukiClassName
  hi! link markdownH1                SatsukiConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            SatsukiStringColorItalic
  hi! link markdownLinkText          SatsukiKeyword
  hi! link markdownListMarker        SatsukiKeyColor
  hi! link markdownOrderedListMarker SatsukiKeyColor
  hi! link markdownRule              SatsukiComment
  hi! link markdownUrl               SatsukiLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
