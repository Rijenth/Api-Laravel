<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;



class ShowPokemonCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'pokemon:show {id}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Montre la page pokédex du pokémon';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $idPokemon = $this->argument('id');
        $result = Http::get('http://127.0.0.1:8000/api/pokemon/'.$idPokemon); // Ne pas faire ça sauf si API externe
    /*  $result = (new pokemonRessource(pokemon::find($idPokemon)))->response(); Méthode facilitée */
        $randomFileName = $idPokemon.time().'.txt';
        $path = Storage::disk('public')->put($randomFileName, $result);
        $this->info('Le resultat de votre requête a été stocké dans le repertoire storage/app/public sous le nom : '.$randomFileName);
    }
}
