<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
class SessionsController extends Controller
{
    public function create()
    {
        return view('login');
    }
    public function store()
    {   
        //Validate the request
        $attributes=request()->validate([
            'email'=>'required|email',
            'password'=>'required'
        ]);
          //if authentification failed
        if(!auth()->attempt($attributes))
        {
            throw ValidationException::withMessages(['email' => 'Your provided credentials could not be verified']);
            //or

            // return back()
            // ->withInput()
            // ->withErrors(['email' => 'Your provided credentials could not be verified']);
        }
            //to prevent session fixation
            session()->regenerate();

            //attempt to authenticate and log in the user
            //based on the provided credentials

            return redirect("/movies")->with('success','Welcome Back!');     
    }
    public function destroy()
    {
        auth()->logout();

        return redirect("/")->with('success','GoodBye');
    }
}
