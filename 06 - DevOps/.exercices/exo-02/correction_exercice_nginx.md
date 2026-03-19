# Exercice Docker #1 - Réalisation d'un conteneur de serveur web

## Sujet

Via l'utilisation de Docker Desktop, de la documentation de NGINX et de son image officielle, réaliser le déploiement, dans un environnement Docker:

* D'un conteneur de type NGINX
* Possédant une page d'accueil personnalisée
* Dont on a vérifié le fonctionnement via la commande `curl` en dehors de l'environnement Docker (Par exemple `curl http://localhost:8080/` depuis notre machine hôte)

```bash
# Rechercher une image de conteneur compatible NGINX
docker search nginx

# Récupérer en local une image compatible
docker pull nginx

# Déployer en local l'image
docker run -d --name exo-02 -p 8080:80 nginx 

docker exec -it exo-02 bash

# Une fois dans le conteneur...

# Modifie le fichier de la page d'accueil de NGINX avec l'éditeur de code terminal 'nano'
nano /usr/share/nginx/html/index.html 

# On édite le fichier pour remplacer les balises '<title>' et '<h1>'
curl http://localhost/ # On est censé avoir une page d'accueil différente

exit

# Hors du conteneur...

curl http://localhost:8080/

```