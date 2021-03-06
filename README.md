# pryr (rhymes with pry bar)

`pryr` provides tools to pry back the surface of R and dig into the details. It
has been developed in conjunction with 
"[Advanced R programming](https://github.com/hadley/devtools/wiki)" to make
it easier to understand what's going on in R.

The easiest way to install `pryr` is with devtools:

```R
library(devtools)
install_github("pryr")
```

## Tools

`pryr` includes tools to make it easier to understand the internal 
implementation of:

* promises: `uneval()`, `is_promise()`, `promise_info()`
* scoping and environments: `where()`, `rls()`, `parenv()`
* closures: `unenclose()`
* calls and expressions: `call_tree()`

And tools to make it easier to compute on the language:

* Alternative ways to create functions: `make_function()`, `f()`
* A version of subtitute that uses regular evaluation, `substitute2()`, and 
  one that will substitute objects in the global environment, `subs()`
* Tools to modify language objects: `modify_lang()`
* `dots()` and `named_dots()` to get unevaluated `...`
* Partial function evaluation: `partial()`
* Find all functions matching some criteria: `find_funs()`

And to use existing R tools more easily:

* `%<d-%` and `%<a-%` for creating delayed or active bindings
* `%<c-%` for creating constants (locked bindings)
* `rebind` as a more user friendly version of `<<-`