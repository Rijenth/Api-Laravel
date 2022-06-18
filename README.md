# Mini projet API Laravel

### Description
Dans le cadre d'un test technique pour la société Tylto, j'ai travaillé sur une petite API avec le framework Laravel version 9.17.0. Les fonctionnalités précises de cet application sont disponibles dans le tableau en fin de page.

### Le sujet
Grand fan des pokémons à mes heures perdues, j'ai utilisé une de mes base de donnée, contenant les pokémons de la 1ère génèration, afin de créer un pokédex. Cet API permet ainsi de voir, chercher, mettre à jour et enfin supprimer un pokémon.

# Prérequis 

### Préparation
1. Avoir le logiciel MAMP d'installer sur votre ordinateur.
2. Avoir la dernière version de PHP (8.1.0)
<<<<<<< HEAD
3. Sur PHPMYADMIN (ou sur terminal), créer une database 'pokedex' et y importer la bdd 'pokedex.sql'
=======
3. Créer une database 'pokedex' et y importer la bdd 'pokedex.sql
>>>>>>> 7b1e9d5c32bfbd7cc50eee2cd70b3e41b48b962a
4. Telecharger et installer 'Composer' : [https://getcomposer.org/download/](https://getcomposer.org/download/)
   1. Lors de l'installation, vous devrez lier Composer au PHP que vous utilisez sur MAMP : [Lier Composer à PHP/MAMP](https://documentation.mamp.info/en/MAMP-PRO-Windows/How-Tos/General/SetupComposer/#:~:text=Install%20Composer&text=Click%20on%20the%20“Composer-Setup,be%20guided%20through%20the%20installation)
5. Télécharger ce repertoire et l'extraire dans votre dossier 'MAMP\htdocs'.
6. Ouvrir un terminal, utiliser la commande 'cd' pour vous rendre dans le dossier du projet.
   1. Vous pouvez vérifier la version de Composer en tapant 'composer -v' dans le terminal.
   2. Vous pouvez vérifier le bon fonctionnement de Laravel en tapant 'php artisan' dans le terminal.
   3. Si ces commandes n'ont pas fonctionnées, verifier que votre terminal pointe bien un repertoire 'MAMP\htdocs\VotreProjet'
<<<<<<< HEAD

### Lancer le projet

1. Lancer le serveur MAMP
2. Ouvrir un terminal, utiliser 'cd' pour vous rendre dans le dossier du projet.
3. Taper 'php artisan serve' pour lancer l'application. Attention, ce terminal ne doit pas être fermé !
4. Vous pouvez maintenant tester les fonctionnalités de ce projet !

   
      
  
=======
7. 
>>>>>>> 7b1e9d5c32bfbd7cc50eee2cd70b3e41b48b962a




DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=pokedex
DB_USERNAME=root
DB_PASSWORD=root


## Il consiste à développer une mini (web) API avec le framework Laravel respectant les contraintes           ## ci-dessous. Le sujet est libre.

### Sujet : Pokémon
### Rechercher des

1. La dernière version du framework Laravel doit être utilisée
   // Done

2. Les réponses de l’API doivent être renvoyées en JSON 
   // Done

3. Les quatre verbes GET, POST, PATCH et DELETE doivent être utilisées 
   // DONE

4. L’application doit contenir au moins un modèle, une migration, un contrôleur, 
   une ressource API (https://laravel.com/docs/9.x/eloquent-resources), un form request et un test

   // L'application contient :
      - Un modèle (pokemon.php)
      - Une migration (2022_06_10_095603_create_pokemon_table.php)
      - Un contrôleur (pokemonApiController.php) 
      - Une ressource API (pokemonRessource.php)
      - Un form request (pokemonRequest.php)
      - un Test (ApiTest.php)
      - La gestion d’un fichier uploadé (récupération et stockage) (pdf,jpg,jpeg,gif,png, taille maximal du fichier : 20mo) (uploadController.php)
           
      

5. L’application doit contenir au choix : une notification déclenché par un évènement, 
   une commande Artisan (qui fait plus qu’imprimer du texte),
   ou la gestion d’un fichier uploadé (récupération et stockage)

6. Une petite description succincte du sujet que vous traitez doit être présente dans un fichier README.md 
   à la racine

7. ’application doit être entièrement fonctionnelle sans bug

Actuellement en cours :
   - une commande Artisan (qui fait plus qu’imprimer du texte),
      Créer un nouveau pokémon avec une commande artisan + Le stock dans
      un fichier .TXT dans storage/app/public
     

To be done : 

   -  une notification déclenché par un évènement (Echec)
      - Les notifications sont stocké dans la base de donnée dans la table 'notifications'
   - une commande Artisan (qui fait plus qu’imprimer du texte),
   - Faire un readme correct
   - Utiliser l'api pour afficher sur une page (bonus)
   


