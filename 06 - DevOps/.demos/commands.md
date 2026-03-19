# Commandes Docker

## Commandes de base

* Lister les conteneurs:

```bash
docker ps

# OU

docker container ls
```

* Lister les conteneurs (avec ceux stoppés):

```bash
docker ps -a
```

* Lister les images:

```bash
docker images

# OU

docker image ls
```

* Rechercher parmi les images:

```bash
docker search <input>
```

Un nom d'image est contitué de trois sections:
```text
<registry-url>/<registry-name>/<image-name>
```

Dans le cas où les images proviennent de DockerHub, il y aura plusieurs raccourcis pour les noms d'image: 

* Dans le cas général:
```text
docker.io/<registry-name>/<image-name> => <registry-name>/<image-name>
```

* Si l'image est une image officielle:
```text
docker.io/library/<image-name> => <image-name>
```

* Récupérer une image:

```bash
docker pull <registry-url>/<registry-name>/<image-name>
```

* Inspecter une image:

```bash
docker inspect <registry-url>/<registry-name>/<image-name>
```

* Créer un conteneur à partir d'une image :

```bash
docker run <registry-url>/<registry-name>/<image-name>
```

* Créer un conteneur à partir d'une image (mode intéractif avec profil TTY) :

```bash
docker run -it <registry-url>/<registry-name>/<image-name>
```

* Lister les ressources docker:

```bash
docker <resource-type> ls
```