# retina

Reasoning engine to infer neutral answers.

## Architecture and design

[Retina](https://github.com/josd/retina) is processing retina data and is itself implemented as [retina code](https://github.com/josd/retina/blob/master/retina.pl).  
It produces retina answers supported by lemmas.  
It uses [Scryer Prolog](https://github.com/mthom/scryer-prolog) which runs on [Rust](https://www.rust-lang.org).  

### retina syntax

TERM            | Examples
----------------|---------
IRI             | `'http://example.org/ns#Socrates'`
VARIABLE        | `X` `_abc`
LITERAL         | `"abc"` `1.52` `1e-18` `pi` `dt("2022-01-15",'http://www.w3.org/2001/XMLSchema#date')`
LIST            | `[TERM,...]` `[TERM,...`\|`LIST]` `[]`
TRIPLE          | `IRI(TERM,TERM)`
GRAPH           | `TRIPLE,...`

CLAUSE          | Examples
----------------|---------
ASSERTION       | `TRIPLE.` `true => GRAPH.`
FORWARD_RULE    | `GRAPH => GRAPH.`
QUERY           | `GRAPH => true.`
ANSWER          | `GRAPH => true.`
INFERENCE_FUSE  | `GRAPH => false.`
BACKWARD_RULE   | `TRIPLE <= GRAPH.`

Retina performs forward chaining for a `FORWARD_RULE` and backward chaining for a `BACKWARD_RULE`.

Queries are posed and answered as `GRAPH => true.` so the answers are also queries be it with
some parts substituted and eventually containing more variables than in the original query.
This forms a dialogue leading to necessary and sufficient answers, supported by lemmas, so that action can take place.

The builtin triples are:

- `'http://josd.github.io/ns#builtin'(`[`Subject`](https://www.scryer.pl/builtins)`,[])`

## Installation and test

Install [Rust](https://www.rust-lang.org/tools/install) and [Scryer](https://github.com/mthom/scryer-prolog#installing-scryer-prolog) and then

```
$ git clone https://github.com/josd/retina
$ cd retina
$ ./test
```

## Background

- Personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- Book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
