if tohru#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       TohruParameterBold
  hi! link htmlBoldItalic TohruParameterBoldItalic
  hi! link htmlH1         TohruConstantsBold
  hi! link htmlItalic     TohruStringColorItalic
  hi! link mkdBlockquote  TohruStringColorItalic
  hi! link mkdBold        TohruParameterBold
  hi! link mkdBoldItalic  TohruParameterBoldItalic
  hi! link mkdCode        TohruClassName
  hi! link mkdCodeEnd     TohruClassName
  hi! link mkdCodeStart   TohruClassName
  hi! link mkdHeading     TohruConstantsBold
  hi! link mkdInlineUrl   TohruLink
  hi! link mkdItalic      TohruStringColorItalic
  hi! link mkdLink        TohruKeyword
  hi! link mkdListItem    TohruKeyColor
  hi! link mkdRule        TohruComment
  hi! link mkdUrl         TohruLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        TohruKeyColor
  hi! link markdownBold              TohruParameterBold
  hi! link markdownBoldItalic        TohruParameterBoldItalic
  hi! link markdownCodeBlock         TohruClassName
  hi! link markdownCode              TohruClassName
  hi! link markdownCodeDelimiter     TohruClassName
  hi! link markdownH1                TohruConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            TohruStringColorItalic
  hi! link markdownLinkText          TohruKeyword
  hi! link markdownListMarker        TohruKeyColor
  hi! link markdownOrderedListMarker TohruKeyColor
  hi! link markdownRule              TohruComment
  hi! link markdownUrl               TohruLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
