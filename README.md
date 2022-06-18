# Mini projet API Laravel

### Description
Dans le cadre d'un test technique pour la société Tylto, j'ai travaillé sur une petite API avec le framework Laravel version 9.17.0. Les fonctionnalités précises de cet application sont disponibles dans le tableau en fin de page.

### Le sujet
Grand fan des pokémons à mes heures perdues, j'ai utilisé une de mes base de donnée, contenant les pokémons de la 1ère génèration, afin de créer un pokédex. Cet API permet ainsi de voir, chercher, mettre à jour et enfin supprimer un pokémon.

# Prérequis 

### Préparation
1. Avoir le logiciel MAMP d'installer sur votre ordinateur.
2. Avoir la dernière version de PHP (8.1.0).
3. Sur PHPMYADMIN (ou sur terminal), créer une database 'pokedex' et y importer la bdd 'pokedex.sql'.
4. Telecharger et installer 'Composer' : [https://getcomposer.org/download/](https://getcomposer.org/download/)
   1. Lors de l'installation, vous devrez lier Composer au PHP que vous utilisez sur MAMP : [Lier Composer à PHP/MAMP](https://documentation.mamp.info/en/MAMP-PRO-Windows/How-Tos/General/SetupComposer/#:~:text=Install%20Composer&text=Click%20on%20the%20“Composer-Setup,be%20guided%20through%20the%20installation)
5. Ouvrir un terminal, utiliser la commande 'cd' pour vous rendre dans 'MAMP\htdocs'.
6. Dans MAMP\bin\php\php8.1.0\php.ini, vous devez enlever le commentaire (';') pour les extentions suivantes : 
   1. 'extension=pdo_mysql'
   2. 'extension=fileinfo'
   3. 'extension=openssl'
7. Lancer la commande 'composer create-project laravel/laravel example-app' pour créer un projet Laravel dont le nom sera 'example-app'.
   1. Si vous avez une erreur sur les extensions lors de la création du projet, assurez-vous que les extensions 'fileinfo' et 'openssl' ne sont pas en commentaire dans le fichier php.ini de la version de PHP que vous utilisez.
8. Utiliser la commande 'cd' pour vous rendre dans le dossier 'MAMP\htdocs\example-app'.
   1. Vous pouvez vérifier la version de Composer en tapant 'composer -v' dans le terminal.
   2. Vous pouvez vérifier la version de Laravel en tapant 'php artisan' dans le terminal.

### Lancer le projet

1. Lancer le serveur MAMP.
2. Ouvrir un terminal, utiliser 'cd' pour vous rendre dans MAMP\htdocs\example-app.
3. Copier/Coller tout les fichiers de mon projet dans ce fichier.
4. Modifier la variable DB_DATABASE dans le fichier '.env' tel que :
   1. DB_DATABASE=pokedex
5. Dans le terminal, taper 'php artisan serve' pour lancer l'application.

# Résumé technique

| Fonctionnalité             | Disponibilité | Commentaire                                   | 
| ------------------- | -- | ---------------------------------------- | 
| La dernière version du framework Laravel doit être utilisée        | ✅ | Laravel 9.17.0 |
| Les réponses de l’API doivent être renvoyées en JSON                | ✅             | |
| Les quatre verbes GET, POST, PATCH et DELETE doivent être utilisées | ✅             | |
| ----------------------------------------|----------------|----------------|               
| L’application contient au moins :       |              | |                 
| Un modèle | ✅             | pokemon.php |
| Une migration                | ✅             | 2022_06_10_095603_create_pokemon_table.php |               
| Un contrôleur                  | ✅             | pokemonApiController.php |
| Une ressource API                | ✅             | pokemonRessource.php |
| Un Form Request                | ✅             | pokemonRequest.php |               
| Un test                  | ✅             | ApiTest.php |
| ---------------------------|--------------|----------------|   
| Gestion d’un fichier uploadé (récupération et stockage)          | ✅| uploadController.php // J'ai crée une view avec un formulaire pour que vous puissiez test l'upload de fichier |
| Une commande Artisan (qui fait plus qu’imprimer du texte)        | ✅ | ShowPokemonCommand.php 
                                                                           // La commande : php artisan pokemon:show {id} 
                                                                           // 'id' => Le numéro du pokémon 
                                                                           // Cette commande récupère et stock les données du pokémon dans un fichier .txt au                                                                                 niveau de storage\app\public |             
