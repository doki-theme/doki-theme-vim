if satsuki_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       SatsukiDarkParameterBold
  hi! link htmlBoldItalic SatsukiDarkParameterBoldItalic
  hi! link htmlH1         SatsukiDarkConstantsBold
  hi! link htmlItalic     SatsukiDarkStringColorItalic
  hi! link mkdBlockquote  SatsukiDarkStringColorItalic
  hi! link mkdBold        SatsukiDarkParameterBold
  hi! link mkdBoldItalic  SatsukiDarkParameterBoldItalic
  hi! link mkdCode        SatsukiDarkClassName
  hi! link mkdCodeEnd     SatsukiDarkClassName
  hi! link mkdCodeStart   SatsukiDarkClassName
  hi! link mkdHeading     SatsukiDarkConstantsBold
  hi! link mkdInlineUrl   SatsukiDarkLink
  hi! link mkdItalic      SatsukiDarkStringColorItalic
  hi! link mkdLink        SatsukiDarkKeyword
  hi! link mkdListItem    SatsukiDarkKeyColor
  hi! link mkdRule        SatsukiDarkComment
  hi! link mkdUrl         SatsukiDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        SatsukiDarkKeyColor
  hi! link markdownBold              SatsukiDarkParameterBold
  hi! link markdownBoldItalic        SatsukiDarkParameterBoldItalic
  hi! link markdownCodeBlock         SatsukiDarkClassName
  hi! link markdownCode              SatsukiDarkClassName
  hi! link markdownCodeDelimiter     SatsukiDarkClassName
  hi! link markdownH1                SatsukiDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            SatsukiDarkStringColorItalic
  hi! link markdownLinkText          SatsukiDarkKeyword
  hi! link markdownListMarker        SatsukiDarkKeyColor
  hi! link markdownOrderedListMarker SatsukiDarkKeyColor
  hi! link markdownRule              SatsukiDarkComment
  hi! link markdownUrl               SatsukiDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
