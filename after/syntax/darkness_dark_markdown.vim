if darkness_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       DarknessDarkParameterBold
  hi! link htmlBoldItalic DarknessDarkParameterBoldItalic
  hi! link htmlH1         DarknessDarkConstantsBold
  hi! link htmlItalic     DarknessDarkStringColorItalic
  hi! link mkdBlockquote  DarknessDarkStringColorItalic
  hi! link mkdBold        DarknessDarkParameterBold
  hi! link mkdBoldItalic  DarknessDarkParameterBoldItalic
  hi! link mkdCode        DarknessDarkClassName
  hi! link mkdCodeEnd     DarknessDarkClassName
  hi! link mkdCodeStart   DarknessDarkClassName
  hi! link mkdHeading     DarknessDarkConstantsBold
  hi! link mkdInlineUrl   DarknessDarkLink
  hi! link mkdItalic      DarknessDarkStringColorItalic
  hi! link mkdLink        DarknessDarkKeyword
  hi! link mkdListItem    DarknessDarkKeyColor
  hi! link mkdRule        DarknessDarkComment
  hi! link mkdUrl         DarknessDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        DarknessDarkKeyColor
  hi! link markdownBold              DarknessDarkParameterBold
  hi! link markdownBoldItalic        DarknessDarkParameterBoldItalic
  hi! link markdownCodeBlock         DarknessDarkClassName
  hi! link markdownCode              DarknessDarkClassName
  hi! link markdownCodeDelimiter     DarknessDarkClassName
  hi! link markdownH1                DarknessDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            DarknessDarkStringColorItalic
  hi! link markdownLinkText          DarknessDarkKeyword
  hi! link markdownListMarker        DarknessDarkKeyColor
  hi! link markdownOrderedListMarker DarknessDarkKeyColor
  hi! link markdownRule              DarknessDarkComment
  hi! link markdownUrl               DarknessDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
