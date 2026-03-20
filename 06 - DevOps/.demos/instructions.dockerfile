# On choisi notre image de base via l'instruction FROM 
FROM ubuntu

# On peut exécuter des commande en cours de compilation via l'instruction RUN
RUN ls

# On peut copier des fichiers dans le conteneur via l'instruction COPY
COPY /source/in/host /path/in/container

# On doit choisir une commande de lancement de notre conteneur via l'instruction CMD
CMD [ "command", "to", "launch" ]