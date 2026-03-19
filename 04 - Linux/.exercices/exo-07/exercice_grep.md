# Exercice : Maîtriser la commande `grep` sous Ubuntu

En te servant de l'archive `exo-grep.zip` que tu auras au préalable extraite : 

### Partie 1 — Recherches simples

Affiche toutes les lignes du fichier `employes.txt` contenant le mot `Développeu` (pour capturer à la fois "Développeur" et "Développeuse").

Recherche le mot `Paris` dans `employes.txt` **sans tenir compte de la casse** (Paris, paris, PARIS doivent tous remonter).

Affiche uniquement les lignes du fichier `logs_serveur.txt` qui contiennent le mot `ERROR`.

---

### Partie 2 — Options utiles

Affiche les lignes contenant `ERROR` dans `logs_serveur.txt`, **en précisant le numéro de ligne** devant chaque résultat.

Compte le **nombre de lignes** contenant `INFO` dans `logs_serveur.txt`.

Affiche les lignes de `config.conf` qui **ne sont pas** des commentaires (les commentaires commencent par `#`) et qui **ne sont pas vides**.

> Indice : utilise l'option d'inversion de correspondance, et pense à enchaîner deux commandes `grep`.

Affiche **uniquement le nom du fichier** (pas le contenu) parmi `employes.txt`, `logs_serveur.txt` et `config.conf` qui contient le mot `timeout`.

---

### Partie 3 — Expressions régulières

Dans `employes.txt`, affiche les lignes où le nom de ville est exactement `Lyon` (le mot doit être précédé d'un tiret et d'une espace).

Dans `config.conf`, affiche toutes les lignes qui **commencent** par une lettre (c'est-à-dire qui ne sont ni des commentaires ni des lignes vides).

Dans `employes.txt`, affiche les adresses e-mail uniquement (la partie `prenom@example.com`), sans le reste de la ligne.

> Indice : utilise l'option `-o` pour n'afficher que la partie correspondante, et une expression régulière simple pour un e-mail.

---

### Partie 4 — Grep et pipes

Liste tous les fichiers du répertoire `/etc` dont le nom contient la chaîne `cron`, en utilisant `ls` combiné à `grep`.

Affiche les processus en cours d'exécution (`ps aux`) qui appartiennent à l'utilisateur courant (`$USER`), en excluant la ligne `grep` elle-même.

> Indice : enchaîne deux `grep`, dont un avec l'option d'inversion.

À partir du fichier `logs_serveur.txt`, affiche uniquement les **horodatages** (la date et l'heure, format `YYYY-MM-DD HH:MM:SS`) des lignes contenant `ERROR`.

> Indice : combine `grep` et `cut`, ou utilise `grep -o` avec une expression régulière.

---

### Partie 5 — Recherche récursive

Recherche récursivement le mot `example.com` dans **tous les fichiers** du répertoire `~/exercice_grep`, en affichant le nom du fichier et le numéro de ligne pour chaque occurrence.

Effectue la même recherche que 5.1, mais en **ignorant la casse**, et en n'affichant que la **liste des fichiers** concernés (sans afficher les lignes elles-mêmes).