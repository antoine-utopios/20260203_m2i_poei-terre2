# Exercice : La Redirection

Téléchargez les fichiers pour cet exercice : `Wildlife.zip`

Décompressez le dossier `Wildlife` et naviguez jusqu'à lui via la ligne de commande.

---

## Votre mission

Vous participez à un recensement de la faune sauvage dans une zone reculée de l'Amazonie péruvienne ! Ce matin, trois de vos assistants de recherche ont chacun effectué des marches de transect au cours desquelles ils ont enregistré les espèces individuelles qu'ils ont observées. Votre mission (simple) est de combiner leurs découvertes dans un nouveau fichier contenant toutes les espèces observées !

1. Créez un nouveau fichier appelé `all-species.txt` contenant le contenu combiné de `angela-survey.txt`, `nico-survey.txt` et `juan-survey.txt`. Faites cela en une seule commande !

```bash
cat angela-survey.txt juan-survey.txt nico-survey.txt > all-species.txt
```

2. Le problème avec le fichier `all-species.txt` est qu'il contient des entrées en double ! Utilisez une seule commande pour trier les lignes par ordre alphabétique, en ne gardant que les entrées uniques, et envoyez le résultat dans un nouveau fichier appelé `sorted-animals.txt`.

```bash
sort -u all-species.txt
```

3. Vous partez ensuite pour une agréable promenade matinale et tombez sur un grand anaconda en train de se dorer au soleil sur un tronc d'arbre. Vous devez ajouter cette observation à la liste des espèces !
   1. Commencez par ajouter la date du jour à la fin du fichier `sorted-animals.txt` à l'aide d'une commande (n'ouvrez pas le fichier manuellement !)

```bash
date >> sorted-species.txt
```

   2. Ajoutez ensuite le texte « Green Anaconda » à la fin de `sorted-animals.txt`.

```bash
echo "Green Anaconda" >> sorted-species.txt
```

4. Exécutez la commande inexistante `ughhh` et redirigez les messages d'erreur afin qu'ils soient ajoutés à la fin du fichier `sorted-animals.txt`.

```bash
uggghh 2>> sorted-species.txt
```