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

        /* $request->validated();  */

        $result = pokemon::create([
            'nom_pok' => $request->input('nom_pok'), 
            'type_pok1' => $request->input('type_pok1'), 
            'type_pok2' => $request->input('type_pok2'), 
            'methode_evolve' => $request->input('methode_evolve'),
            'description' => $request->input('description'),
            'Dresseur' => $request->input('Dresseur')
        ]);

        return new pokemonRessource(($result));
        /* return redirect()->route('formulaire.get'); */

    }

    public function update(pokemonRequest $request, pokemon $pokemon){

        /* $request->validated(); */     
       
        $pokemon->update([
            'nom_pok' => $request->input('nom_pok'), 
            'type_pok1' => $request->input('type_pok1'), 
            'type_pok2' => $request->input('type_pok2'), 
            'methode_evolve' => $request->input('methode_evolve'), 
            'description' => $request->input('description'), 
            'Dresseur' => $request->input('Dresseur') 
        ]);

        return new pokemonRessource($pokemon);
    }

    public function destroy(pokemon $pokemon){
        
        $pokemon->delete();
        return response()->json([
            'status' => 'Cet element a ete supprime !'
        ]);
    }

}
