+++
title = "Langages fonctionnels"
slug = "langages-fonctionnels"
weight = 3
+++

# Les langages fonctionnels

## Les idées fortes

- Les valeurs manipulées sont majoritairement ou exclusivement immutables.
- Les outils de base sont les fonctions et les données.
- Les fonctions peuvent être de la donnée (une fonction peut être un paramètre d'une autre fonction et être executée plus tard).

## Les langages emblématiques

Langages dynamiques : les LISP (LISt Processing). Il existe une myriade de variantes :

- Scheme (très épuré)
- Common Lisp (très complet)
- Clojure (moderne et plus largement immutable)

C'est historiquement le premier langage fonctionnel créé. Il a été inventé au MIT en 1958.

Langages fortement typés :

- Standard ML
- OCaml (et sa syntaxe alternative créée chez Facebook, ReasonML)
- Haskell

Ce sont des langages plus récents. Standard ML (le premier) est apparu en 1984.


## Expliquer LISP en deux lignes

La grammaire est la plus épurée de tous les langages. Elle tient virtuellement en deux lignes .

Un programme est composé :

- soit de termes atomiques (entiers, flottants, booléens, symboles, chaines de caractères, fonction, ...)
- soit d'une liste qui représente un appel de fonction : `(fonction arg1 arg2 arg3 ...)`

Il n'y a par exemple pas de notion de précédence de la multiplication sur l'addition : les parenthèses imposent naturellement un ordre d'exécution.

```
Maths         LISP
1 + 2 * 3 <=> (+ 1 (* 2 3))
```

## L'immutabilité.


En C (mutabilité)

<pre class="language-klipse-cpp">
#include &lt;stdio.h&gt;

int main()
{
  int table[2] = {1, 3};
  table[0] = 42;
  // printf("base = {%d, %d}", table[0], table[1]);
  return 0;
}
</pre>

---

En Clojure (immutabilité)

<pre class="language-klipse-clojure">
(def table [1 3])

(assoc table 0 42)

;; table

"rien"
</pre>


## Les fonctions anonymes


<pre class="language-klipse-clojure">
(defn add5 [x]
  (+ x 5))

(defn apply-f-to-x [f x]
  (f x))
  
(apply-f-to-x add5 2013) 
</pre>


## Itérer sans `for` : les fonctions récursives

En Clojure

<pre class="language-klipse-clojure">
(defn sum-table [table accumulator]
  (if (empty? table)
    ;; then
    accumulator
    ;; else
    (sum-table (rest table)
               (+ accumulator (first table)))))

(sum-table [1 2 3 4 5] 0)
</pre>

---

En ReasonML

<pre class="language-klipse-reason3">
let rec sum_table = (table, accumulator) => {
  if (table == []) {
    accumulator;
  } else {
    let [head, ...tail] = table;
    sum_table(tail, accumulator + head);
  };
};

let result = sum_table([1, 2, 3, 4, 5], 0);
</pre>

---

En OCaml

<pre class="language-klipse-ocaml">
let rec sum_table table accumulator =
  if table == [] then
    accumulator
  else
    let head :: tail = table in
    sum_table tail (accumulator + head)

let result = sum_table [1; 2; 3; 4; 5] 0
</pre>

---
