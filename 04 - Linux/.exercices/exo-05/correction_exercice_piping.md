# Correction - Piping Exercise

Placez-vous dans le dossier :

```bash
cd PokemonExercise
```

1. Compter les fichiers Pokémon

Lister les fichiers puis compter les lignes :

```bash
ls PokeDex | wc -l
```

Explication :

* `ls PokeDex` → liste les fichiers
* `|` → pipe la sortie vers la commande suivante
* `wc -l` → compte le nombre de lignes

2. Créer le fichier all-pokemon.txt

Objectif :

* récupérer les noms des fichiers
* les convertir en minuscules
* trier numériquement
* enregistrer le résultat

Commande :

```bash
ls PokeDex | tr '[:upper:]' '[:lower:]' | sort -n > all-pokemon.txt
```

Explication :

`ls PokeDex` → liste les fichiers
`tr '[:upper:]' '[:lower:]'` → convertit en minuscules
`sort -n` → tri numérique
`>` → redirige la sortie vers all-pokemon.txt

3. Afficher les lignes 16 à 18

Commande :

```bash
sed -n '16,18p' all-pokemon.txt

```

Explication :

* `sed -n` → n'affiche rien par défaut
* `'16,18p'` → affiche les lignes 16 à 18

Résultat attendu :

```text
16pidgey
17pidgeotto
18pidgeot
```

4. Isoler les 151 Pokémon originaux

Pipeline complet :

```bash
head -n 151 all-pokemon.txt | tr -d '0-9' | sort > original-151.txt

```

Explication :

* `head -n 151` → prend les 151 premières lignes
* `tr -d '0-9'` → supprime les chiffres
* `sort` → tri alphabétique
* `>` → enregistre dans original-151.txt

Vérification

Afficher le début du fichier :

```bash
head original-151.txt
```

Afficher la fin :

```bash
tail original-151.txt
```