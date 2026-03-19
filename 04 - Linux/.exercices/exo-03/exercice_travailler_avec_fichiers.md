# Exercice : Travailler avec des Fichiers

Téléchargez le fichier zip ci-dessus et décompressez-le ! Il contient deux fichiers : `poem.txt` et `purchases.txt`.

---

## Partie 1

- Utilisez une commande pour afficher l'intégralité du contenu du fichier `poem.txt`. Utilisez une option pour que la sortie inclue également les numéros de ligne.

```bash
cat -n poem.txt
```

- C'est difficile à lire d'un seul coup ! Lisez `poem.txt` en utilisant `less` à la place.
  - Faites défiler d'une ligne vers le bas
  - Faites défiler d'une ligne vers le haut
  - Faites défiler d'une « page » vers le bas
  - Faites défiler d'une « page » vers le haut

```bash
less poem.txt


# - Faites défiler d'une ligne vers le bas => Flèche du bas
# - Faites défiler d'une ligne vers le haut => Flèche du haut
# - Faites défiler d'une « page » vers le bas => Touche 'f'
# - Faites défiler d'une « page » vers le haut => Touche 'b'
```

- Recherchez le terme « Dog » dans `less`. Pouvez-vous trouver la ligne qui le contient ?
  - **BONUS :** pouvez-vous effectuer une recherche insensible à la casse ? Le poème contient à la fois « dog » et « Dog » sur des lignes séparées.

```bash
less poem.txt

# Un tape '/Dog'

# Pour activer la recherche insensible à la casse => '-I'

# Un tape '/dog'
```

- Il est maintenant temps de faire quelques recherches ! Trouvez l'option permettant de dire à `less` d'ouvrir le fichier avec les numéros de ligne affichés. Ouvrez `poem.txt` de cette façon.

```bash
less -N poem.txt
```

- Trouvez ensuite la « commande » que vous pouvez taper dans `less` pour aller exactement à 50 % du fichier.

```bash
less poem.txt

# Un tape '50p'
```

- Utilisez une commande pour trouver le nombre de mots dans `poem.txt`.

```bash
wc -w poem.txt
```

- Exécutez une commande pour afficher les 4 premières lignes de `poem.txt`.

```bash
head -4 poem.txt
```

- Exécutez une commande pour afficher les 8 dernières lignes de `poem.txt`.

```bash
tail -8 poem.txt
```

---

## Partie 2

- Exécutez une commande pour afficher les lignes de `purchases.txt` en ordre inverse (la dernière ligne affichée en premier).

```bash
tac purchases.txt
```

- Exécutez une commande pour afficher les lignes de `purchases.txt` triées par ordre alphabétique.

```bash
sort purchases.txt
```

- Exécutez une commande pour compter le nombre de lignes dans `purchases.txt`.

```bash
wc -l purchases.txt
```

- Exécutez une commande pour afficher les lignes de `purchases.txt` triées par prix (la dernière colonne du fichier) en ordre DÉCROISSANT (du prix le plus élevé au plus bas).

```bash
sort -nrk3  purchases.txt
```
