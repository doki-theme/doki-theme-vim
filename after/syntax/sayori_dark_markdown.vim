if sayori_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       SayoriDarkParameterBold
  hi! link htmlBoldItalic SayoriDarkParameterBoldItalic
  hi! link htmlH1         SayoriDarkConstantsBold
  hi! link htmlItalic     SayoriDarkStringColorItalic
  hi! link mkdBlockquote  SayoriDarkStringColorItalic
  hi! link mkdBold        SayoriDarkParameterBold
  hi! link mkdBoldItalic  SayoriDarkParameterBoldItalic
  hi! link mkdCode        SayoriDarkClassName
  hi! link mkdCodeEnd     SayoriDarkClassName
  hi! link mkdCodeStart   SayoriDarkClassName
  hi! link mkdHeading     SayoriDarkConstantsBold
  hi! link mkdInlineUrl   SayoriDarkLink
  hi! link mkdItalic      SayoriDarkStringColorItalic
  hi! link mkdLink        SayoriDarkKeyword
  hi! link mkdListItem    SayoriDarkKeyColor
  hi! link mkdRule        SayoriDarkComment
  hi! link mkdUrl         SayoriDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        SayoriDarkKeyColor
  hi! link markdownBold              SayoriDarkParameterBold
  hi! link markdownBoldItalic        SayoriDarkParameterBoldItalic
  hi! link markdownCodeBlock         SayoriDarkClassName
  hi! link markdownCode              SayoriDarkClassName
  hi! link markdownCodeDelimiter     SayoriDarkClassName
  hi! link markdownH1                SayoriDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            SayoriDarkStringColorItalic
  hi! link markdownLinkText          SayoriDarkKeyword
  hi! link markdownListMarker        SayoriDarkKeyColor
  hi! link markdownOrderedListMarker SayoriDarkKeyColor
  hi! link markdownRule              SayoriDarkComment
  hi! link markdownUrl               SayoriDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
