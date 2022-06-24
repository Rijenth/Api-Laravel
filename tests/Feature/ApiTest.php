<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class ApiTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */

    

    public function test_json_structure_of_the_response_is_ok()
    {
        $this
        ->getJson(route('pokemon.show', ['pokemon' => "151"]))
        ->assertOk()
        ->assertJsonCount(8, 'data')
        ->assertJsonStructure([
            'data' => [
                'id_pok',
                'nom_pok',
                'type_pok1',
                'type_pok2',
                'methode_evolve',
                'description',
                'Dresseur',
                'couleur'
            ]

        ]);

    }
 
}
