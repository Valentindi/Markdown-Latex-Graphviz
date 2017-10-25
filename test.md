

# Parallelverarbeitung 

## Übungsserie 2

### Aufgabe 2.1

Ermitteln bzw. zeigen Sie die Bisektions breiten für:

    - vollständigen Graph,
    - d-dimensionales Gitter,
    - d-dimensionalen Torus,
    - d-dimensionalen Hypercube und
    - Cube Connected Cycles Netzwerk!


#### Vollständigen Graph

|Knoten *n* | Kanten *k* | Halbierungsbreite *B(G)*|
|----|----|----|
|2|1|1|
|3|3|2|
|4|6|4|
|5|10|6|
|6|15|9|
|x|$$\sum_{n=1}^{x} x$$| \{n % 2 == 0 $$\sum_{n=1}^{x} x - 2 * \sum_{n=1}^{x/2} x/2 $$ |

\digraph[scale=0.5]{abc}{rankdir=LR; a->b->c
a [label=<foo<SUP>bar</SUP>>];}



