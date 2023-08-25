<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use Illuminate\Validation\Rule;
class AdminMovieController extends Controller
{
    public function index()
    {
        return view('edit',[
            'movies'=>Movie::all(),
        ]);
    }

    public function create()
    {
        return view("create");
    }

    public function edit(Movie $movie)
    {
        return view('edit2',[
            'movie'=>$movie,
        ]);
    }

    public function update(Movie $movie)
    {
        $attributes=request()->validate([
            'title'=>['required',Rule::unique('movies','title')->ignore($movie->id)],
            'category_id'=>['required',Rule::exists('categories','id')],
            'img1' =>'image' ,//['required',Rule::unique('movies','img1')],
            'img2' => 'image',//['required',Rule::unique('movies','img2')],
            'video',//['required',Rule::unique('movies','video')],
            'excerpt' =>['required',Rule::unique('movies','excerpt')->ignore($movie->id)],
            'slug'  => ['required',Rule::unique('movies','slug')->ignore($movie->id)],
        ]);

        if(isset($attributes['img1']))
        {
            $attributes['img1']=request()->file('img1')->store('images');
        }

        if(isset($attributes['img2']))
        {
            $attributes['img2']=request()->file('img2')->store('images');
        }

        if(isset($attributes['video']))
        {
            $attributes['video']=request()->file('video')->store('videos');
        }

        $movie->body='<div class="main-container ">
        <img src="'.asset('storage/'.request()->file('img2')->store('images')).'" alt="'.asset('storage/'.$attributes['img2']).'">
        <h1>'.$attributes['title'].'</h1>
        <p>'.$attributes['excerpt'].'</p>
        <button class="btn">Watch now</button>
    </div>
    <div class="trailer-container active">
    <video  src="'.asset('storage/'.request()->file('video')->store('videos')).'" alt="'.asset('storage/'.$attributes['video']).'" controls></video>
         <i class="fa-sharp fa-solid fa-xmark fa-2x close-icon"></i>
    </div>
    <div>
        <h1 class="head-comment">Comments<h1>
    </div>';
        $attributes['body']='<div class="main-container ">
        <img src="'.asset('storage/'.request()->file('img2')->store('images')).'" alt="'.asset('storage/'.$attributes['img2']).'">
        <h1>'.$attributes['title'].'</h1>
        <p>'.$attributes['excerpt'].'</p>
        <button class="btn">Watch now</button>
    </div>
    <div class="trailer-container active">
    <video  src="'.asset('storage/'.request()->file('video')->store('videos')).'" alt="'.asset('storage/'.$attributes['video']).'" controls></video>
         <i class="fa-sharp fa-solid fa-xmark fa-2x close-icon"></i>
    </div>
    <div>
        <h1 class="head-comment">Comments<h1>
    </div>';
        $movie->update($attributes);
        return back()->with('success','Movie Updated successfully!');
    }

    public function destroy(Movie $movie)
    {
        $movie->delete();
        return back()->with('success','Movie deleted!');
    }
}
