# eyeglass

## Prolog on Web scale

[Eyeglass](https://github.com/josd/eyeglass) is expressed in [ISO Prolog](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog)

TERM            | Examples
----------------|---------
URI             | `'<http://example.org/etc#Socrates>'`
LITERAL         | `literal('Hello world!', type('<http://www.w3.org/2001/XMLSchema#string>'))` `literal(chat, lang(fr))` `1.52` `1e-19`
VARIABLE        | `X` `_abc` `_`
LIST            | `[TERM,...]` `[TERM,...`\|`LIST]` `[]`
RELATION        | `URI(TERM, ...)` `abc(TERM, ...)`
GRAPH           | `RELATION, ...` `true`

CLAUSE          | Examples
----------------|---------
FACT            | `RELATION.`
RULE            | `RELATION :- GRAPH.`

## Installation and test

Install [Rust](https://www.rust-lang.org/tools/install) and [Scryer Prolog](https://github.com/mthom/scryer-prolog#installing-scryer-prolog) and then run

```
./test
```

## Background

- Personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
