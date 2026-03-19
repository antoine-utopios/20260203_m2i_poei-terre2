# Correction : Exercice Travailler avec des Fichiers

---

## Partie 1

**Afficher le contenu de `poem.txt` avec les numéros de ligne**
```bash
cat -n poem.txt
```

**Lire `poem.txt` avec `less`**
```bash
less poem.txt
```

Dans `less` :
| Action | Touche |
|---|---|
| Descendre d'une ligne | `j` ou `↓` |
| Monter d'une ligne | `k` ou `↑` |
| Descendre d'une page | `f` ou `Espace` |
| Monter d'une page | `b` |
| Quitter | `q` |

**Rechercher le terme "Dog" dans `less`**
```
/Dog
```
> Tapez `/` suivi du terme recherché, puis appuyez sur `Entrée`. Utilisez `n` pour passer à l'occurrence suivante.

**BONUS — Recherche insensible à la casse**
```
-I
```
> Tapez `-I` dans `less` pour activer la recherche insensible à la casse, puis relancez la recherche avec `/dog`.

**Ouvrir `poem.txt` avec `less` et les numéros de ligne affichés**
```bash
less -N poem.txt
```

**Aller à 50% du fichier dans `less`**
```
50p
```
> Tapez `50p` dans `less` pour aller exactement à 50% du fichier.

**Compter le nombre de mots dans `poem.txt`**
```bash
wc -w poem.txt
```

**Afficher les 4 premières lignes de `poem.txt`**
```bash
head -n 4 poem.txt
```

**Afficher les 8 dernières lignes de `poem.txt`**
```bash
tail -n 8 poem.txt
```

---

## Partie 2

**Afficher les lignes de `purchases.txt` en ordre inverse**
```bash
tac purchases.txt
```

**Afficher les lignes triées alphabétiquement**
```bash
sort purchases.txt
```

**Compter le nombre de lignes dans `purchases.txt`**
```bash
wc -l purchases.txt
```

**Trier par prix (dernière colonne) en ordre décroissant**
```bash
sort -t, -k2 -rn purchases.txt
```

> - `-t,` : définit la virgule comme séparateur de colonnes
> - `-k2` : trie selon la deuxième colonne (le prix)
> - `-r` : ordre décroissant (reverse)
> - `-n` : tri numérique
>
> ⚠️ La commande exacte peut varier selon la structure réelle du fichier `purchases.txt` (séparateur, position de la colonne prix). Adaptez `-t` et `-k` en conséquence.
