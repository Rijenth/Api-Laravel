## Il consiste à développer une mini (web) API avec le framework Laravel respectant les contraintes           ## ci-dessous. Le sujet est libre.

### Sujet : Pokémon
### Rechercher des

1. La dernière version du framework Laravel doit être utilisée
   // Done

2. Les réponses de l’API doivent être renvoyées en JSON 
   // A vérifier 

3. Les quatre verbes GET, POST, PATCH et DELETE doivent être utilisées 
   // DONE (Bug sur le verbes patch)

4. L’application doit contenir au moins un modèle, une migration, un contrôleur, 
   une ressource API (https://laravel.com/docs/9.x/eloquent-resources), un form request et un test

   // L'application contient :
      - Un modèle (pokemon.php)
      - Une migration (2022_06_10_095603_create_pokemon_table.php)
      - Un contrôleur (pokemonApiController.php)

      Element ou je ne suis pas trop sur :
      - Une ressource API
      - Un form request

      Element absent :
      - un Test

5. L’application doit contenir au choix : une notification déclenché par un évènement, 
   une commande Artisan (qui fait plus qu’imprimer du texte),
   ou la gestion d’un fichier uploadé (récupération et stockage)

6. Une petite description succincte du sujet que vous traitez doit être présente dans un fichier README.md 
   à la racine

7. ’application doit être entièrement fonctionnelle sans bug


Ce que je dois faire : 

   - Verifier si l'API renvoie bien un réponse en JSON