if tohsaka_rin#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       TohsakaRinParameterBold
  hi! link htmlBoldItalic TohsakaRinParameterBoldItalic
  hi! link htmlH1         TohsakaRinConstantsBold
  hi! link htmlItalic     TohsakaRinStringColorItalic
  hi! link mkdBlockquote  TohsakaRinStringColorItalic
  hi! link mkdBold        TohsakaRinParameterBold
  hi! link mkdBoldItalic  TohsakaRinParameterBoldItalic
  hi! link mkdCode        TohsakaRinClassName
  hi! link mkdCodeEnd     TohsakaRinClassName
  hi! link mkdCodeStart   TohsakaRinClassName
  hi! link mkdHeading     TohsakaRinConstantsBold
  hi! link mkdInlineUrl   TohsakaRinLink
  hi! link mkdItalic      TohsakaRinStringColorItalic
  hi! link mkdLink        TohsakaRinKeyword
  hi! link mkdListItem    TohsakaRinKeyColor
  hi! link mkdRule        TohsakaRinComment
  hi! link mkdUrl         TohsakaRinLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        TohsakaRinKeyColor
  hi! link markdownBold              TohsakaRinParameterBold
  hi! link markdownBoldItalic        TohsakaRinParameterBoldItalic
  hi! link markdownCodeBlock         TohsakaRinClassName
  hi! link markdownCode              TohsakaRinClassName
  hi! link markdownCodeDelimiter     TohsakaRinClassName
  hi! link markdownH1                TohsakaRinConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            TohsakaRinStringColorItalic
  hi! link markdownLinkText          TohsakaRinKeyword
  hi! link markdownListMarker        TohsakaRinKeyColor
  hi! link markdownOrderedListMarker TohsakaRinKeyColor
  hi! link markdownRule              TohsakaRinComment
  hi! link markdownUrl               TohsakaRinLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
