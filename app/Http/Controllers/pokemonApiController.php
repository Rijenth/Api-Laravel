<?php

namespace App\Http\Controllers;

use App\Models\pokemon;
use Illuminate\Http\Request;

// Le contrôleur 

class pokemonApiController extends Controller
{
    public function index(){
        $result = pokemon::all();
        return response()->json($result);
    }

    public function show(pokemon $pokemon){
        return response()->json($pokemon);
    }

    public function store(){

        request()->validate([
            // Les champs suivants sont obligatoires car ils ne peuvent
            // pas être NULL.
            'nom_pok' => 'required',
            'type_pok1' => 'required',
            'description' => 'required',
        ]);

        $result = pokemon::create([
            'nom_pok' => request('nom_pok'),
            'type_pok1' => request('type_pok1'),
            'type_pok2' => request('type_pok2'),
            'methode_evolve' => request('methode_evolve'),
            'description' => request('description'),
            'Dresseur' => request('Dresseur')
        ]);

        return response()->json($result, 201);

    }

    public function update(pokemon $pokemon){

        request()->validate([
            // Les champs suivants sont obligatoires car ils ne peuvent
            // pas être NULL.
            'nom_pok' => 'required',
            'type_pok1' => 'required',
            'description' => 'required',
        ]);

        $success = $pokemon->update([
            'nom_pok' => request('nom_pok'), 
            'type_pok1' => request('type_pok1'), 
            'type_pok2' => request('type_pok2'), 
            'methode_evolve' => request('methode_evolve'), 
            'description' => request('description'), 
            'Dresseur' => request('Dresseur') 
        ]);

        
        return response()->json();
    }

    public function destroy(pokemon $pokemon){
        $success = $pokemon->delete();
        return response()->json();
    }

}
