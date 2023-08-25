<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies</title>
    <link rel="stylesheet" href="/css/style2.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/
ajax/libs/font-awesome/
6.2.0/css/all.min.css">
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
</head>

<body>
    <div class="first-container">
        <div x-data="{show:false}" @click.away="show= false" class="welcome">
            <div>
            <button @click="show=! show" class="welcome-btn">Welcome
            @auth
                 {{auth()->user()->name}} 
            @endauth
            to our Collection!</button>
            </div>
            @admin
            <div x-show="show" class="cate2" style="display:none">
                <a href="{{auth()->user()->isadmin ? '/admin/movies/create' : '/#' }}" class="cat2">Add New movies</a>
                <a href="{{auth()->user()->isadmin ? '/admin/movies' : '/#' }}" class="cat2">Edit or Delete movies</a>
            </div>
            @endadmin
        </div>
        <div class="srch-container">
            <form method="GET" action="#">
            <h1>Search for Films</h1>
            @if(request('category'))
            <input type="hidden" name="category" value="{{request('category')}}">
            @endif
            <div class="sarch">
            <input placeholder="search for film or category"
                   name="search" 
                   class="srch" 
                   value="{{request('search')}}
                   ">
            </div>
            </form>
        </div>
        <div style="width: 20%;">
        <div class="menu">
        <!-- <h1>Choose category</h1>
        {{isset ($currentCategory)?$currentCategory->name : 'Categories'}}
         <select name="formal" onchange="javascript:handleSelect(this)" class="slct">
         {{isset ($currentCategory)?$currentCategory->name : 'Categories'}}
            <option value="/movies">All</option>
             <option value="/categories/Comedy">Comedy</option>
            <option value="/categories/Action">Action</option>
            <option value="/categories/Horror">Horror</option>
            <option value="/categories/Adventure">Adventure</option>
            <option value="/categories/Family">Family</option> 
            @foreach($categories as $category)
            <option value="/categories/{{$category->slug}}">{{$category->name}}</option>
            @endforeach
        </select> -->
        <div x-data="{show:false}" @click.away="show= false">
            <div @click="show=! show" class="menubtn">
            <button  class="btn">{{isset ($currentCategory) ? $currentCategory->name : 'Categories'}}</button>
                <i class="fa-solid fa-caret-down arrow"></i>
            </div>
            <div x-show="show" class="cate" style="display:none">
            <a href="/movies/?{{http_build_query(request()->except('category','page'))}}" class="cat">All</a>
                @foreach($categories as $category)
                <a href="/movies/?category={{$category->slug}}&{{http_build_query(request()->except('category','page'))}}" class="cat">{{ucwords($category->name)}}</a>
                @endforeach<!--request()->except('category'):is an array with everything except category
            to convert to query we use http_build_query(request()->except('category'))-->
                
            </div>
        </div>
        @auth
        <div>
        <form method="POST" action="/logout">
            @csrf
            <button type="submit" class="logout-btn">
                Log out
            </button>
        </form>
        </div>
        @endauth
        </div>
        </div>
    </div>
    <div class="films">
        @foreach($movies as $movie)
        <div class="film">
            <a href="/movies/{{$movie->slug}}">
           <img src="{{$movie->img1}}" alt="">
                <p class="text">{{$movie->title}}</p>
            </a>
        </div>
        @endforeach
        @if($movies->count()==0)
        <h1 class="nofilm">There is no films right now.</h1>
        @endif
    @if (session()->has('success'))
        <div>
            <p x-data ="{show : true}"
                x-init="setTimeout(() =>show =false ,4000)"
                x-show=show
            class="session">{{session('success')}}</p>
        </div>
        @endif
    <script src="/js/index2.js"></script>
</body>
</html>