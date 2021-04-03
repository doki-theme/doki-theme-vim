if rias_onyx#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       RiasOnyxParameterBold
  hi! link htmlBoldItalic RiasOnyxParameterBoldItalic
  hi! link htmlH1         RiasOnyxConstantsBold
  hi! link htmlItalic     RiasOnyxStringColorItalic
  hi! link mkdBlockquote  RiasOnyxStringColorItalic
  hi! link mkdBold        RiasOnyxParameterBold
  hi! link mkdBoldItalic  RiasOnyxParameterBoldItalic
  hi! link mkdCode        RiasOnyxClassName
  hi! link mkdCodeEnd     RiasOnyxClassName
  hi! link mkdCodeStart   RiasOnyxClassName
  hi! link mkdHeading     RiasOnyxConstantsBold
  hi! link mkdInlineUrl   RiasOnyxLink
  hi! link mkdItalic      RiasOnyxStringColorItalic
  hi! link mkdLink        RiasOnyxKeyword
  hi! link mkdListItem    RiasOnyxKeyColor
  hi! link mkdRule        RiasOnyxComment
  hi! link mkdUrl         RiasOnyxLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        RiasOnyxKeyColor
  hi! link markdownBold              RiasOnyxParameterBold
  hi! link markdownBoldItalic        RiasOnyxParameterBoldItalic
  hi! link markdownCodeBlock         RiasOnyxClassName
  hi! link markdownCode              RiasOnyxClassName
  hi! link markdownCodeDelimiter     RiasOnyxClassName
  hi! link markdownH1                RiasOnyxConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            RiasOnyxStringColorItalic
  hi! link markdownLinkText          RiasOnyxKeyword
  hi! link markdownListMarker        RiasOnyxKeyColor
  hi! link markdownOrderedListMarker RiasOnyxKeyColor
  hi! link markdownRule              RiasOnyxComment
  hi! link markdownUrl               RiasOnyxLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
