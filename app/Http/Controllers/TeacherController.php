<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

use App\Teacher;
use App\User;

class TeacherController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware(function ($request, $next) {
            if($request->user()->type == 'superadmin'||$request->user()->type == 'admin') {
                return $next($request);
            } else {
                return redirect('/');
            }
        });
    }

    public function index()
    {
        $teachers = Teacher::all();
        return view('teacher.all_teachers',compact('teachers'));
    }

    public function add_teacher_form()
    {
        return view('teacher.add_teacher');
    }

    public function add_teacher(Request $request)
    {
        $user = User::where('user_id','T-'. $request->teacher_id)->first();
        if(!empty($user))
        {
            return redirect()->back()->withErrors('Teacher Alreadey added')->withInput();
        }

        // return $request;
        $user = User::create([
            'user_id' =>'T-'. $request->teacher_id,
            'user_name' => $request->teacher_name,
            'password' => Hash::make('123456'),
            'type' => 'teacher',
            'role' => $request->role,
        ]);
        
        Teacher::create([
            'teacher_id' => $request->teacher_id,
            'teacher_name' => $request->teacher_name,
            'email' => $request->email,
            'phone'=> $request->phone,
            'department' => $request->department,
            'join_year'=> $request->join_year,
            'user_id'=>$user->user_id
        ]);

        return redirect('/');

    }
}
