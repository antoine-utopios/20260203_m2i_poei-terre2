# Exercice Docker #1 - Réalisation d'un conteneur de base

## Sujet

Via l'utilisation de Docker Desktop et de la documentation de NGINX, réaliser le déploiement, dans un environnement Docker:

* D'un conteneur de type Ubuntu
* Possédant une installation correcte de NGINX
* Dont on a vérifié le fonctionnement via la commande `curl` (Par exemple `curl http://localhost/`)

```bash
# On cherche une image d'Ubuntu
docker search ubuntu

# On récupère l'image en local 
docker pull ubuntu

# On lance un conteneur basé sur l'image Ubuntu
docker run -it ubuntu

# Une fois dans le conteneur...

# On va mettre à jour les registres de paquets
apt update -y

# On va installer nginx sur l'environnement de déploiement
apt install -y nginx curl

# On va vérifier le fonctionnement du daemon NGINX
service nginx status
service nginx start # Si pas démarré de base

# On va vérifier que le serveur web est accessible en local dans l'environnement de déploiement
curl http://localhost/
```