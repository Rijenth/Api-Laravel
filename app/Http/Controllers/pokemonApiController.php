<?php

namespace App\Http\Controllers;

use App\Models\pokemon;
use Illuminate\Http\Request;

// Le contrôleur 

class pokemonApiController extends Controller
{
    
    public function index(){

        return pokemon::all();

    }

    public function store(){

        request()->validate([
            'nom_pok' => 'required',
            'type_pok1' => 'required',
            'description' => 'required',
        ]);

        return pokemon::create([
            'nom_pok' => request('nom_pok'),
            'type_pok1' => request('type_pok1'),
            'type_pok2' => request('type_pok2'),
            'methode_evolve' => request('methode_evolve'),
            'description' => request('description'),
            'Dresseur' => request('Dresseur')
        ]);

    }

    public function update(pokemon $pokemon){

        request()->validate([
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

        return [
            'success' => $success
        ];
    }

    public function destroy(pokemon $pokemon){

        $success = $pokemon->delete();

        return [ 
            'success' => $success
        ];
    }

}
