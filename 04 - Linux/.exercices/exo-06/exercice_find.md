# Exercice Find

Veuillez télécharger le fichier `Cases.zip`, le décompresser, puis vous rendre dans le répertoire `Cases/`.

**Note : pour que cet exercice fonctionne correctement, évitez de modifier les fichiers présents dans les cas !**

## Votre mission

Bienvenue détective !  
Le dossier `Cases` contient quelques milliers de dossiers d’enquête, certains **ouverts (open)** et d’autres **fermés (closed)**.

Utilisez la commande `find` pour vous aider à accomplir les tâches suivantes :

1. En utilisant `find` (et une autre commande), comptez le nombre de fichiers de cas qui contiennent **"closed" en minuscules** dans leur nom.  
   Vous devriez trouver **980** cas.

2. Oh non ! L’un de nos nouveaux détectives nomme ses dossiers avec **"CLOSED" en majuscules**.  
   Trouvez les **3 cas** qui contiennent **"CLOSED"** dans leur nom.

3. Obtenez le **nombre total de cas fermés** contenant **"closed" dans leur nom**, qu’il soit écrit en **minuscules ou majuscules**.  
   Vous devriez obtenir **983**.

4. Obtenez le nombre total de cas **ouverts (open)** dont le numéro de dossier est **impair**  
   (c’est-à-dire les cas ouverts dont le numéro se termine par **1, 3, 5, 7 ou 9**).  
   Vous devriez obtenir **519 cas**.

5. Trouvez les **trois dossiers vides**.

6. La plupart des fichiers sont assez petits, mais **3 dossiers sont assez volumineux**.  
   Trouvez les **trois fichiers dont la taille est supérieure à 20k**.

7. Trouvez **le seul fichier de cas** qui est **plus grand que 150k et qui est fermé**.

8. Personne n’a touché à ces dossiers depuis des années... du moins personne n’aurait dû.  
   Malheureusement, un détective corrompu a modifié l’un des fichiers.

   Aujourd’hui, il a changé **un seul cas de "closed" à "open"** pour nuire à un de ses ennemis.

   Trouvez **le fichier qui a été modifié plus récemment que le fichier `yesterday.txt`**.

   Si vous êtes confus, regardez la vidéo d’introduction de l’exercice.  
   Vous devrez peut-être consulter les **man pages** pour trouver la bonne option.