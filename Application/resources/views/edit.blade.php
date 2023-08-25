<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New movies</title>
    <link rel="stylesheet" href="/css/adminstyle1.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/
ajax/libs/font-awesome/
6.2.0/css/all.min.css">
</head>
<body>
    <div class="open">
    <h1 class="open1">Movie Store</h1>
    </div>
    
        <div class="first-container ">
            <h1>Welcome to our Website</h1>
            <button class="btn">Click to Edit Movies</button>
        </div>
        <div class="second-container active"> 
            <div style="display: flex; flex-direction:row; justify-content:space-between; padding-bottom:10px;">
            <h4>Add movies</h4>
            <i class="fa-sharp fa-solid fa-xmark fa-2x close-icon"></i>
            </div>      
            @foreach($movies as $movie)
                <div class="movie-container">
                    <a href="/movies/{{$movie->slug}}" style="text-decoration:none;color:black;font-family:cursive;width:70%;">
                        <p style="margin-left: 20px;">{{$movie->title}}</p>
                    </a>
                    <a  class="edit-btn" href="/admin/movies/{{$movie->id}}/edit">Edit</a>
                    <form method="POST" action="/admin/movies/{$movie->id}">
                        @csrf
                        @method('DELETE')
                        <button class="delete-btn">Delete</button>
                    </form>
                </div>
            @endforeach
        </div>
        <script src="/js/index1.js"></script> 
</body>
</html>
