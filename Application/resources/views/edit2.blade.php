<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New movies</title>
    <link rel="stylesheet" href="/css/adminstyle2.css"> 
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
            <button class="btn">Click to Edit</button>
        </div>
        <div class="second-container active"> 
            <form method="POST" action="/admin/movies/{{$movie->id}}" enctype="multipart/form-data">
                @csrf
                @method('PATCH')
                <!-- method patch because we want the server know that this is not a new file and we are editing an existing one -->
            <div style="display: flex; flex-direction:row; justify-content:space-between; padding-bottom:10px;">
            <h4>{{$movie->title}}</h4>
            <i class="fa-sharp fa-solid fa-xmark fa-2x close-icon"></i>
            </div>      
            <div class="reg">
             <label class="label" for="title">Enter movie name:</label>
             <input type="text" name="title" class="input" placeholder="superman 2" value="{{old('title',$movie->title)}}" required>
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
             <option
              value="{{$category->id}}" 
             {{old('category_id' , $movie->category_id) == $category->id ? 'selected' : '' }}
             >
                {{ucwords($category->name)}}</option>
             @endforeach
             </select>
             @error('category')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg">
             <label class="label" for="slug">Enter movie slug:</label>
             <input type="text" name="slug" class="input" placeholder="superman-2" value="{{old('slug',$movie->slug)}}" required>
             @error('slug')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div style="display:flex; flex-direction:row; height:120px;">
           <div class="reg-file">
             <label class="label" for="img1">Enter movie first image directory:</label>
             <input type="file" name="img1" class="input" value="{{old('img1',$movie->img1)}}">
             @error('img1')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <img src="{{$movie->img1}}" alt="image not found" style="width: 20%; margin-top:10px;margin-left:5%;">
           </div>
           <div style="display:flex; flex-direction:row; height:120px;">
           <div class="reg-file">
             <label class="label" for="img2">Enter movie second image directory:</label>
             <input type="file" name="img2" class="input" value="{{old('img2')}}">
             @error('img2')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <img src="{{$movie->img2}}" alt="image not found" style="width: 20%; margin-top:10px;margin-left:5%;">
           </div>
           <div style="display:flex; flex-direction:row; height:120px;">
           <div class="reg-file">
             <label class="label" for="video">Enter movie video directory:</label>
             <input type="file" name="video" class="input" value="{{old('video')}}">
             @error('video')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <video src="{{$movie->video}}" alt="video not found" style="width: 20%; margin-top:10px;margin-left:5%;">
           </div>
           <div class="reg" style="margin-top:10px">
             <label class="label" for="excerpt">Enter movie excerpt:</label>
             <textarea type="text" name="excerpt" class="input" placeholder="John"  required>{{old('excerpt',$movie->excerpt)}}</textarea>
             @error('excerpt')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="pbtn">
            <button type="submit" class="popup-btn" href="/movies">Update</button>
           </div>
            </form>
        </div>
        @if (session()->has('success'))
        <div>
            <p x-data ="{show : true}"
                x-init="setTimeout(() =>show =false ,4000)"
                x-show=show
            class="session">{{session('success')}}</p>
        </div>
        @endif
        <script src="/js/index1.js"></script> 
</body>
</html>
