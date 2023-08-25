<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->id();
            /*   $table->unsignedBigInteger('movie_id');//unsignedBigInteger because the id is a BigInteger 
            $table->foreign('movie_id')->references('id')->on('movies')->cascadeOnDelete();*/
            //or
            $table->foreignId('movie_id')->constrained()->cascadeOnDelete();//will delete the comments related to a movie if we deleted a movie from the database.
            //$table->foreignId('movie_id')->constrained();//will not delete the comments related to a movie even if we deleted a movie from the database.
 
            $table->foreignId('user_id')->constrained()->cascadeOnDelete();
            $table->text('body');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comments');
    }
};