# marble

## Web logic engine

[marble](https://github.com/eyereasoner/marble) is expressed in [ISO Prolog](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog)

TERM            | Examples
----------------|---------
URI             | `'http://example.org/etc#Socrates'`
LITERAL         | `"Hello world!"` `"chat"-fr` `"2022-07-29"-date` `1.52` `1e-19` `pi`
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
