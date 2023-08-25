<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="/css/style1.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/
ajax/libs/font-awesome/
6.2.0/css/all.min.css">
</head>
<body>
    <div class="open">
    <h1 class="open1">Movie Store</h1>
    <a class="login-btn" href="/login">Already registered ? Login</a>
    </div>
    
        <div class="first-container ">
            <h1>Welcome to our Website</h1>
            <button class="btn">Click to Join</button>
        </div>
        <div class="second-container active">
            <form method="POST" action="/">
            @csrf
            <div style="display: flex; flex-direction:row; justify-content:space-between">
            <h4>Register</h4>
            <i class="fa-sharp fa-solid fa-xmark fa-2x close-icon"></i>
            </div>
            <div class="reg">
             <label class="label" for="name">Enter your name:</label>
             <input type="text" name="name" class="input" placeholder="John" value="{{old('name')}}" required>
             @error('name')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg">
             <label class="label" for="username">Enter your username:</label>
             <input type="text" name="username" class="input" placeholder="John123" value="{{old('username')}}" required>
             @error('username')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg">
            <label class="label" for="email">Enter Your email:</label>
            <input type="email" name="email" class="input" placeholder="ex:spongebob123@gmail.com" value="{{old('email')}}" required>
            @error('email')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg">
            <label class="label" for="password">Enter Your password:</label>
            <input type="password" name="password" class="input" placeholder="password"  required>
            @error('password')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror
           </div>
           <div class="reg">
            <label class="label" for="password">Re-Enter Your password:</label>
            <input type="password" name="password" class="input" placeholder="password"  required>
            @error('password')
                <p style="margin-left:10px;">{{$message}}</p>
             @enderror   
           </div>
           <div class="pbtn">
            <button type="submit" class="popup-btn" href="/movies">Join</button>
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