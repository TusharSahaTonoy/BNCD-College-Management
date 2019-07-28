<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Auth;

use App\User;


class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['login_form']);
        $this->middleware(function ($request, $next) {
            if(auth()->user()->type == 'superadmin'||auth()->user()->type == 'admin') {
                return $next($request);
            } else {
                return redirect('/')->with('error','You are not valid user');
            }
        })->except(['login_form']);
    }

    public function index()
    {
        $users = User::all();
        return view('user.all_users',compact('users'));
    }

    public function add_admin_form()
    {
        if(auth()->user()->type != 'superadmin') {
            return redirect('/')->with('error','You are not valid user');
        }

        return view('admin.register');
    }

    public function add_admin(Request $request)
    {
        if(auth()->user()->type != 'superadmin') {
            return redirect('/')->with('error','You are not valid user');
        }

        $this->validate($request,[
            'user_id' => ['required', 'string', 'max:255','unique:users'],
            'user_name' => ['required', 'string','max:255'],
        ]);
        
        User::create([
            'user_id' => $request->user_id,
            'user_name' => $request->user_name,
            'password' => Hash::make('123456'),
            'type' =>'admin',
            'role' =>'admin',
        ]);

        return redirect('/users')->with('Sussess','Admin Added');
    }

    public function login_form()
    {
        if(Auth::check())
            return redirect('/')->with('error','You are already logged in');

        return view('user.login');
    }

    public function edit_form($id)
    {

    }
    public function edit(Request $r)
    {
        return $r;
    }
}
