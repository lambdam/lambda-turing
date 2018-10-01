+++
title = "Historique"
slug = "historique"
weight = 1
+++

# Rapide historique

---

## La question de la calculabilité

Question fondamentale : "Qu'est-ce qui est calculable ?" (Wikipedia : [Calculabilité](https://fr.wikipedia.org/wiki/Calculabilit%C3%A9))

Ou encore : "Peut-on automatiser la transformation d'informations grâce à une série des règles ?"

Selon Wikipedia ([Thèse de Church](https://fr.wikipedia.org/wiki/Th%C3%A8se_de_Church)), nous pouvons lire la définition suivante :

_La thèse est formulée en disant que des règles formelles de calcul (machines de Turing, les fonctions λ-définissables, les fonctions récursives…) formalisent correctement la notion de méthode effective de calcul, ou de calculabilité._

_On considère généralement[réf. nécessaire] que la notion intuitive de méthode effective de calcul correspond aux caractéristiques suivantes :_

1. _l'algorithme consiste en un ensemble fini d'instructions simples et précises qui sont décrites avec un nombre limité de symboles ;_
2. _l'algorithme doit toujours produire le résultat en un nombre fini d'étapes ;_
3. _l'algorithme peut en principe être suivi par un humain avec seulement du papier et un crayon ;_
4. _l'exécution de l'algorithme ne requiert pas d'intelligence de l'humain sauf celle qui est nécessaire pour comprendre et exécuter les instructions._

Plusieurs approches ont vu le jour :

- les fonctions récursives ;
- le lambda-calcul ;
- les machines de Turing ;
- les machines à compteurs ;
- les automates cellulaires ;
- les circuits booléens ;
- les machines parallèle à accès arbitraire ou PRAM ;
- les Random access machines ou RAM ;
- les machines de Blum-Shub-Smale.


## De la question théorique à la création de machines à calculer

Deux approches ont durablement marqué la manière dont nous interagissons avec les ordinateurs :

- La machine d'Alan Turing qui pose les fondements des langages dit impératifs.
- Le lambda-calcul d'Alonzo Church qui pose les fondements des langages dits fonctionnels.


## La machine de Turing

Un ruban infini, des case qui stockent des informations et une tête de lecture qui peut lire et écrire sur ces cases.

![Machine de Turing simple](http://vincent-le-corre.fr/wp-content/uploads/2011/11/Ruban-machine-de-Turing1.jpg)

---

Un peu plus précisément, [une machine de Turing se compose de](https://fr.wikipedia.org/wiki/Machine_de_Turing#D%C3%A9finition) :

- Un ruban infini.
- Une tête de lecture/écriture.
- Un registre d'état.
- Une table d'actions.

![Machine de Turing complète](https://delmas-rigoutsos.nom.fr/documents/YDelmas-ordinateurs_et_systemes/resources/turing+1.png)

---

Et un petit exemple de machine de Turing en action.

<iframe width="560" height="315" src="https://www.youtube.com/embed/FTSAiF9AHN4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

---

L'ordinateur moderne est très similaire dans sa réalisation (Wikipedia : [Les opération du processeur](https://fr.wikipedia.org/wiki/Processeur#Les_op%C3%A9rations_du_processeur))

![L'ordinateur](http://prof.bpesquet.fr/images/content/memoire-echanges-proc.png)

## Langages fonctionnels (Church)

Le lambda-calcul est une approche plus abstraite de la calculabilité centré sur la fonction, au sens mathématique du terme.

Les idées fortes :

- On applique des fonctions à des termes.
- Une fonction peut elle-même être le terme d'une autre fonction.
- Les termes sont regroupés en expressions.
- Toute expression retourne une valeur ou une autre expression.

<img class="img-fluid" style="max-width: 500px;" alt="lambda expression 1" src="http://1.bp.blogspot.com/-0hF-lQX74Xg/U7eUQXA-0XI/AAAAAAAADyM/D-Z_XbxZyzM/s1600/lambda1.png"/>

<img class="img-fluid" style="max-width: 500px;" alt="lambda expression 2" src="http://4.bp.blogspot.com/-5_DZOH_aqGc/U7eWeeGKSxI/AAAAAAAADyY/O3wr5_XXbZs/s1600/lambda2.png"/>

Les images sont tirées de cet [article d'introduction au lambda-calcul](http://palmstroem.blogspot.com/2012/05/lambda-calculus-for-absolute-dummies.html) (en anglais)

---
