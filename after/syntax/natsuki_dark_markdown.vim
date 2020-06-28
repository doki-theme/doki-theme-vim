if natsuki_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       NatsukiDarkParameterBold
  hi! link htmlBoldItalic NatsukiDarkParameterBoldItalic
  hi! link htmlH1         NatsukiDarkConstantsBold
  hi! link htmlItalic     NatsukiDarkStringColorItalic
  hi! link mkdBlockquote  NatsukiDarkStringColorItalic
  hi! link mkdBold        NatsukiDarkParameterBold
  hi! link mkdBoldItalic  NatsukiDarkParameterBoldItalic
  hi! link mkdCode        NatsukiDarkClassName
  hi! link mkdCodeEnd     NatsukiDarkClassName
  hi! link mkdCodeStart   NatsukiDarkClassName
  hi! link mkdHeading     NatsukiDarkConstantsBold
  hi! link mkdInlineUrl   NatsukiDarkLink
  hi! link mkdItalic      NatsukiDarkStringColorItalic
  hi! link mkdLink        NatsukiDarkKeyword
  hi! link mkdListItem    NatsukiDarkKeyColor
  hi! link mkdRule        NatsukiDarkComment
  hi! link mkdUrl         NatsukiDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        NatsukiDarkKeyColor
  hi! link markdownBold              NatsukiDarkParameterBold
  hi! link markdownBoldItalic        NatsukiDarkParameterBoldItalic
  hi! link markdownCodeBlock         NatsukiDarkClassName
  hi! link markdownCode              NatsukiDarkClassName
  hi! link markdownCodeDelimiter     NatsukiDarkClassName
  hi! link markdownH1                NatsukiDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            NatsukiDarkStringColorItalic
  hi! link markdownLinkText          NatsukiDarkKeyword
  hi! link markdownListMarker        NatsukiDarkKeyColor
  hi! link markdownOrderedListMarker NatsukiDarkKeyColor
  hi! link markdownRule              NatsukiDarkComment
  hi! link markdownUrl               NatsukiDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
