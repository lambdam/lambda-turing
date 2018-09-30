+++
title = "WTF"
slug = "wtf"
weight = 5
+++

# WTF

Ou encore _Qu'est-ce que c'est que ce bordel ?_

---

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

![](https://i.redd.it/gue98zrupiq01.jpg)

---

<pre class="language-klipse-eval-js">
var foo = ["10", "10", "10"];
// foo.map(parseInt) // Quel peut bien être le résultat ?
</pre>

---

[Wat](https://www.destroyallsoftware.com/talks/wat) de Garry Bernhardt

<iframe frameborder="0" width="480" height="270" src="//www.dailymotion.com/embed/video/x15zw3g" allowfullscreen allow="autoplay"></iframe>

---

Trouver l'histoire de la machine à rayons qui a eu des race conditions.

Topo sur l'augmentation de puissance par le nombre de coeurs -> attrait des langages fonctionnels.
