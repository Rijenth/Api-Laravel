<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pokemon extends Model
{
    use HasFactory;
    protected $table = 'pokemon';
    public $timestamps = false;
    protected $primaryKey = 'id_pok';
    protected $fillable = ['id_pok','nom_pok','type_pok1','type_pok2','methode_evolve', 'description', 'Dresseur', 'couleur'];
    
}
