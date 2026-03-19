# Exercice sur les Pipes (Piping Exercise)

Téléchargez les fichiers de départ `PokemonExercise.zip` ici

Décompressez le fichier.  
Le dossier obtenu contient un sous-dossier appelé ``PokeDex/`` qui contient de nombreux fichiers, chacun nommé d’après un Pokémon spécifique comme :

```bash
PokemonExercise/
	`PokeDex/`
		100Voltorb
		101Electrode
		619Mienfoo
		...
```

## Votre mission

Complétez les défis suivants en utilisant les fichiers fournis.

Assurez-vous de vous placer dans le dossier `PokemonExercise/`, mais NE lancez AUCUNE des commandes suivantes depuis l’intérieur du dossier `PokeDex/`.

Je répète : tous les fichiers que vous créez pour l’exercice doivent être placés dans `PokemonExercise/` et PAS dans `PokeDex/`.

1. Compter les fichiers Pokémon

Comptez le nombre de fichiers Pokémon présents dans le dossier `PokeDex/`.

Vous devrez combiner plusieurs commandes pour que cela fonctionne.

```bash
ls PokeDex/ | wc -l
```

2. Générer une liste de tous les Pokémon

Ensuite, créez un fichier appelé all-pokemon.txt dans le dossier `PokemonExercise/` (et pas dans `PokeDex/`).

Ce fichier doit contenir :

* le nom de chaque fichier Pokémon
* en minuscules
* trié dans l’ordre numérique

Le résultat final doit ressembler à ceci :

```text
1bulbasaur
2ivysaur
3venusaur
4charmander
5charmeleon
6charizard
7squirtle
8wartortle
9blastoise
10caterpie
11metapod
12butterfree
...
```

```bash
ls PokeDex/ | tr '[:upper:]' '[:lower:]' | sort -n > all-pokemons.txt
```

3. Afficher les Pokémon de la famille Pidgey

Maintenant que nous avons ce fichier contenant tous les Pokémon dans l’ordre numérique, affichons les trois Pokémon de la famille Pidgey :

```text
pidgey
pidgeotto
pidgeot
```

En utilisant la ligne de commande, affichez les lignes 16 à 18.

Le résultat doit être :

```text
16pidgey
17pidgeotto
18pidgeot
```

```bash
cat all-pokemons.txt | head -18 | tail -3

# ou

sed -n '16,18p' all-pokemons.txt 
```

4. Isoler les 151 Pokémon originaux

Ensuite, isolons les 151 Pokémon originaux.

En utilisant un seul pipeline :

* afficher les 151 premières lignes du fichier all-pokemon.txt
* supprimer tous les chiffres (0-9) de chaque ligne avec tr
* trier les lignes restantes par ordre alphabétique
* enregistrer le résultat dans un fichier appelé original-151.txt dans PokemonExercise

Le résultat final doit ressembler à ceci :

```text
abra
aerodactyl
alakazam
...
wigglytuff
zapdos
zubat
```

```bash
head -151 all-pokemons.txt | tr -d '0-9' | sort > original-151.txt
```