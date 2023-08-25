@extends('layout2')

@section('content1')
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
        <div>
            <form method="GET" action="#">
            <h1>Search for Films</h1>
           
            <div class="sarch">
            <input placeholder="superman" name="search" class="srch"  value="{{request('search')}}">
            </div>
            </form>
        </div>
        <div class="menu">
        <div x-data="{show:false}" @click.away="show= false">
            <div @click="show=! show" class="menubtn">
            <button  class="btn">{{isset ($currentCategory) ? $currentCategory->name : 'Categories'}}</button>
                <i class="fa-solid fa-caret-down arrow"></i>
            </div>
            <div x-show="show" class="cate" style="display:none">
            <a href="/movies" class="cat">All</a>
                @foreach($categories as $category)
                <a href="/movies/?category={{$category->slug}}&{{request()->getQueryString()}}" class="cat">{{ucwords($category->name)}}</a>
                @endforeach
            </div>
        </div>

        </div>
            </div>

    @foreach($movies as $movie)
    <div class="film">
            <a href="/movies/{{$movie->slug}}"> <img src="{{$movie->img1}}" alt="/intro.jpeg""></img>
                <p class="text">{{$movie->title}}</p>
            </a>
        </div>
    @endforeach
</body>
