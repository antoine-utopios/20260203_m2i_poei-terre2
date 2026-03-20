# On choisi notre image de base via l'instruction FROM 
FROM ubuntu

# On choisi notre image de base via l'instruction FROM (Possibilité de mettre un alias avec 'AS') 
FROM ubuntu AS builder

# Permet de lancer des commandes à partir d'un dossier de travail (qui est créé à la volée au cas où)
WORKDIR /path/to/working/directory

# On peut créer et fixer un utilisateur pour la suite des commandes de notre compilation via USER
USER user_name

# On peut exécuter des commande en cours de compilation via l'instruction RUN
RUN ls

# On peut copier des fichiers dans le conteneur via l'instruction COPY
COPY /source/in/host /path/in/container

# On peut copier des fichiers dans le conteneur via l'instruction COPY
COPY --from=builder /source/in/container /path/in/container

# On peut copier des fichiers dans le conteneur via l'instruction ADD (avec extraction d'une archive à la volée)
ADD /source/in/host/archive.zip /path/in/container

# Pour fixer des arguments lors de la compilation, et potentiellement une valeur par défaut pour ceux-ci, on peut utiliser l'instruction ARG
ARG VARIABLE_NAME ""

# Pour fixer des variables d'environnement, et potentiellement une valeur par défaut pour celles-ci, on peut utiliser l'instruction ENV
ENV VARIABLE_NAME ""

# Pour informer un utilisateur futur de notre image que ce port à de l'importance, on peut utiliser l'instruction EXPOSE
EXPOSE 8080

# On doit choisir une commande de lancement de notre conteneur via l'instruction CMD
CMD [ "command", "to", "launch" ]

# On doit choisir une commande de lancement de notre conteneur via l'instruction CMD
ENTRYPOINT [ "command", "to", "launch" ]