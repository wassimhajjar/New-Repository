<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Movie; 
use Illuminate\Validation\Rule;
class MovieController extends Controller
{
    public function index()
    {
        // $movies= Movie::latest()/*->with('category')*/->get();
        $movies=Movie::latest()->filter(request(['search','category']))->get();//->paginate(5);
         return view('movies',[
            'movies'=>$movies,
            'categories'=> Category::all(),
            'currentCategory'=>Category::firstWhere('slug',request('category'))/*where('slug',request('category'))->first()*/
          ]);
    }

    public function show(Movie $movie)
    {
        return view('movie',[
            'movie'=>$movie
        ]);
    }


    public function store()
    {

        $attributes=request()->validate([
            'title'=>['required'],
            'category_id'=>['required',Rule::exists('categories','id')],
            'img1' =>'required' ,//['required',Rule::unique('movies','img1')],
            'img2' => 'required',//['required',Rule::unique('movies','img2')],
            'video' => 'required',//['required',Rule::unique('movies','video')],
            'excerpt' =>['required'],
            'slug'  => ['required'],
        ]);

        $attributes['img1']=request()->file('img1')->store('public/images');
        $attributes['img2']=request()->file('img2')->store('public/images');
        $attributes['video']=request()->file('video')->store('public/videos');

       // ddd($img1);
       $movie= Movie::create([
            'title'=>$attributes['title'],
            'excerpt'=>$attributes['excerpt'],
            'category_id'=>$attributes['category_id'],
            'img1'=>asset('storage/'.request()->file('img1')->store('images')),
            'img2'=>asset('storage/'.request()->file('img2')->store('images')),
            'video'=>asset('storage/'.request()->file('video')->store('videos')),
            'slug'=>$attributes['slug'],
            'body'=>'<div class="main-container ">
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
        </div>',
            ]);
    
    return redirect('/movies');
     }
}
