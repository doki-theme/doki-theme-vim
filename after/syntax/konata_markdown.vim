if konata#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       KonataParameterBold
  hi! link htmlBoldItalic KonataParameterBoldItalic
  hi! link htmlH1         KonataConstantsBold
  hi! link htmlItalic     KonataStringColorItalic
  hi! link mkdBlockquote  KonataStringColorItalic
  hi! link mkdBold        KonataParameterBold
  hi! link mkdBoldItalic  KonataParameterBoldItalic
  hi! link mkdCode        KonataClassName
  hi! link mkdCodeEnd     KonataClassName
  hi! link mkdCodeStart   KonataClassName
  hi! link mkdHeading     KonataConstantsBold
  hi! link mkdInlineUrl   KonataLink
  hi! link mkdItalic      KonataStringColorItalic
  hi! link mkdLink        KonataKeyword
  hi! link mkdListItem    KonataKeyColor
  hi! link mkdRule        KonataComment
  hi! link mkdUrl         KonataLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        KonataKeyColor
  hi! link markdownBold              KonataParameterBold
  hi! link markdownBoldItalic        KonataParameterBoldItalic
  hi! link markdownCodeBlock         KonataClassName
  hi! link markdownCode              KonataClassName
  hi! link markdownCodeDelimiter     KonataClassName
  hi! link markdownH1                KonataConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            KonataStringColorItalic
  hi! link markdownLinkText          KonataKeyword
  hi! link markdownListMarker        KonataKeyColor
  hi! link markdownOrderedListMarker KonataKeyColor
  hi! link markdownRule              KonataComment
  hi! link markdownUrl               KonataLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
