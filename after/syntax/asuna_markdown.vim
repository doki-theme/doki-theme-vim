if asuna#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       AsunaParameterBold
  hi! link htmlBoldItalic AsunaParameterBoldItalic
  hi! link htmlH1         AsunaConstantsBold
  hi! link htmlItalic     AsunaStringColorItalic
  hi! link mkdBlockquote  AsunaStringColorItalic
  hi! link mkdBold        AsunaParameterBold
  hi! link mkdBoldItalic  AsunaParameterBoldItalic
  hi! link mkdCode        AsunaClassName
  hi! link mkdCodeEnd     AsunaClassName
  hi! link mkdCodeStart   AsunaClassName
  hi! link mkdHeading     AsunaConstantsBold
  hi! link mkdInlineUrl   AsunaLink
  hi! link mkdItalic      AsunaStringColorItalic
  hi! link mkdLink        AsunaKeyword
  hi! link mkdListItem    AsunaKeyColor
  hi! link mkdRule        AsunaComment
  hi! link mkdUrl         AsunaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        AsunaKeyColor
  hi! link markdownBold              AsunaParameterBold
  hi! link markdownBoldItalic        AsunaParameterBoldItalic
  hi! link markdownCodeBlock         AsunaClassName
  hi! link markdownCode              AsunaClassName
  hi! link markdownCodeDelimiter     AsunaClassName
  hi! link markdownH1                AsunaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            AsunaStringColorItalic
  hi! link markdownLinkText          AsunaKeyword
  hi! link markdownListMarker        AsunaKeyColor
  hi! link markdownOrderedListMarker AsunaKeyColor
  hi! link markdownRule              AsunaComment
  hi! link markdownUrl               AsunaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
