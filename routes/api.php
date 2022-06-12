<?php
use App\Models\pokemon;
use GrahamCampbell\ResultType\Success;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Le verbe GET 
Route::get('/pokemon', function(){
    return pokemon::all();
});

// Le verbe POST
Route::post('/pokemon', function(){

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
});

// Le verbe PATCH
Route::patch('/pokemon/{pokemon}', function(pokemon $pokemon){

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
    
});

// Le verbe DELETE

Route::delete('/pokemon/{pokemon}', function(pokemon $pokemon){

    $success = $pokemon->delete();

    return [ 

        'success' => $success
        
    ];
});