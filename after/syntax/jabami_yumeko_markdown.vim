if jabami_yumeko#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       JabamiYumekoParameterBold
  hi! link htmlBoldItalic JabamiYumekoParameterBoldItalic
  hi! link htmlH1         JabamiYumekoConstantsBold
  hi! link htmlItalic     JabamiYumekoStringColorItalic
  hi! link mkdBlockquote  JabamiYumekoStringColorItalic
  hi! link mkdBold        JabamiYumekoParameterBold
  hi! link mkdBoldItalic  JabamiYumekoParameterBoldItalic
  hi! link mkdCode        JabamiYumekoClassName
  hi! link mkdCodeEnd     JabamiYumekoClassName
  hi! link mkdCodeStart   JabamiYumekoClassName
  hi! link mkdHeading     JabamiYumekoConstantsBold
  hi! link mkdInlineUrl   JabamiYumekoLink
  hi! link mkdItalic      JabamiYumekoStringColorItalic
  hi! link mkdLink        JabamiYumekoKeyword
  hi! link mkdListItem    JabamiYumekoKeyColor
  hi! link mkdRule        JabamiYumekoComment
  hi! link mkdUrl         JabamiYumekoLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        JabamiYumekoKeyColor
  hi! link markdownBold              JabamiYumekoParameterBold
  hi! link markdownBoldItalic        JabamiYumekoParameterBoldItalic
  hi! link markdownCodeBlock         JabamiYumekoClassName
  hi! link markdownCode              JabamiYumekoClassName
  hi! link markdownCodeDelimiter     JabamiYumekoClassName
  hi! link markdownH1                JabamiYumekoConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            JabamiYumekoStringColorItalic
  hi! link markdownLinkText          JabamiYumekoKeyword
  hi! link markdownListMarker        JabamiYumekoKeyColor
  hi! link markdownOrderedListMarker JabamiYumekoKeyColor
  hi! link markdownRule              JabamiYumekoComment
  hi! link markdownUrl               JabamiYumekoLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
