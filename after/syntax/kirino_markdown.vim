if kirino#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       KirinoParameterBold
  hi! link htmlBoldItalic KirinoParameterBoldItalic
  hi! link htmlH1         KirinoConstantsBold
  hi! link htmlItalic     KirinoStringColorItalic
  hi! link mkdBlockquote  KirinoStringColorItalic
  hi! link mkdBold        KirinoParameterBold
  hi! link mkdBoldItalic  KirinoParameterBoldItalic
  hi! link mkdCode        KirinoClassName
  hi! link mkdCodeEnd     KirinoClassName
  hi! link mkdCodeStart   KirinoClassName
  hi! link mkdHeading     KirinoConstantsBold
  hi! link mkdInlineUrl   KirinoLink
  hi! link mkdItalic      KirinoStringColorItalic
  hi! link mkdLink        KirinoKeyword
  hi! link mkdListItem    KirinoKeyColor
  hi! link mkdRule        KirinoComment
  hi! link mkdUrl         KirinoLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        KirinoKeyColor
  hi! link markdownBold              KirinoParameterBold
  hi! link markdownBoldItalic        KirinoParameterBoldItalic
  hi! link markdownCodeBlock         KirinoClassName
  hi! link markdownCode              KirinoClassName
  hi! link markdownCodeDelimiter     KirinoClassName
  hi! link markdownH1                KirinoConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            KirinoStringColorItalic
  hi! link markdownLinkText          KirinoKeyword
  hi! link markdownListMarker        KirinoKeyColor
  hi! link markdownOrderedListMarker KirinoKeyColor
  hi! link markdownRule              KirinoComment
  hi! link markdownUrl               KirinoLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
