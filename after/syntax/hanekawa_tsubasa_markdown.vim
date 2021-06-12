if hanekawa_tsubasa#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       HanekawaTsubasaParameterBold
  hi! link htmlBoldItalic HanekawaTsubasaParameterBoldItalic
  hi! link htmlH1         HanekawaTsubasaConstantsBold
  hi! link htmlItalic     HanekawaTsubasaStringColorItalic
  hi! link mkdBlockquote  HanekawaTsubasaStringColorItalic
  hi! link mkdBold        HanekawaTsubasaParameterBold
  hi! link mkdBoldItalic  HanekawaTsubasaParameterBoldItalic
  hi! link mkdCode        HanekawaTsubasaClassName
  hi! link mkdCodeEnd     HanekawaTsubasaClassName
  hi! link mkdCodeStart   HanekawaTsubasaClassName
  hi! link mkdHeading     HanekawaTsubasaConstantsBold
  hi! link mkdInlineUrl   HanekawaTsubasaLink
  hi! link mkdItalic      HanekawaTsubasaStringColorItalic
  hi! link mkdLink        HanekawaTsubasaKeyword
  hi! link mkdListItem    HanekawaTsubasaKeyColor
  hi! link mkdRule        HanekawaTsubasaComment
  hi! link mkdUrl         HanekawaTsubasaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        HanekawaTsubasaKeyColor
  hi! link markdownBold              HanekawaTsubasaParameterBold
  hi! link markdownBoldItalic        HanekawaTsubasaParameterBoldItalic
  hi! link markdownCodeBlock         HanekawaTsubasaClassName
  hi! link markdownCode              HanekawaTsubasaClassName
  hi! link markdownCodeDelimiter     HanekawaTsubasaClassName
  hi! link markdownH1                HanekawaTsubasaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            HanekawaTsubasaStringColorItalic
  hi! link markdownLinkText          HanekawaTsubasaKeyword
  hi! link markdownListMarker        HanekawaTsubasaKeyColor
  hi! link markdownOrderedListMarker HanekawaTsubasaKeyColor
  hi! link markdownRule              HanekawaTsubasaComment
  hi! link markdownUrl               HanekawaTsubasaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
