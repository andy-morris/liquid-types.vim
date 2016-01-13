# liquid-types.vim

This is a fork of the [original] which has been rearranged to hopefully Just
Work with plugin managers without any manual installation.

[original]: https://github.com/ucsd-progsys/liquid-types.vim

See the original repository for more documentation.


## Dependencies

- [scrooloose/syntastic](https://github.com/scrooloose/syntastic)
- [panagosg7/vim-annotations](https://github.com/panagosg7/vim-annotations)
- [Liquid Haskell](https://github.com/ucsd-progsys/liquidhaskell), obviously

Add `'liquid'` to `g:syntastic_haskell_checkers`, e.g.

```
let g:syntastic_haskell_checkers = ['ghc-mod', 'liquid', 'hlint']
```
