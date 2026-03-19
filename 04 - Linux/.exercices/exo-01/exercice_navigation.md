# Exercice de Navigation

Téléchargez le fichier ci-dessus, décompressez-le, puis faites glisser le dossier `Farm` obtenu sur votre Bureau. Le dossier Farm contient les sous-dossiers suivants :

```
Farm/
	Coop/ 
		Chickens/
		Geese/
	Stable/
		Horses/
```

À partir de maintenant, utilisez **UNIQUEMENT le terminal** pour accomplir les tâches suivantes :

1. Ouvrez une nouvelle fenêtre de terminal. Naviguez jusqu'au dossier `Farm`.

```bash
cd ~/Downloads/Farm/
```

2. Listez le contenu du répertoire `Farm`.

```bash
ls
```

3. « Déplacez-vous » dans le dossier `Coop`.

```bash
cd Coop/
```

4. Listez le contenu du dossier `Coop`.

```bash
ls
```

5. « Déplacez-vous » dans le dossier `Chickens`.

```bash
cd Chickens/
```

6. Listez les poules du dossier `Chickens`. Combien y en a-t-il ?

```bash
ls 

# On compte, on a 6 poules
```

7. L'une des poules est très très vieille, laquelle est-ce ? (quel fichier du dossier `Chickens` a la date de modification la plus ancienne ?) Utilisez une commande pour le découvrir !

```bash
ls -lt

# Il s'agit d'Elvis
```

8. En une seule commande, déplacez-vous du répertoire `Chickens` vers le répertoire `Geese`. Consultez la structure de dossiers ci-dessus si nécessaire.

```bash
cd ../Geese/
```

9. Combien y a-t-il d'oies (fichiers) dans le répertoire `Geese` ?

```bash
ls 

# Il y en a 4
```

10. L'une des oies est assise sur un œuf en or ! Elle est plus grande que les autres oies. Laquelle est-ce ? (quel fichier du dossier `Geese` est le plus volumineux ?) Utilisez une commande pour le découvrir !

```bash
ls -l

# Il s'agit de Muffin
```

11. Naviguez jusqu'au répertoire `Horses`. Consultez la structure de dossiers ci-dessus si nécessaire.

```bash
cd ../../Stable/Horses/
```

12. Combien y a-t-il de chevaux dans le répertoire `Horses` ?

```bash
ls 

# Il y en a 4 qui ne sont pas cachés, un de plus si l'on compte le caché
```

13. Attention ! Il y a un cheval caché dans le répertoire `Horses` ! Quel est son nom ?

```bash
ls -a

# Il s'agit de Troy
```
