<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
class MovieCommentsController extends Controller
{
    public function store(Movie $movie)
    {

        //Validation
        request()->validate([
            'body'=>'required'
        ]);
            $movie->comments()->create([
                'user_id'=> auth()->id(),
                'body'=>request('body')
            ]);

        return back();
    }
}
