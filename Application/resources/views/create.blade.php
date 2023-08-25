<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New movies</title>
    <link rel="stylesheet" href="/css/adminstyle.css"> 
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
            <button class="btn">Click to Add Movies</button>
        </div>
        <div class="second-container active">
            <form method="POST" action="/admin/movies" enctype="multipart/form-data">
                @csrf
                <div style="display: flex; flex-direction:row; justify-content:space-between">
            <h4>Add movies</h4>
            <i class="fa-sharp fa-solid fa-xmark fa-2x close-icon"></i>
            </div>
            <div class="reg">
             <label class="label" for="title">Enter movie name:</label>
             <input type="text" name="title" class="input" placeholder="superman 2" value="{{old('name')}}" required>
             @error('title')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg">
             <label class="label" for="category_id">Enter movie category:</label>
             <select name="category_id" class="select" required>
             @php 
             $categories=\App\Models\Category::all();
             @endphp
             @foreach($categories as $category)
             <option value="{{$category->id}}">
                {{ucwords($category->name)}}</option>
             @endforeach
             </select>
             @error('category')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg">
             <label class="label" for="slug">Enter movie slug:</label>
             <input type="text" name="slug" class="input" placeholder="superman-2" value="{{old('slug')}}" required>
             @error('slug')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg-file">
             <label class="label" for="img1">Enter movie first image directory:</label>
             <input type="file" name="img1" class="input" value="{{old('img1')}}" required>
             @error('img1')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg-file">
             <label class="label" for="img2">Enter movie second image directory:</label>
             <input type="file" name="img2" class="input" value="{{old('img2')}}" required>
             @error('img2')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg-file">
             <label class="label" for="video">Enter movie video directory:</label>
             <input type="file" name="video" class="input" value="{{old('video')}}" required>
             @error('video')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg">
             <label class="label" for="excerpt">Enter movie excerpt:</label>
             <textarea type="text" name="excerpt" class="input" placeholder="John"  required>{{old('excerpt')}}</textarea>
             @error('excerpt')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="pbtn">
            <button type="submit" class="popup-btn" href="/movies">Join</button>
           </div>
            </form>
        </div>

        <script src="/js/index1.js"></script> 
</body>
</html>
