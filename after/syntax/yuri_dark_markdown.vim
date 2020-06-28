if yuri_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       YuriDarkParameterBold
  hi! link htmlBoldItalic YuriDarkParameterBoldItalic
  hi! link htmlH1         YuriDarkConstantsBold
  hi! link htmlItalic     YuriDarkStringColorItalic
  hi! link mkdBlockquote  YuriDarkStringColorItalic
  hi! link mkdBold        YuriDarkParameterBold
  hi! link mkdBoldItalic  YuriDarkParameterBoldItalic
  hi! link mkdCode        YuriDarkClassName
  hi! link mkdCodeEnd     YuriDarkClassName
  hi! link mkdCodeStart   YuriDarkClassName
  hi! link mkdHeading     YuriDarkConstantsBold
  hi! link mkdInlineUrl   YuriDarkLink
  hi! link mkdItalic      YuriDarkStringColorItalic
  hi! link mkdLink        YuriDarkKeyword
  hi! link mkdListItem    YuriDarkKeyColor
  hi! link mkdRule        YuriDarkComment
  hi! link mkdUrl         YuriDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        YuriDarkKeyColor
  hi! link markdownBold              YuriDarkParameterBold
  hi! link markdownBoldItalic        YuriDarkParameterBoldItalic
  hi! link markdownCodeBlock         YuriDarkClassName
  hi! link markdownCode              YuriDarkClassName
  hi! link markdownCodeDelimiter     YuriDarkClassName
  hi! link markdownH1                YuriDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            YuriDarkStringColorItalic
  hi! link markdownLinkText          YuriDarkKeyword
  hi! link markdownListMarker        YuriDarkKeyColor
  hi! link markdownOrderedListMarker YuriDarkKeyColor
  hi! link markdownRule              YuriDarkComment
  hi! link markdownUrl               YuriDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
