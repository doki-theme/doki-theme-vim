if megumin#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MeguminParameterBold
  hi! link htmlBoldItalic MeguminParameterBoldItalic
  hi! link htmlH1         MeguminConstantsBold
  hi! link htmlItalic     MeguminStringColorItalic
  hi! link mkdBlockquote  MeguminStringColorItalic
  hi! link mkdBold        MeguminParameterBold
  hi! link mkdBoldItalic  MeguminParameterBoldItalic
  hi! link mkdCode        MeguminClassName
  hi! link mkdCodeEnd     MeguminClassName
  hi! link mkdCodeStart   MeguminClassName
  hi! link mkdHeading     MeguminConstantsBold
  hi! link mkdInlineUrl   MeguminLink
  hi! link mkdItalic      MeguminStringColorItalic
  hi! link mkdLink        MeguminKeyword
  hi! link mkdListItem    MeguminKeyColor
  hi! link mkdRule        MeguminComment
  hi! link mkdUrl         MeguminLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MeguminKeyColor
  hi! link markdownBold              MeguminParameterBold
  hi! link markdownBoldItalic        MeguminParameterBoldItalic
  hi! link markdownCodeBlock         MeguminClassName
  hi! link markdownCode              MeguminClassName
  hi! link markdownCodeDelimiter     MeguminClassName
  hi! link markdownH1                MeguminConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MeguminStringColorItalic
  hi! link markdownLinkText          MeguminKeyword
  hi! link markdownListMarker        MeguminKeyColor
  hi! link markdownOrderedListMarker MeguminKeyColor
  hi! link markdownRule              MeguminComment
  hi! link markdownUrl               MeguminLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
