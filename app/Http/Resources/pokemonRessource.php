<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class pokemonRessource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id_pok' => (string)$this->id_pok,
            'nom_pok' => $this->nom_pok,
            'type_pok1' => $this->type_pok1,
            'type_pok2' => $this->type_pok2,
            'methode_evolve' => $this->methode_evolve,
            'description' => $this->description,
            'Dresseur' => $this->Dresseur,
            'couleur' => $this->couleur,
        ];
    }
}
