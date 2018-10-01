+++
title = "Langages impératifs"
slug = "langages-imperatifs"
weight = 2
+++

# Interaction avec des langages impératifs

---

## Les idées fortes

On manipule des cases mémoires à l'aide d'une série d'instructions.

Dans les premiers langages on peut citer :

- Fortran (1954) : le plus ancien langage impératif dit de "haut niveau". Il est toujours utilisé pour le calcul scientifique.
- C (1972) : le plus connu et le plus utilisé aujourd'hui. Il sert majoritairement pour écrire des systèmes d'exploitation ou des logiciels qui ont besoin de performance.

Et plus récemment :

- Go (2009) : développé par Google, il vise les performances du C avec la simplicité des langages de scripts comme Python.
- Rust (2006) : développé par Mozilla, il vise les même applications que C mais avec la sécurité d'exécution sur des machines modernes.


## Déclaration de valeurs et cases mémoires

Déclaration et mutation d'un valeur contenue dans une case mémoire en C.

<pre class="language-klipse-cpp">
int main()
{
  int i = 1; // Déclaration d'un variable i dont le contenu est un entier et vaut 1.
  // i = i + 1; // On incrémente la valeur à partir de sa propre valeur.
  // i++; // Opérateur spécial pour incrémenter la valeur.
  return i;
}
</pre>

---

Manipulation de l'adresse d'une valeur en mémoire (pointeur) en C.

<pre class="language-klipse-cpp">
int main()
{
  int i = 1;
  int *ptr = &i; // Nous déclarons un pointeur qui prend pour valeur l'adresse de i.
  // *ptr = *ptr + 1; // Nous incrémentons la valeur stockée dans la case mémoire i.
  return *ptr; // Nous retournons la valeur stockée dans la case mémoire.
}
</pre>

---

## Outil fondamental n° 1 : l'itération avec `for`

<pre class="language-klipse-cpp">
int main()
{
  int table[5] = {846, 740, 285, 94, 53};
  int table_length = sizeof(table) / sizeof(int);
  int i = 0;
  int sum = 0;

  for (i = 0 ; i < table_length ; i++)
  {
    sum = sum + table[i];
  }
  
  return 0;

  // return sum;
}
</pre>

---

## Outil fondamental n° 2 : les conditionnels avec `if`, `then`, `else`

<pre class="language-klipse-cpp">
int main()
{
  int a = 2;
  int b = 4;
  int result;
  
  /*
  if(a > b) {
    result = 2018;
  } else {
    result = 2019;
  }
  */
  
  return result;
}
</pre>

---

<iframe width="560" height="315" src="https://www.youtube.com/embed/_Nua3Cjdik0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

---
