if katsuragi_misato#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       KatsuragiMisatoParameterBold
  hi! link htmlBoldItalic KatsuragiMisatoParameterBoldItalic
  hi! link htmlH1         KatsuragiMisatoConstantsBold
  hi! link htmlItalic     KatsuragiMisatoStringColorItalic
  hi! link mkdBlockquote  KatsuragiMisatoStringColorItalic
  hi! link mkdBold        KatsuragiMisatoParameterBold
  hi! link mkdBoldItalic  KatsuragiMisatoParameterBoldItalic
  hi! link mkdCode        KatsuragiMisatoClassName
  hi! link mkdCodeEnd     KatsuragiMisatoClassName
  hi! link mkdCodeStart   KatsuragiMisatoClassName
  hi! link mkdHeading     KatsuragiMisatoConstantsBold
  hi! link mkdInlineUrl   KatsuragiMisatoLink
  hi! link mkdItalic      KatsuragiMisatoStringColorItalic
  hi! link mkdLink        KatsuragiMisatoKeyword
  hi! link mkdListItem    KatsuragiMisatoKeyColor
  hi! link mkdRule        KatsuragiMisatoComment
  hi! link mkdUrl         KatsuragiMisatoLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        KatsuragiMisatoKeyColor
  hi! link markdownBold              KatsuragiMisatoParameterBold
  hi! link markdownBoldItalic        KatsuragiMisatoParameterBoldItalic
  hi! link markdownCodeBlock         KatsuragiMisatoClassName
  hi! link markdownCode              KatsuragiMisatoClassName
  hi! link markdownCodeDelimiter     KatsuragiMisatoClassName
  hi! link markdownH1                KatsuragiMisatoConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            KatsuragiMisatoStringColorItalic
  hi! link markdownLinkText          KatsuragiMisatoKeyword
  hi! link markdownListMarker        KatsuragiMisatoKeyColor
  hi! link markdownOrderedListMarker KatsuragiMisatoKeyColor
  hi! link markdownRule              KatsuragiMisatoComment
  hi! link markdownUrl               KatsuragiMisatoLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
