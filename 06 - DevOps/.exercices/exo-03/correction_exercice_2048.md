# Exercice Docker #3 - Réalisation d'un conteneur d'application web

## Sujet

Via l'utilisation de Docker Desktop et de vos connaissances Docker, réaliser le déploiement, dans un environnement Docker:

* D'un conteneur permettant de jouer au jeu 2048
* Branché au port par défaut de l'HTTP de notre machine hôte
* Dont on a vérifié le fonctionnement en dehors de l'environnement Docker (Par exemple en visitant l'adresse `http://localhost/` depuis notre machine hôte)

```bash
# On fait une recherche via les termes données
docker search 2048

# On récupère en local notre image
docker pull quchaonet/2048

# On inspecte l'image pour vérifier quels ports vont être utilisés par celle-ci
docker inspect quchaonet/2048

# On lance notre conteneur via la bonne configuration
docker run --name exo-03 -d -p 80:8080 quchaonet/2048

# On vérifie en local dans notre navigateur en allant à l'adresse 'http://localhost/'
```