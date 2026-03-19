# Correction : Exercice La Redirection

**Prérequis — Naviguer jusqu'au dossier `Wildlife`**
```bash
cd ~/Downloads/Wildlife
```

---

## 1. Combiner les trois fichiers en un seul

```bash
cat angela-survey.txt nico-survey.txt juan-survey.txt > all-species.txt
```

> L'opérateur `>` redirige la sortie de `cat` vers un nouveau fichier `all-species.txt`.  
> Si le fichier existe déjà, il sera écrasé.

---

## 2. Trier par ordre alphabétique en supprimant les doublons

```bash
sort -u all-species.txt > sorted-animals.txt
```

> - `sort` : trie les lignes alphabétiquement
> - `-u` : ne conserve que les lignes uniques (supprime les doublons)
> - `>` : envoie le résultat dans le nouveau fichier `sorted-animals.txt`

---

## 3. Ajouter l'anaconda à la liste

### 3.1 Ajouter la date du jour à la fin du fichier

```bash
date >> sorted-animals.txt
```

> L'opérateur `>>` **ajoute** la sortie à la fin du fichier sans l'écraser (contrairement à `>`).

### 3.2 Ajouter "Green Anaconda" à la fin du fichier

```bash
echo "Green Anaconda" >> sorted-animals.txt
```

> `echo` affiche le texte passé en argument, et `>>` l'ajoute à la fin de `sorted-animals.txt`.

---

## 4. Rediriger les messages d'erreur vers le fichier

```bash
ughhh 2>> sorted-animals.txt
```

> - `2>` redirige la sortie d'erreur standard (stderr) vers un fichier
> - `2>>` l'**ajoute** à la fin du fichier sans l'écraser
> - La commande `ughhh` n'existant pas, le shell génère un message d'erreur qui sera ainsi capturé dans `sorted-animals.txt`
