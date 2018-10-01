+++
title = "WTF"
slug = "wtf"
weight = 5
+++

# WTF

Ou encore _Qu'est-ce que c'est que ce bordel ?_

---

Javascript

<pre class="language-klipse-eval-js">
function keepLowest(array, n) {
  var orderedArray = array.sort();
  return orderedArray.slice(0, n);
}

var randomArray = [5,3,8,4,1,8,4,3,6,8,5];

// randomArray.push(19);

var lowest = keepLowest(randomArray, 4);

"Quelles seront les valeurs de lowest et randomArray ?"

// lowest;

// randomArray;
</pre>

---

![ça marche, ça marche pas](https://i.redd.it/gue98zrupiq01.jpg)

---

JavaScript encore

<pre class="language-klipse-eval-js">
var foo = ["10", "10", "10"];
// foo.map(parseInt) // Quel peut bien être le résultat ?
</pre>

---

[Wat](https://www.destroyallsoftware.com/talks/wat) de Gary Bernhardt

<iframe frameborder="0" width="480" height="270" src="//www.dailymotion.com/embed/video/x15zw3g" allowfullscreen allow="autoplay"></iframe>

Et du même auteur, [The Birth & Death of JavaScript](https://www.destroyallsoftware.com/talks/the-birth-and-death-of-javascript) (~ 30min).

---

## Le cas tragique du THERAC-25

Le THERAC-25 était une machine à rayon destinée à traiter les cancers. Elle a été utilisée entre 1985 et 1987.

[therac 25](https://hownot2code.files.wordpress.com/2016/10/image3.jpg?w=676)

Un bug dans le programme de la machine ne s'est déclenché qu'après six mois d'utilisation lorsque les opérateurs
s'étaient habitués aux commandes et commencèrent à utiliser l'interface "trop" rapidement. Il s'agissait d'une "race condition" : deux
tache s'exécutant en parallèle accédèrent à la même valeur en mémoire sans garde-fou et se "marchèrent sur les pieds".

Certains patients reçurent jusqu'à 200 fois la dose de rayons normale. Trois d'entre eux moururent des suites de l'excès de radiation et trois
autres furent gravement brûlés.

---

## Et demain, du multi-coeur partout

Depuis une dizaine d'années, les ordinateurs gagnent en puissance non-plus en accélérant leur fréquence de calcul
mais en augmentant le nombre de coeurs disponibles. Il est donc à la portée de tout le monde d'avoir un ordinateur faisant
des opérations en parallèle. La mémoire de la machine elle reste unique et est donc partagée entre les coeurs.

Le fait d'avoir un accès direct aux cases mémoires avec les langages impératifs implique de trouver des mécanismes pour empêcher les coeurs de modifier les mêmes cases mémoires en même temps. Le mécanisme le plus courant conciste à mettre un "lock" sur une portion de mémoire et d'interdire à tout autre coeur de modifier le contenu tant que le lock n'est pas levé. Oublier de lever un lock peut amener tous les coeurs à se mettre en attente. C'est une situation de "deadlock" : le programme se fige.

De par leur orientation "mathématique", les langages fonctionnels mettent en avant la notion de valeur (souvent immutable) plutôt que de cases mémoires.
La mise en oeuvre de cette abstraction au niveau de la machine conduit à garantir que par défaut, la production, rendant impossible par design les problèmes d'accès simultanné à la même zone mémoire. Avec certains langages (Haskell et Erlang par exemple), avoir deux fois plus de coeurs signifie avoir pratiquement deux fois plus de puissance de calcul sans rien changer au code.
