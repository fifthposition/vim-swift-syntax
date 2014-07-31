" Swift syntax file
" Language:     Swift
" Maintainer:   Ben Klein <ben@silver-chalice.com>
" Last Change:  2014 Jul 21

" The variable b:current_syntax stores the name of the loaded syntax
" file. If that variable isn't empty, we don't need to load this file, so we
" finish.
if exists("b:current_syntax")
  finish
endif

syntax  keyword   swiftKeyword      func let println return var
syntax  keyword   swiftType         Array Bool Character Double Int String
syntax  keyword   swiftConditional  if else switch
syntax  keyword   swiftRepeat       for in while

syntax  match     swiftIdentifier   "\<\l\w*"
syntax  match     swiftConstant     "let\s\zs\w*"

syntax  region    swiftString       start=\"\ end=\"\
syntax  region    swiftExpression   start="\\(\zs" end="\ze)" containedin=swiftString

highlight link    swiftKeyword        Keyword
highlight link    swiftType           Type
highlight link    swiftConditional    Conditional
highlight link    swiftRepeat         Repeat

highlight link    swiftIdentifier     Identifier
highlight link    swiftConstant       String

highlight link    swiftString         String
highlight link    swiftExpression     Identifier

