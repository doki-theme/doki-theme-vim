if {{themeName}}#should_abort('perl')
    finish
endif

" Regex
hi! link perlMatchStartEnd       {{themeProperName}}Red

" Builtin functions
hi! link perlOperator            {{themeProperName}}KeyColor
hi! link perlStatementFiledesc   {{themeProperName}}KeyColor
hi! link perlStatementFiles      {{themeProperName}}KeyColor
hi! link perlStatementFlow       {{themeProperName}}KeyColor
hi! link perlStatementHash       {{themeProperName}}KeyColor
hi! link perlStatementIOfunc     {{themeProperName}}KeyColor
hi! link perlStatementIPC        {{themeProperName}}KeyColor
hi! link perlStatementList       {{themeProperName}}KeyColor
hi! link perlStatementMisc       {{themeProperName}}KeyColor
hi! link perlStatementNetwork    {{themeProperName}}KeyColor
hi! link perlStatementNumeric    {{themeProperName}}KeyColor
hi! link perlStatementProc       {{themeProperName}}KeyColor
hi! link perlStatementPword      {{themeProperName}}KeyColor
hi! link perlStatementRegexp     {{themeProperName}}KeyColor
hi! link perlStatementScalar     {{themeProperName}}KeyColor
hi! link perlStatementSocket     {{themeProperName}}KeyColor
hi! link perlStatementTime       {{themeProperName}}KeyColor
hi! link perlStatementVector     {{themeProperName}}KeyColor

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! link perlStringStartEnd {{themeProperName}}Red
endif

" Signatures
hi! link perlSignature           {{themeProperName}}ParameterItalic
hi! link perlSubPrototype        {{themeProperName}}ParameterItalic

" Hash keys
hi! link perlVarSimpleMemberName {{themeProperName}}Constants
