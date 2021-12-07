if essex#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       EssexParameterBold
  hi! link htmlBoldItalic EssexParameterBoldItalic
  hi! link htmlH1         EssexConstantsBold
  hi! link htmlItalic     EssexStringColorItalic
  hi! link mkdBlockquote  EssexStringColorItalic
  hi! link mkdBold        EssexParameterBold
  hi! link mkdBoldItalic  EssexParameterBoldItalic
  hi! link mkdCode        EssexClassName
  hi! link mkdCodeEnd     EssexClassName
  hi! link mkdCodeStart   EssexClassName
  hi! link mkdHeading     EssexConstantsBold
  hi! link mkdInlineUrl   EssexLink
  hi! link mkdItalic      EssexStringColorItalic
  hi! link mkdLink        EssexKeyword
  hi! link mkdListItem    EssexKeyColor
  hi! link mkdRule        EssexComment
  hi! link mkdUrl         EssexLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        EssexKeyColor
  hi! link markdownBold              EssexParameterBold
  hi! link markdownBoldItalic        EssexParameterBoldItalic
  hi! link markdownCodeBlock         EssexClassName
  hi! link markdownCode              EssexClassName
  hi! link markdownCodeDelimiter     EssexClassName
  hi! link markdownH1                EssexConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            EssexStringColorItalic
  hi! link markdownLinkText          EssexKeyword
  hi! link markdownListMarker        EssexKeyColor
  hi! link markdownOrderedListMarker EssexKeyColor
  hi! link markdownRule              EssexComment
  hi! link markdownUrl               EssexLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
