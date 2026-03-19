# Correction : Exercice de Navigation

1. **Naviguer jusqu'au dossier `Farm`**
```bash
cd ~/Desktop/Farm
```

2. **Lister le contenu du répertoire `Farm`**
```bash
ls
```

3. **Se déplacer dans le dossier `Coop`**
```bash
cd Coop
```

4. **Lister le contenu du dossier `Coop`**
```bash
ls
```

5. **Se déplacer dans le dossier `Chickens`**
```bash
cd Chickens
```

6. **Lister les poules et les compter**
```bash
ls
```
> Comptez le nombre de fichiers affichés.

7. **Trouver la poule la plus vieille (fichier le plus ancien)**
```bash
ls -lt
```
> Le fichier affiché en dernier est le plus ancien (date de modification la plus ancienne).
> Alternativement :
```bash
ls -ltr
```
> Le fichier affiché en premier avec `-r` (reverse) est le plus ancien.

8. **Se déplacer de `Chickens` vers `Geese` en une seule commande**
```bash
cd ../Geese
```

9. **Compter les oies dans `Geese`**
```bash
ls
```
> Comptez le nombre de fichiers affichés.

10. **Trouver l'oie la plus grosse (fichier le plus volumineux)**
```bash
ls -lS
```
> Le fichier affiché en premier est le plus volumineux (`-S` trie par taille décroissante).

11. **Naviguer jusqu'au répertoire `Horses`**
```bash
cd ../../Stable/Horses
```

12. **Compter les chevaux dans `Horses`**
```bash
ls
```
> Comptez le nombre de fichiers affichés.

13. **Trouver le cheval caché**
```bash
ls -a
```
> Les fichiers cachés commencent par un `.` et ne sont visibles qu'avec l'option `-a`.
