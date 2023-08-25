<?php

use App\Http\Controllers\AdminMovieController;
use App\Models\Category;
use App\Models\Movie;
use Illuminate\Routing\Controllers\Middleware;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\File;
use Spatie\YamlFrontMatter\YamlFrontMatter;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionsController;
use App\Http\Controllers\MovieCommentsController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

//  Route::get('/',function () {
//      return view('Register');
// });

/*Route::get('/movies/{movie}', function ($slug) {
    $path=__DIR__ . "/../resources/movies/{$slug}.html";
    if(!file_exists($path))
    {
        abort(404);
    }
    //For caching
   /* $movie=cache()->remember("movies.{$slug}",10,function() use ($path){
        var_dump('file_get_contents');
        return file_get_contents($path);
    });
 */
  //  $movie=cache()->remember("movies.{$slug}",5,fn()=> file_get_contents($path));
    //$movie=file_get_contents($path);
    /*return view('movie',[
        'movie' => $movie
    ]);
});
*/

//  Route::get('/movies/{movie:slug}',function(Movie $movie){
// //     // $movie=Movie::find($title);
// //     //$x=  public_path("trailer.mp4");
// //     // ddd($movie->video);
// //      //   ddd($x);
//       return view('movie',[
// //         // 'movie'=>Movie::findOrfail($id)
//          'movie' => $movie

//      ]);
// });

  //Route::get('/movies',[MovieController::class ,'index']);//function(){
//     $movies= Movie::latest();
//     if(request('search')){
//         $movies->where('title','like','%'.request('search').'%');
//     } 
//     // $movies= Movie::latest()/*->with('category')*/->get();

//      return view('movies',[
//         'movies'=>$movies->get(),
//         'categories'=> Category::all()
//       ]);

    // $document=YamlFrontMatter::parseFile(
    //     resource_path("movies\Darkmode.html")
    //  );
    //  ddd($document->title);
    //Compose packages
    // $files=File::files(resource_path("movies"));
    // $movies=[];
    // foreach($files as $file){
    //     $document=YamlFrontMatter::parseFile($file);
    //     $movies[]=new Movie(
    //         $document->title,
    //         $document->date,
    //         $document->excerpt,
    //         $document->body(),
    //     );
    // }
    // ddd($movies[2]);
        //End Compose packages
    //Collections
    // $movies=collect(File::files(resource_path("movies")))
    //     ->map(function($file){
    //     return YamlFrontMatter::parseFile($file);
    // })
    // ->map (function($document){
    //     return new Movie(
    //         $document->title,
    //         $document->date,
    //         $document->excerpt,
    //         $document->body(),
    //         $document->slug,
    //     );
    // }); 
    //End Collections

     //});


// Route::get('/movies',function(){
//     return view('movies');
// });

// Route::get("/categories/{category:slug}",function(Category $category){
//     $categories=$category->movies;//->load('movie');
//     $movies=Movie::latest()->get();
//      //dd($movies[0]->img1);
//     return view('category',[
//        'categories'=> Category::all(),
//        'currentCategory'=>$category,
//        'movies'=>$movies,
//     ]);
// });

// Route::get('/',function () {
//     return view('Register');
// });

Route::get("/",[RegisterController::class,'open']);
Route::post("/",[RegisterController::class,'store']);


Route::post("/logout",[SessionsController::class,'destroy'])->middleware('auth');
Route::get('login',[SessionsController::class,'create']);
Route::post("/login",[SessionsController::class,'store']);

Route::get("/movies/?category={{category:slug}}",[MovieController::class,'index']);
Route::get("/movies",[MovieController::class,'index']);
Route::get("/movies/{movie:slug}",[MovieController::class,'show']);
Route::post("/movies/{movie:slug}/comment",[MovieCommentsController::class,'store']);

Route::get("/admin/movies/create",[AdminMovieController::class,'create'])->middleware('can:admin');
Route::post("/admin/movies",[MovieController::class,'store'])->middleware('can:admin');
Route::get("/admin/movies",[AdminMovieController::class,'index'])->middleware('can:admin');
Route::get("/admin/movies/{movie}/edit",[AdminMovieController::class,'edit'])->middleware('can:admin');
Route::patch("/admin/movies/{movie}",[AdminMovieController::class,'update'])->middleware('can:admin');
Route::delete("/admin/movies/{movie}",[AdminMovieController::class,'destroy'])->middleware('can:admin');