# Imagining Prolog on Web scale

[Imagining](https://github.com/josd/imagining) is expressed in [ISO Prolog](https://en.wikipedia.org/wiki/Prolog#ISO_Prolog)

TERM            | Examples
----------------|---------
IRI             | `'http://example.org/etc#Socrates'`
LITERAL         | `"abc"` `"chat"-fr` `1.52` `1e-19` `pi`
VARIABLE        | `X` `_abc` `_`
LIST            | `[TERM,...]` `[TERM,...`\|`LIST]` `[]`
RELATION        | `IRI(TERM, ...)` `abc(TERM, ...)`
GRAPH           | `RELATION, ...` `true`

CLAUSE          | Examples
----------------|---------
FACT            | `RELATION.`
RULE            | `RELATION :- GRAPH.`


## Installation and test

Install [Scryer Prolog](https://github.com/mthom/scryer-prolog#installing-scryer-prolog) and then run

```
./test
```

## Background

- Personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
