<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

use App\User;


class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['login_form']);
        $this->middleware(function ($request, $next) {
            if($request->user()->type == 'superadmin'||$request->user()->type == 'admin') {
                return $next($request);
            } else {
                return redirect('/');
            }
        })->except(['login_form']);
    }

    public function index()
    {
        $users = User::all();
        return view('user.all_users',compact('users'));
    }

    public function add_admin()
    {
        return view('admin.register');
    }

    public function login_form()
    {
        if(Auth::check())
            return redirect('/')->with('errors','You are already logged in');

        return view('user.login');
    }
}
