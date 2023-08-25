@extends('layout')

@section('content')

<body>  
    {!!$movie->body!!}
    
@endsection
@section('content2')
@auth
<form method="POST" action="/movies/{{$movie->slug}}/comment" class="comment-form">
    @csrf
    <div style="display: flex; flex-direction:row; ">
    <img src="https://i.pravatar.cc/60?u={{auth()->id()}}" alt="" class="comment-img">
    <h2 style="color: white;margin-left:15px; ">Want to participate?</h2>
    </div>
    <div>
        <textarea name="body" class="comment-text" cols="30" placeholder="Share your opinion" required></textarea>
        @error('body')
        <span style="font-size: x-small; color:red">{{$message}}</span>
        @enderror
    </div>
    <div>
        <button type="submit" class="comment-btn">Post</button>
    </div>
</form>
@else
    <a href="/" class="comment-redirect">Register or login to leave comments.</a>
@endauth

@foreach($movie->comments as $comment)
<div class="comment">
    <div style="display: flex;">
    <img src="https://i.pravatar.cc/60?u={{auth()->id()}}" alt="" class="comment-img">
    <div>
        <h3>{{$comment->user->username}}</h3>  
        <time>Posted {{$comment->created_at->format('F,j,Y,G:i a')}}</time>
        </div>
    </div>
        <p style="margin-left:55px">{{$comment->body}}</p>
</div>
@endforeach 

@endsection

</body>

