if maple_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MapleDarkParameterBold
  hi! link htmlBoldItalic MapleDarkParameterBoldItalic
  hi! link htmlH1         MapleDarkConstantsBold
  hi! link htmlItalic     MapleDarkStringColorItalic
  hi! link mkdBlockquote  MapleDarkStringColorItalic
  hi! link mkdBold        MapleDarkParameterBold
  hi! link mkdBoldItalic  MapleDarkParameterBoldItalic
  hi! link mkdCode        MapleDarkClassName
  hi! link mkdCodeEnd     MapleDarkClassName
  hi! link mkdCodeStart   MapleDarkClassName
  hi! link mkdHeading     MapleDarkConstantsBold
  hi! link mkdInlineUrl   MapleDarkLink
  hi! link mkdItalic      MapleDarkStringColorItalic
  hi! link mkdLink        MapleDarkKeyword
  hi! link mkdListItem    MapleDarkKeyColor
  hi! link mkdRule        MapleDarkComment
  hi! link mkdUrl         MapleDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MapleDarkKeyColor
  hi! link markdownBold              MapleDarkParameterBold
  hi! link markdownBoldItalic        MapleDarkParameterBoldItalic
  hi! link markdownCodeBlock         MapleDarkClassName
  hi! link markdownCode              MapleDarkClassName
  hi! link markdownCodeDelimiter     MapleDarkClassName
  hi! link markdownH1                MapleDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MapleDarkStringColorItalic
  hi! link markdownLinkText          MapleDarkKeyword
  hi! link markdownListMarker        MapleDarkKeyColor
  hi! link markdownOrderedListMarker MapleDarkKeyColor
  hi! link markdownRule              MapleDarkComment
  hi! link markdownUrl               MapleDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
