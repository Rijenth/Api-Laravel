<?php

namespace App\Http\Controllers;

use App\Models\pokemon;
use Illuminate\Http\Request;
use App\Http\Resources\pokemonRessource;
use App\Http\Requests\pokemonRequest;

// Le contrôleur 

class pokemonApiController extends Controller
{
    public function index(){
        return pokemonRessource::collection(pokemon::all());
    }

    public function show(pokemon $pokemon){
        return new pokemonRessource(($pokemon));
    }

    public function store(pokemonRequest $request){

        $request->validated();

        $result = pokemon::create([
            'nom_pok' => request('nom_pok'),
            'type_pok1' => request('type_pok1'),
            'type_pok2' => request('type_pok2'),
            'methode_evolve' => request('methode_evolve'),
            'description' => request('description'),
            'Dresseur' => request('Dresseur')
        ]);

        return new pokemonRessource(($result));

    }

    public function update(pokemonRequest $request, pokemon $pokemon){

        $request->validated();     
       
        $pokemon->update([
            'nom_pok' => request('nom_pok'), 
            'type_pok1' => request('type_pok1'), 
            'type_pok2' => request('type_pok2'), 
            'methode_evolve' => request('methode_evolve'), 
            'description' => request('description'), 
            'Dresseur' => request('Dresseur') 
        ]);

        return new pokemonRessource($pokemon);
    }

    public function destroy(pokemon $pokemon){
        
        $pokemon->delete();
        return response()->json(null, 204);
    }

}
