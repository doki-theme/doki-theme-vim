if ryuko_light#should_abort('plantuml')
    finish
endif

hi! link plantumlClassPrivate              SpecialKey
hi! link plantumlClassProtected            RyukoLightParameter
hi! link plantumlClassPublic               Function
hi! link plantumlColonLine                 String
hi! link plantumlDirectedOrVerticalArrowLR Constant
hi! link plantumlDirectedOrVerticalArrowRL Constant
hi! link plantumlHorizontalArrow           Constant
hi! link plantumlSkinParamKeyword          RyukoLightKeyColor
hi! link plantumlTypeKeyword               Keyword
