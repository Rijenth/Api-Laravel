<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use phpDocumentor\Reflection\Types\Nullable;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        // Code qui verifie si la table existe
        if(!Schema::hasTable('pokemon')){

            Schema::create('pokemon', function (Blueprint $table) {
                $table->charset = 'utf8mb4';
                $table->collation = 'utf8mb4_unicode_ci';
                $table->engine = 'InnoDB';
                $table->bigIncrements('id_pok');
                $table->string('nom_pok', 20);
                $table->string('type_pok1', 10);
                $table->string('type_pok2', 10)->nullable();
                $table->string('methode_evolve', 20)->nullable();
                $table->text('description');
                $table->string('Dresseur', 15)->nullable();
                $table->text('couleur')->nullable();
            });

        }
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pokemon');
    }
};
