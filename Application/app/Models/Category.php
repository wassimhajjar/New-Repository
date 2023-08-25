<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;//Category::factory()
    //protected $with='movies';
    public function movies(){
        return $this->hasMany(Movie::class);
    }
}
