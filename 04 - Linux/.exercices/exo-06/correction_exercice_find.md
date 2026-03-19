# Correction - Exercice Find

Toutes les commandes doivent être exécutées depuis le dossier `Cases/`.

---

## 1. Compter les fichiers contenant "closed" en minuscules

Résultat attendu : **980**

```bash
find . -name "*closed*" | wc -l
```

2. Trouver les fichiers contenant "CLOSED" en majuscules

Résultat attendu : 3

```bash
find . -name "*CLOSED*"
```

3. Compter tous les cas fermés (majuscule ou minuscule)

Résultat attendu : 983

```bash
find . -iname "*closed*" | wc -l
```

Option `-iname` permet une recherche case-insensitive.

4. Compter les cas ouverts avec un numéro impair

Résultat attendu : 519

On cherche les fichiers contenant open et dont le dernier chiffre est 1,3,5,7 ou 9.

```bash
find . -name "*open*[13579]"
```

Pour compter :

```bash
find . -name "*open*[13579]" | wc -l
```

5. Trouver les fichiers vides

Résultat attendu : 3 fichiers

```bash
find . -empty
```

6. Trouver les fichiers de plus de 20k

Résultat attendu : 3 fichiers

```bash
find . -size +20k
```

7. Trouver le fichier fermé de plus de 150k

```bash
find . -iname "*closed*" -size +150k
```

8. Trouver le fichier modifié plus récemment que yesterday.txt

```bash
find . -newer yesterday.txt
```

Option utilisée :

`-newer` → recherche les fichiers modifiés plus récemment que le fichier donné.
