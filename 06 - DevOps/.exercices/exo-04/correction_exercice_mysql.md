# Exercice Docker #4 - Réalisation d'un déploiement de base de données

## Sujet

Via l'utilisation de Docker Desktop et de vos connaissances Docker, réaliser le déploiement, dans un environnement Docker:

* D'un conteneur permettant de posséder une base de données de type MySQL
  * Ayant une base de données par défaut se nommant `testDB`
  * Utilisant un compte utilisateur autre que `root` et configuré avec un mot de passe particulier
  * Ne possédant pas d'accès `root` (pas de mot de passe pour l'utilisateur racine)
  * Dont les données seront persistantes et disponible dans de futurs conteneurs en cas de relance manuelle

Pour cela, il faudra: 
* Déployer le conteneur
* Exécuter des commandes de bases telles que: 
  * `USE DATABASE testDB;` => Pour sélectionner la base de données en cours d'utilisation
  * `CREATE TABLE IF NOT EXISTS clients (client_id INT AUTO_INCREMENT PRIMARY KEY, client_name VARCHAR(200) NOT NULL, client_email VARCHAR(200) UNIQUE NOT NULL);` => Pour créer si non pré-existante la table des clients
  * `INSERT INTO clients (client_name, client_email) VALUES ("John DOE", "j.doe@example.com"), ("Johnny JOESTAR", "j.joestar@example.com"), ("Dio BRANDO", "d.brando@example.com");` => Pour entrer des données dans la table des clients
  * `SELECT * FROM clients;` => Pour afficher les clients stockés
* Sortir du conteneur puis le stopper et le supprimer
* Recréer un nouveau conteneur permettant d'avoir le même jeu de données et la même configuration

```bash
# Récupération de l'image Docker de MySQL
docker pull mysql

# Initialisation d'un conteneur de MySQL avec 
  ## 1. Mode détaché
  ## 2. Pas de mot de passe pour root
  ## 3. Base de données par défaut
  ## 4. Utilisateur par défaut
  ## 5. Mot de passe pour l'utilisateur par défaut
  ## 6. Volume nommé
docker run \
  -d \
  --name exo-04 \
  -e "MYSQL_ALLOW_EMPTY_PASSWORD=true" \
  -e "MYSQL_DATABASE=testDB" \
  -e "MYSQL_USER=demo" \
  -e "MYSQL_PASSWORD=password" \
  -v exo04-data:/var/lib/mysql \
  mysql

# On exécute bash dans le conteneur en intéractif avec profil TTY
docker exec -it exo-04 bash

## Une fois dans le conteneur...

# Connexion avec l'utilisateur de base
mysql -u demo -p 
```

```sql
CREATE TABLE IF NOT EXISTS testDB.clients (client_id INT AUTO_INCREMENT PRIMARY KEY, client_name VARCHAR(200) NOT NULL, client_email VARCHAR(200) UNIQUE NOT NULL);
INSERT INTO testDB.clients (client_name, client_email) VALUES ("John DOE", "j.doe@example.com"), ("Johnny JOESTAR", "j.joestar@example.com"), ("Dio BRANDO", "d.brando@example.com");
SELECT * FROM testDB.clients;

exit;
```

```bash
exit

# Une fois sorti du conteneur...

# On supprime le conteneur de MySQL
docker rm -f exo-04

# On en recrée un avec le même volume pour garder les données
docker run \
  -d \
  --name exo-04-test \
  -e "MYSQL_ALLOW_EMPTY_PASSWORD=true" \
  -e "MYSQL_DATABASE=testDB" \
  -e "MYSQL_USER=demo" \
  -e "MYSQL_PASSWORD=password" \
  -v exo04-data:/var/lib/mysql \
  mysql

# On teste la persistance
docker exec -it exo-04-test bash

## Une fois dans le conteneur...

# Connexion avec l'utilisateur de base
mysql -u demo -p 
```

```sql
SELECT * FROM testDB.clients;
```