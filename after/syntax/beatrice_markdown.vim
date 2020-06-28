if beatrice#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       BeatriceParameterBold
  hi! link htmlBoldItalic BeatriceParameterBoldItalic
  hi! link htmlH1         BeatriceConstantsBold
  hi! link htmlItalic     BeatriceStringColorItalic
  hi! link mkdBlockquote  BeatriceStringColorItalic
  hi! link mkdBold        BeatriceParameterBold
  hi! link mkdBoldItalic  BeatriceParameterBoldItalic
  hi! link mkdCode        BeatriceClassName
  hi! link mkdCodeEnd     BeatriceClassName
  hi! link mkdCodeStart   BeatriceClassName
  hi! link mkdHeading     BeatriceConstantsBold
  hi! link mkdInlineUrl   BeatriceLink
  hi! link mkdItalic      BeatriceStringColorItalic
  hi! link mkdLink        BeatriceKeyword
  hi! link mkdListItem    BeatriceKeyColor
  hi! link mkdRule        BeatriceComment
  hi! link mkdUrl         BeatriceLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        BeatriceKeyColor
  hi! link markdownBold              BeatriceParameterBold
  hi! link markdownBoldItalic        BeatriceParameterBoldItalic
  hi! link markdownCodeBlock         BeatriceClassName
  hi! link markdownCode              BeatriceClassName
  hi! link markdownCodeDelimiter     BeatriceClassName
  hi! link markdownH1                BeatriceConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            BeatriceStringColorItalic
  hi! link markdownLinkText          BeatriceKeyword
  hi! link markdownListMarker        BeatriceKeyColor
  hi! link markdownOrderedListMarker BeatriceKeyColor
  hi! link markdownRule              BeatriceComment
  hi! link markdownUrl               BeatriceLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
