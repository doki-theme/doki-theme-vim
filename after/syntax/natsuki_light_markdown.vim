if natsuki_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       NatsukiLightParameterBold
  hi! link htmlBoldItalic NatsukiLightParameterBoldItalic
  hi! link htmlH1         NatsukiLightConstantsBold
  hi! link htmlItalic     NatsukiLightStringColorItalic
  hi! link mkdBlockquote  NatsukiLightStringColorItalic
  hi! link mkdBold        NatsukiLightParameterBold
  hi! link mkdBoldItalic  NatsukiLightParameterBoldItalic
  hi! link mkdCode        NatsukiLightClassName
  hi! link mkdCodeEnd     NatsukiLightClassName
  hi! link mkdCodeStart   NatsukiLightClassName
  hi! link mkdHeading     NatsukiLightConstantsBold
  hi! link mkdInlineUrl   NatsukiLightLink
  hi! link mkdItalic      NatsukiLightStringColorItalic
  hi! link mkdLink        NatsukiLightKeyword
  hi! link mkdListItem    NatsukiLightKeyColor
  hi! link mkdRule        NatsukiLightComment
  hi! link mkdUrl         NatsukiLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        NatsukiLightKeyColor
  hi! link markdownBold              NatsukiLightParameterBold
  hi! link markdownBoldItalic        NatsukiLightParameterBoldItalic
  hi! link markdownCodeBlock         NatsukiLightClassName
  hi! link markdownCode              NatsukiLightClassName
  hi! link markdownCodeDelimiter     NatsukiLightClassName
  hi! link markdownH1                NatsukiLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            NatsukiLightStringColorItalic
  hi! link markdownLinkText          NatsukiLightKeyword
  hi! link markdownListMarker        NatsukiLightKeyColor
  hi! link markdownOrderedListMarker NatsukiLightKeyColor
  hi! link markdownRule              NatsukiLightComment
  hi! link markdownUrl               NatsukiLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
