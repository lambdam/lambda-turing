+++
title = "Langages objet"
slug = "langages-objet"
weight = 4
+++

# Les langages orientés objet

## Idées fortes

La programmation orientée objet apporte des abstractions destinées à structurer les projets.

Il ne s'agit plus de gérer des cases mémoires ou de déclarer des fonctions que l'on appliquera sur des donnés mais de déclarer des **classes** qui serviront de modèle à des objets qui représenteront des "individus" d'une classe.

- **L'encapsulation** : on cache l'état interne de l'objet et l'on expose des interfaces pour interagir avec l'objet.
- **L'héritage** : on peut déclarer des propriétés sur une classe parente qui seront réutilisées par des sous-classes enfants. L'idée est très proche de la classification des espèces. On peut déclarer des propriétés communes aux mammifères et s'appuyer dessus pour décrire d'un côté les propriétés des félins et de l'autre les propriétés des canidés.

Au même titre que la fonction en programmation fonctionnelle, ce sont des abstractions. Il n'y a pas de correspondance au niveau de la machine physique.

## L'encapsulation

<pre class="language-klipse-eval-ruby">
# Modèle de rectangle
class Rectangle
  def initialize(width, height)
    @width = width
    @height = height
  end
  
  def width
    @width
  end
  
  def height
    @height
  end
  
  def diagonal
    Math::sqrt(@width**2 + @height**2)
  end
  
  def surface
    @width * @height
  end
end

# Un rectangle particulier (un objet)
t1 = Rectangle.new(3, 4)

[t1.width, t1.height, t1.diagonal, t1.surface]
</pre>

D'un point de vue extérieur, une fois que l'on a l'objet sous la main, je ne me soucie plus de savoir comment est stocké l'information à "l'intérieur" de l'objet.

## L'héritage

<pre class="language-klipse-eval-ruby">

class Mammal
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end
end

class Dog < Mammal
  def make_noise
    "#{@name} says: Ouaff"
  end
end

class Cat < Mammal
  def make_noise
    "#{@name} says: Miaou"
  end
end

medor = Dog.new("Medor")

felix = Cat.new("Felix")

# Fais parler le chien

# Fais parler le chat

"rien"

</pre>

## Les limites de l'orienté objet

Les deux langages objets les plus connus actuellement sont C++ (1983) et Java (1995).

Un des gros reproches fait à ces langages est que même si la structuration en classes semble intuitive (on pense aux espèces), l'abstraction apporte son lot de cas particulier. Un cas connu est le choix, au niveau du langage, du simple héritage (une classe a exactement un parent) ou du multi-héritage (une classe peut avoir plusieurs parents). On pense à l'ornithorynque...

Les gros systèmes objet sont réputés durs à faire évoluer.

Il est à noter aussi que la plupart des langages de scripts (langages non-compilés "légers" et accessibles) offrent la possibilité de faire de l'orienté objet.
