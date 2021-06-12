if hayase_nagatoro#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       HayaseNagatoroParameterBold
  hi! link htmlBoldItalic HayaseNagatoroParameterBoldItalic
  hi! link htmlH1         HayaseNagatoroConstantsBold
  hi! link htmlItalic     HayaseNagatoroStringColorItalic
  hi! link mkdBlockquote  HayaseNagatoroStringColorItalic
  hi! link mkdBold        HayaseNagatoroParameterBold
  hi! link mkdBoldItalic  HayaseNagatoroParameterBoldItalic
  hi! link mkdCode        HayaseNagatoroClassName
  hi! link mkdCodeEnd     HayaseNagatoroClassName
  hi! link mkdCodeStart   HayaseNagatoroClassName
  hi! link mkdHeading     HayaseNagatoroConstantsBold
  hi! link mkdInlineUrl   HayaseNagatoroLink
  hi! link mkdItalic      HayaseNagatoroStringColorItalic
  hi! link mkdLink        HayaseNagatoroKeyword
  hi! link mkdListItem    HayaseNagatoroKeyColor
  hi! link mkdRule        HayaseNagatoroComment
  hi! link mkdUrl         HayaseNagatoroLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        HayaseNagatoroKeyColor
  hi! link markdownBold              HayaseNagatoroParameterBold
  hi! link markdownBoldItalic        HayaseNagatoroParameterBoldItalic
  hi! link markdownCodeBlock         HayaseNagatoroClassName
  hi! link markdownCode              HayaseNagatoroClassName
  hi! link markdownCodeDelimiter     HayaseNagatoroClassName
  hi! link markdownH1                HayaseNagatoroConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            HayaseNagatoroStringColorItalic
  hi! link markdownLinkText          HayaseNagatoroKeyword
  hi! link markdownListMarker        HayaseNagatoroKeyColor
  hi! link markdownOrderedListMarker HayaseNagatoroKeyColor
  hi! link markdownRule              HayaseNagatoroComment
  hi! link markdownUrl               HayaseNagatoroLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
