" Liquid Types

syn region  hsLiquidAnnot   start="{-@\s*" end="@-}" contains=hsLiquidKeyword,hsLiquidReftA,hsLiquidReftB,hsLiquidReftC
syn region  hsLiquidAnnot   start="{-@\s*\<invariant\>" end="@-}" contains=hsLiquidKeyword,hsLiquidReftA,hsLiquidReftB,hsLiquidReftC
syn region  hsLiquidAnnot   start="{-@\s*\<predicate\>" end="@-}" contains=hsLiquidKeyword,hsLiquidReftA,hsLiquidReftB,hsLiquidReftC
syn region  hsLiquidAnnot   start="{-@\s*\<assert\>" end="@-}" contains=hsLiquidKeyword,hsLiquidReftA,hsLiquidReftB,hsLiquidReftC
syn region  hsLiquidAnnot   start="{-@\s*\<type\>" end="@-}" contains=hsLiquidKeyword,hsLiquidReftA,hsLiquidReftB,hsLiquidReftC
syn region  hsLiquidAnnot   start="{-@\s*\<data\>" end="@-}" contains=hsLiquidKeyword,hsLiquidReftA,hsLiquidReftB,hsLiquidReftC
syn keyword hsLiquidKeyword  assume assert invariant predicate type data contained
syn region  hsLiquidReftA   start="{\(\s\|\w\)" end=":" contained
syn region  hsLiquidReftB   start="|" end="}" contained
syn match   hsLiquidReftC   "\w*:" contained


if version >= 508 || !exists("did_liq_hs_syntax_inits")
  if version < 508
    let did_liq_hs_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink hsLiquidAnnot      SpecialComment
  HiLink hsLiquidKeyword    Operator
  HiLink hsLiquidReftA      Include
  HiLink hsLiquidReftB      Include
  HiLink hsLiquidReftC      Include
  delcommand HiLink
endif
