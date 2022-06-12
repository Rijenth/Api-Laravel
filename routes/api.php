<?php

use App\Http\Controllers\pokemonApiController;
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
Route::get('/pokemon', [pokemonApiController::class, 'index']);

// Bonus : La méthode 'show'
Route::get('/pokemon/{pokemon}', [pokemonApiController::class, 'show']);

// Le verbe POST
Route::post('/pokemon', [pokemonApiController::class, 'store']);

// Le verbe PATCH
Route::patch('/pokemon/{pokemon}', [pokemonApiController::class, 'update']);

// Le verbe DELETE
Route::delete('/pokemon/{pokemon}', [pokemonApiController::class, 'destroy']);