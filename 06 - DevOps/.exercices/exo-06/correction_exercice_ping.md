# Exercice Docker #6 - Réalisation d'une communication inter-conteneurs

## Sujet

Via l'utilisation de Docker Desktop et de vos connaissances Docker, réaliser le déploiement, dans un environnement Docker:

* De deux conteneurs:
  * Un conteneur servant de serveur qui se nommera `exo-06-server`
  * Un conteneur servant de client qui se nommera `exo-06-client`
* Ces deux conteneurs devront avoir été créés et initialisés à partir d'une image construite manuellement via l'utilisation des commits Docker et nommée en fonction (par exemple `exo-06-image`)
  * L'image proviendra d'une image de base d'Ubuntu (`ubuntu`)
  * Sur laquelle on aura mit à jour les registres de paquets (`apt update`)
  * Sur laquelle on aura installé la commande `ping` (`apt install`)
* Les deux conteneurs devront communiquer via l'utilisation d'un système de DNS interne propre à leur environnement Docker personnalisé (pensez à utiliser le système de réseaux virtualisés de Docker pour cela)

```bash
# Récupérer en local l'image d'Ubuntu
docker pull ubuntu

# Lancer en intéractif un conteneur d'Ubuntu
docker run -it --name exo-06-prepa ubuntu

## Une fois dans le conteneur...

# Mettre à jour le registre des paquets
apt update -y 

# Installer la commande 'ping'
apt install iputils-ping

# On sort du conteneur
exit

# On créé l'image à partir du conteneur
docker commit exo-06-prepa exo-06-image

# On supprime le conteneur ayant servi à préparer l'image
docker rm exo-06-prepa

# On créé un réseau qui va accueillir la communication entre les deux futurs conteneurs
docker network create exo-06-net

# On crée le conteneur de serveur dans un terminal A
docker run -it --network exo-06-net --name exo-06-server exo-06-image

# On crée le conteneur de client dans un terminal B
docker run -it --network exo-06-net --name exo-06-client exo-06-image

# Dans le conteneur 'exo-06-client'...
ping -c 5 exo-06-server

# On doit avoir une réponse et non un timeout
```