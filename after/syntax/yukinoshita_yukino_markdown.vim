if yukinoshita_yukino#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       YukinoshitaYukinoParameterBold
  hi! link htmlBoldItalic YukinoshitaYukinoParameterBoldItalic
  hi! link htmlH1         YukinoshitaYukinoConstantsBold
  hi! link htmlItalic     YukinoshitaYukinoStringColorItalic
  hi! link mkdBlockquote  YukinoshitaYukinoStringColorItalic
  hi! link mkdBold        YukinoshitaYukinoParameterBold
  hi! link mkdBoldItalic  YukinoshitaYukinoParameterBoldItalic
  hi! link mkdCode        YukinoshitaYukinoClassName
  hi! link mkdCodeEnd     YukinoshitaYukinoClassName
  hi! link mkdCodeStart   YukinoshitaYukinoClassName
  hi! link mkdHeading     YukinoshitaYukinoConstantsBold
  hi! link mkdInlineUrl   YukinoshitaYukinoLink
  hi! link mkdItalic      YukinoshitaYukinoStringColorItalic
  hi! link mkdLink        YukinoshitaYukinoKeyword
  hi! link mkdListItem    YukinoshitaYukinoKeyColor
  hi! link mkdRule        YukinoshitaYukinoComment
  hi! link mkdUrl         YukinoshitaYukinoLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        YukinoshitaYukinoKeyColor
  hi! link markdownBold              YukinoshitaYukinoParameterBold
  hi! link markdownBoldItalic        YukinoshitaYukinoParameterBoldItalic
  hi! link markdownCodeBlock         YukinoshitaYukinoClassName
  hi! link markdownCode              YukinoshitaYukinoClassName
  hi! link markdownCodeDelimiter     YukinoshitaYukinoClassName
  hi! link markdownH1                YukinoshitaYukinoConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            YukinoshitaYukinoStringColorItalic
  hi! link markdownLinkText          YukinoshitaYukinoKeyword
  hi! link markdownListMarker        YukinoshitaYukinoKeyColor
  hi! link markdownOrderedListMarker YukinoshitaYukinoKeyColor
  hi! link markdownRule              YukinoshitaYukinoComment
  hi! link markdownUrl               YukinoshitaYukinoLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
