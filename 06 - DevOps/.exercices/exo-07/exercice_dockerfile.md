# Exercice Docker #7 - Réalisation d'une image de site web

## Sujet

Via l'utilisation de Docker et d'un fichier `Dockerfile`, créer une image à tester dans un environnement Docker:

* D'un conteneur de type NGINX
* Deservant au lancement un site web personnalisé (se trouvant donc de base dans l'endroit par défaut desservi par NGINX - `/usr/share/nginx/html`)

Une fois l'image créée, la vérifier via un déploiement:
* `docker run -d --name exo-07-test -p 8080:80 exo-07-image` => Pour lancer un conteneur de notre nouvelle image
* Via la commande `curl` en dehors de l'environnement Docker (Par exemple `curl http://localhost:8080/` depuis notre machine hôte)