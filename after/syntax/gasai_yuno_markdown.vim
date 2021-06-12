if gasai_yuno#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       GasaiYunoParameterBold
  hi! link htmlBoldItalic GasaiYunoParameterBoldItalic
  hi! link htmlH1         GasaiYunoConstantsBold
  hi! link htmlItalic     GasaiYunoStringColorItalic
  hi! link mkdBlockquote  GasaiYunoStringColorItalic
  hi! link mkdBold        GasaiYunoParameterBold
  hi! link mkdBoldItalic  GasaiYunoParameterBoldItalic
  hi! link mkdCode        GasaiYunoClassName
  hi! link mkdCodeEnd     GasaiYunoClassName
  hi! link mkdCodeStart   GasaiYunoClassName
  hi! link mkdHeading     GasaiYunoConstantsBold
  hi! link mkdInlineUrl   GasaiYunoLink
  hi! link mkdItalic      GasaiYunoStringColorItalic
  hi! link mkdLink        GasaiYunoKeyword
  hi! link mkdListItem    GasaiYunoKeyColor
  hi! link mkdRule        GasaiYunoComment
  hi! link mkdUrl         GasaiYunoLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        GasaiYunoKeyColor
  hi! link markdownBold              GasaiYunoParameterBold
  hi! link markdownBoldItalic        GasaiYunoParameterBoldItalic
  hi! link markdownCodeBlock         GasaiYunoClassName
  hi! link markdownCode              GasaiYunoClassName
  hi! link markdownCodeDelimiter     GasaiYunoClassName
  hi! link markdownH1                GasaiYunoConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            GasaiYunoStringColorItalic
  hi! link markdownLinkText          GasaiYunoKeyword
  hi! link markdownListMarker        GasaiYunoKeyColor
  hi! link markdownOrderedListMarker GasaiYunoKeyColor
  hi! link markdownRule              GasaiYunoComment
  hi! link markdownUrl               GasaiYunoLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
