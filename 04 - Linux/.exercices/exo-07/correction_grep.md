# Correction — Exercice `grep` sous Ubuntu

---

## Partie 1 — Recherches simples

### Exercice 1.1 — Rechercher un motif

```bash
grep "Développeu" employes.txt
```

**Résultat attendu :**
```
Alice Martin - Développeuse - Paris - alice@example.com
Charlie Bernard - Développeur - Marseille - charlie@example.com
Eve Lambert - Développeuse - Bordeaux - eve@example.com
Grace Hopper - Développeuse senior - Paris - grace@example.com
```

**Explication :** En cherchant `Développeu` (tronqué), `grep` remonte à la fois "Développeur" et "Développeuse", car les deux commencent par ce préfixe commun.

---

### Exercice 1.2 — Recherche insensible à la casse

```bash
grep -i "paris" employes.txt
```

**Résultat attendu :**
```
Alice Martin - Développeuse - Paris - alice@example.com
Diana Prince - Chef de projet - Paris - diana@example.com
Grace Hopper - Développeuse senior - Paris - grace@example.com
```

**Explication :** L'option `-i` (ignore case) désactive la distinction majuscules/minuscules.

---

### Exercice 1.3 — Filtrer par niveau de log

```bash
grep "ERROR" logs_serveur.txt
```

**Résultat attendu :**
```
2024-03-01 10:02:11 ERROR Échec de connexion : timeout
2024-03-01 10:02:45 ERROR Tentative de reconnexion...
2024-03-01 15:00:00 ERROR Échec de la sauvegarde : permission refusée
```

---

## Partie 2 — Options utiles

### Exercice 2.1 — Numéros de ligne

```bash
grep -n "ERROR" logs_serveur.txt
```

**Résultat attendu :**
```
4:2024-03-01 10:02:11 ERROR Échec de connexion : timeout
5:2024-03-01 10:02:45 ERROR Tentative de reconnexion...
9:2024-03-01 15:00:00 ERROR Échec de la sauvegarde : permission refusée
```

**Explication :** L'option `-n` préfixe chaque ligne correspondante avec son numéro dans le fichier.

---

### Exercice 2.2 — Compter les occurrences

```bash
grep -c "INFO" logs_serveur.txt
```

**Résultat attendu :**
```
5
```

**Explication :** `-c` retourne uniquement le nombre de lignes correspondantes, pas leur contenu.

---

### Exercice 2.3 — Exclure les commentaires et lignes vides

```bash
grep -v "^#" config.conf | grep -v "^$"
```

**Résultat attendu :**
```
hostname=serveur-prod-01
port=8080
max_connections=500
timeout=30
log_level=INFO
db_host=192.168.1.10
db_port=5432
db_name=production
admin_email=admin@example.com
```

**Explication :**
- `grep -v "^#"` : exclut (`-v`) les lignes commençant (`^`) par `#`
- `grep -v "^$"` : exclut les lignes vides (`^$` = début suivi immédiatement de fin de ligne)
- Le pipe `|` enchaîne les deux filtres

---

### Exercice 2.4 — Afficher uniquement le nom du fichier

```bash
grep -l "timeout" employes.txt logs_serveur.txt config.conf
```

**Résultat attendu :**
```
logs_serveur.txt
config.conf
```

**Explication :** `-l` (list) n'affiche que les noms des fichiers contenant au moins une correspondance, sans montrer les lignes elles-mêmes.

---

## Partie 3 — Expressions régulières

### Exercice 3.1 — Correspondance précise

```bash
grep "- Lyon" employes.txt
```

**Résultat attendu :**
```
Bob Dupont - Administrateur réseau - Lyon - bob@example.com
Frank Moreau - Administrateur système - Lyon - frank@example.com
```

**Explication :** En cherchant `- Lyon` (avec le tiret-espace précédent), on s'assure que "Lyon" est bien la valeur d'une colonne et non une sous-chaîne dans un autre contexte.

---

### Exercice 3.2 — Lignes commençant par une lettre

```bash
grep "^[a-zA-Z]" config.conf
```

**Résultat attendu :**
```
hostname=serveur-prod-01
port=8080
max_connections=500
timeout=30
log_level=INFO
db_host=192.168.1.10
db_port=5432
db_name=production
admin_email=admin@example.com
```

**Explication :** `^[a-zA-Z]` correspond aux lignes dont le **premier caractère** est une lettre (minuscule ou majuscule). Les lignes commençant par `#` ou vides sont ainsi exclues.

---

### Exercice 3.3 — Extraire les adresses e-mail

```bash
grep -o "[a-zA-Z]*@example\.com" employes.txt
```

**Résultat attendu :**
```
alice@example.com
bob@example.com
charlie@example.com
diana@example.com
eve@example.com
frank@example.com
grace@example.com
hugo@example.com
```

**Explication :**
- `-o` : n'affiche que la portion de la ligne qui correspond au motif
- `[a-zA-Z]*` : une suite de lettres (le prénom)
- `@example\.com` : le domaine (le `\.` échappe le point, qui sinon voudrait dire "n'importe quel caractère")

---

## Partie 4 — Grep et pipes

### Exercice 4.1 — Filtrer la sortie de `ls`

```bash
ls /etc | grep "cron"
```

**Exemple de résultat** (peut varier selon la machine) :
```
cron.d
cron.daily
cron.hourly
cron.monthly
crontab
cron.weekly
```

**Explication :** `ls /etc` liste le contenu de `/etc`, et `grep "cron"` filtre les entrées contenant "cron".

---

### Exercice 4.2 — Filtrer les processus

```bash
ps aux | grep "$USER" | grep -v "grep"
```

**Explication :**
- `ps aux` : liste tous les processus
- `grep "$USER"` : filtre ceux appartenant à l'utilisateur courant
- `grep -v "grep"` : exclut la ligne de la commande `grep` elle-même, qui apparaît dans les processus pendant son exécution

> **Alternative propre :** `pgrep -u $USER` est plus fiable pour cet usage, mais l'exercice cible explicitement `grep`.

---

### Exercice 4.3 — Extraire les horodatages des erreurs

```bash
grep "ERROR" logs_serveur.txt | grep -o "[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} [0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}"
```

Ou avec `grep -E` (expressions régulières étendues, syntaxe plus lisible) :

```bash
grep "ERROR" logs_serveur.txt | grep -Eo "[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}"
```

**Résultat attendu :**
```
2024-03-01 10:02:11
2024-03-01 10:02:45
2024-03-01 15:00:00
```

**Explication :**
- Premier `grep` : filtre les lignes ERROR
- Second `grep -Eo` : extrait (`-o`) uniquement la partie correspondant au motif d'horodatage
- `[0-9]{4}` : exactement 4 chiffres (l'année), etc.

---

## Partie 5 — Recherche récursive

### Exercice 5.1 — Recherche récursive avec contexte

```bash
grep -rn "example.com" ~/exercice_grep
```

**Résultat attendu :**
```
~/exercice_grep/employes.txt:1:Alice Martin - Développeuse - Paris - alice@example.com
~/exercice_grep/employes.txt:2:Bob Dupont - Administrateur réseau - Lyon - bob@example.com
...
~/exercice_grep/config.conf:12:admin_email=admin@example.com
```

**Explication :** `-r` active la recherche récursive dans le répertoire et ses sous-dossiers. `-n` ajoute les numéros de ligne.

---

### Exercice 5.2 — Liste des fichiers concernés

```bash
grep -ril "example.com" ~/exercice_grep
```

**Résultat attendu :**
```
~/exercice_grep/employes.txt
~/exercice_grep/config.conf
```

**Explication :** `-r` pour la récursivité, `-i` pour ignorer la casse, `-l` pour n'afficher que les noms de fichiers (sans le contenu des lignes).

---

## Récapitulatif des concepts clés

| Concept | Exemple | Rôle |
|---------|---------|------|
| Ancre début de ligne | `^motif` | La ligne doit commencer par `motif` |
| Ancre fin de ligne | `motif$` | La ligne doit se terminer par `motif` |
| Classe de caractères | `[a-z]` | N'importe quelle lettre minuscule |
| Répétition (ERE) | `[0-9]{4}` | Exactement 4 chiffres |
| Échappement | `\.` | Un point littéral (pas "n'importe quel caractère") |
| Inversion | `grep -v` | Exclure les lignes correspondantes |
| Extraction | `grep -o` | N'afficher que la portion correspondante |
| Récursivité | `grep -r` | Parcourir les sous-dossiers |
