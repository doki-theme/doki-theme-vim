if echidna#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       EchidnaParameterBold
  hi! link htmlBoldItalic EchidnaParameterBoldItalic
  hi! link htmlH1         EchidnaConstantsBold
  hi! link htmlItalic     EchidnaStringColorItalic
  hi! link mkdBlockquote  EchidnaStringColorItalic
  hi! link mkdBold        EchidnaParameterBold
  hi! link mkdBoldItalic  EchidnaParameterBoldItalic
  hi! link mkdCode        EchidnaClassName
  hi! link mkdCodeEnd     EchidnaClassName
  hi! link mkdCodeStart   EchidnaClassName
  hi! link mkdHeading     EchidnaConstantsBold
  hi! link mkdInlineUrl   EchidnaLink
  hi! link mkdItalic      EchidnaStringColorItalic
  hi! link mkdLink        EchidnaKeyword
  hi! link mkdListItem    EchidnaKeyColor
  hi! link mkdRule        EchidnaComment
  hi! link mkdUrl         EchidnaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        EchidnaKeyColor
  hi! link markdownBold              EchidnaParameterBold
  hi! link markdownBoldItalic        EchidnaParameterBoldItalic
  hi! link markdownCodeBlock         EchidnaClassName
  hi! link markdownCode              EchidnaClassName
  hi! link markdownCodeDelimiter     EchidnaClassName
  hi! link markdownH1                EchidnaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            EchidnaStringColorItalic
  hi! link markdownLinkText          EchidnaKeyword
  hi! link markdownListMarker        EchidnaKeyColor
  hi! link markdownOrderedListMarker EchidnaKeyColor
  hi! link markdownRule              EchidnaComment
  hi! link markdownUrl               EchidnaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
