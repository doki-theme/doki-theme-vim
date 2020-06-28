if yuri_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       YuriLightParameterBold
  hi! link htmlBoldItalic YuriLightParameterBoldItalic
  hi! link htmlH1         YuriLightConstantsBold
  hi! link htmlItalic     YuriLightStringColorItalic
  hi! link mkdBlockquote  YuriLightStringColorItalic
  hi! link mkdBold        YuriLightParameterBold
  hi! link mkdBoldItalic  YuriLightParameterBoldItalic
  hi! link mkdCode        YuriLightClassName
  hi! link mkdCodeEnd     YuriLightClassName
  hi! link mkdCodeStart   YuriLightClassName
  hi! link mkdHeading     YuriLightConstantsBold
  hi! link mkdInlineUrl   YuriLightLink
  hi! link mkdItalic      YuriLightStringColorItalic
  hi! link mkdLink        YuriLightKeyword
  hi! link mkdListItem    YuriLightKeyColor
  hi! link mkdRule        YuriLightComment
  hi! link mkdUrl         YuriLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        YuriLightKeyColor
  hi! link markdownBold              YuriLightParameterBold
  hi! link markdownBoldItalic        YuriLightParameterBoldItalic
  hi! link markdownCodeBlock         YuriLightClassName
  hi! link markdownCode              YuriLightClassName
  hi! link markdownCodeDelimiter     YuriLightClassName
  hi! link markdownH1                YuriLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            YuriLightStringColorItalic
  hi! link markdownLinkText          YuriLightKeyword
  hi! link markdownListMarker        YuriLightKeyColor
  hi! link markdownOrderedListMarker YuriLightKeyColor
  hi! link markdownRule              YuriLightComment
  hi! link markdownUrl               YuriLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
