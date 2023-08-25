<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function open()
    {
        return view('Register');
    }

    public function store()
    {
        //create user;

        $attributes=request()->validate([
            'name'=>'required|min:3',
            'username'=>'required|min:5|unique:users,username',
            'email'=>'required|email|max:255|unique:users,email',
            'password'=>['required','min:8'],
        ]);

        $user=User::create($attributes);

        //session()->flash('success','Your account has been created');

        //To log in the user

        auth()->login($user);

        return redirect("/movies")->with('success','Your account has been created');
    }

    
}
