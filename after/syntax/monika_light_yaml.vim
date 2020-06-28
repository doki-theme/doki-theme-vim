if monika_light#should_abort('yaml')
    finish
endif

hi! link yamlAlias           MonikaLightClassNameItalicUnderline
hi! link yamlAnchor          MonikaLightKeywordItalic
hi! link yamlBlockMappingKey MonikaLightKeyColor
hi! link yamlFlowCollection  MonikaLightKeyword
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         MonikaLightKeyword
hi! link yamlPlainScalar     MonikaLightStringColor

