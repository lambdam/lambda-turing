+++
title = "Langages impératifs"
slug = "langages-imperatifs"
weight = 2
+++

# Interaction avec des langages impératifs

---

Déclaration et mutation d'un valeur contenue dans une case mémoire.

<pre class="language-klipse-cpp">
int main()
{
  int i = 1;
  i++;
  // i = i + 1;
  return i;
}
</pre>

---

Manipulation de l'adresse d'une valeur en mémoire (pointeur)

<pre class="language-klipse-cpp">
int main()
{
  int i = 1;
  int *ptr = &i; // Nous déclarons un pointeur qui prend pour valeur l'adresse de i.
  // i++; // Nous incrémentons la valeur stockée dans la case mémoire i.
  return *ptr; // Nous retournons la valeur stockée dans la case mémoire.
}</pre>

---

<iframe width="560" height="315" src="https://www.youtube.com/embed/_Nua3Cjdik0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

