+++
title = "Sécuriser le code"
slug = "securiser-le-code"
weight = 6
+++

# Sécuriser le code

## Le typage

Le typage consiste à associer à des valeurs ou des expressions des type (nombre, texte, tableau de text...). Cela permet de détecter dès la compilation (traduction du code en langage machine) un certain nombre d'erreurs.

Traditionnellement les langages impératifs sont "simplement" typés. Les langages fonctionnels, lorsqu'ils sont typés, sont dits "fortement" typés. Une comilation réussie équivaut à une sorte de preuve mathématique que des problèmes liés aux types des expression n'apparaitront pas.

OCaml :

<pre class="language-klipse-ocaml">
let print_my_age (name: string) (age: int) : string =
  "M. " ^ name ^ " a " ^ age ^ " ans"

(*
let result = print_my_age "Felix Le Chat" "25"
*)
</pre>

---

Ainsi une lourde tendance dans le monde Javascript tend à ajouter des systèmes de typage ou à utiliser des langages typés qui compilent vers du Javascript.

Les systèmes de typage progressifs les plus connus sont :

- [TypeScript](https://www.typescriptlang.org/) créé par Microsoft.
- [Flow](https://flow.org/) créé par Facebook.

Et les langages fortement typés les plus en vogue sont :

- [Elm](http://elm-lang.org/) créé par un seul développeur.
- [ReasonML](https://reasonml.github.io/) inité par Facebook sur la base d'OCaml.

## Les tests

L'idée des tests est de "mettre en situation" le code métier.

On va donc le plus souvent imaginer des cas d'utilisation et "forger" de la donnée.

Cela permet de valider au moment de la création du code qu'il se comporte bien comme attendu et d'autre part qu'au fil de
l'évolution de celui-ci, ce qui est modifié continue à se comporter convenablement dans les cas mis en oeuvre dans les tests.

Le hic, c'est qu'il est dur de prévoir **tous** les cas...

---

ClojureScript :

<pre class="language-klipse-clojure">
(def fake-geo-data
  ;lat.      long.    temp.(°Fahrenheit)
  [48.862725 2.287592 78])

(defn temp-to-celsius [data]
  (-> data
      (get 2)
      (- 32)
      (/ 1.8)
      (js/Math.round)))

(assert
  (= (temp-to-celsius fake-geo-data) 26))

;; Que se passe-t-il lorsque la donnée est corrupue et qu'il n'y a pas d'information de température ?
;; Par exemple avec [32.7 3.89 nil] ?

nil
</pre>

---

Les tests sont à double tranchant :

- Le bon côté est qu'il peuvent aider à poser le code métier en posant d'emblée les résultats attendus ainsi qu'à éviter des régressions au fil de l'évolution d'un programme.
- Le mauvais est qu'ils ajoutent du code, parfois beaucoup de code. Faire évoluer le programme peut devenir lourd. Pire, il peut y avoir des bugs dans les tests eux-mêmes...

---
