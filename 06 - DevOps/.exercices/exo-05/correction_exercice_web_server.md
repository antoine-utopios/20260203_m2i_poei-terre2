# Exercice Docker #5 - Réalisation d'un conteneur de serveur web avec bind mount

## Sujet

Via l'utilisation de Docker Desktop et de vos connaissances personnelles, réaliser le déploiement, dans un environnement Docker:

* D'un conteneur de type NGINX
* Servant à la visualisation d'un site web local liée à notre conteneur et permettant d'en faire le développement sans aucune installation préalable
* Dont on a vérifié le fonctionnement via la commande `curl` en dehors de l'environnement Docker (Par exemple `curl http://localhost:8080/` depuis notre machine hôte)

```bash
mkdir -p $(pwd)/website/

echo > $(pwd)/website/index.html << 'EOF'
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercice 05</title>
  </head>
  <body>
    <main>
      <h1>Exercice 05</h1>
      <hr>
      <p>
        Bienvenue sur la page d'accueil de l'<strong>exercice 05</strong>!
      </p>
    </main>
  </body>
  </html>
EOF

docker pull nginx

docker run \
  -d \
  -p 8080:80 \
  -v "$(pwd)/website:/usr/share/nginx/html:ro" \
  --name exo-05 \
  nginx
```