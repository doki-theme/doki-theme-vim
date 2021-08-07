if azuki#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       AzukiParameterBold
  hi! link htmlBoldItalic AzukiParameterBoldItalic
  hi! link htmlH1         AzukiConstantsBold
  hi! link htmlItalic     AzukiStringColorItalic
  hi! link mkdBlockquote  AzukiStringColorItalic
  hi! link mkdBold        AzukiParameterBold
  hi! link mkdBoldItalic  AzukiParameterBoldItalic
  hi! link mkdCode        AzukiClassName
  hi! link mkdCodeEnd     AzukiClassName
  hi! link mkdCodeStart   AzukiClassName
  hi! link mkdHeading     AzukiConstantsBold
  hi! link mkdInlineUrl   AzukiLink
  hi! link mkdItalic      AzukiStringColorItalic
  hi! link mkdLink        AzukiKeyword
  hi! link mkdListItem    AzukiKeyColor
  hi! link mkdRule        AzukiComment
  hi! link mkdUrl         AzukiLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        AzukiKeyColor
  hi! link markdownBold              AzukiParameterBold
  hi! link markdownBoldItalic        AzukiParameterBoldItalic
  hi! link markdownCodeBlock         AzukiClassName
  hi! link markdownCode              AzukiClassName
  hi! link markdownCodeDelimiter     AzukiClassName
  hi! link markdownH1                AzukiConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            AzukiStringColorItalic
  hi! link markdownLinkText          AzukiKeyword
  hi! link markdownListMarker        AzukiKeyColor
  hi! link markdownOrderedListMarker AzukiKeyColor
  hi! link markdownRule              AzukiComment
  hi! link markdownUrl               AzukiLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
