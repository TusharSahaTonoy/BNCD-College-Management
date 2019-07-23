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
        // $this->middleware(function ($request, $next) {
        //     if($request->user()->type == 'superadmin'
        //     ||$request->user()->type == 'admin'
        //     ||$request->user()->type == 'teacher'
        //     ||$request->user()->type == 'worker') {
        //         return $next($request);
        //     } else {
        //         return redirect('/');
        //     }
        // });
    }

    public function index()
    {
        if (!(in_array(auth()->user()->type ,array("superadmin","admin","vice_principal","principal","co_odinetor","worker"))))
        {
            return redirect('/')->with('error','Invalid User');
        }
        
        $teachers = Teacher::all();
        return view('teacher.all_teachers',compact('teachers'));
    }

    public function add_teacher_form()
    {
        if (!(in_array(auth()->user()->type ,array("superadmin","admin","vice_principal","principal","co_odinetor","worker"))))
        {
            return redirect('/')->with('error','User Not Valid');
        }

        return view('teacher.add_teacher');
    }

    public function add_teacher(Request $request)
    {
        if (!(in_array(auth()->user()->type ,array("superadmin","admin","vice_principal","principal","co_odinetor","worker"))))
        {
            return redirect('/')->with('error','Invalid User');
        }

        $user = User::where('user_id','T-'. $request->teacher_id)->first();
        if(!empty($user))
        {
            return redirect()->back()->with('error','Teacher Alreadey added')->withInput();
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

        return redirect('/')->with('success','Teacher Added Successfully');
    }

    public function view_teacher($id)
    {
        $teacher = Teacher::find($id);
        return view('teacher.view_teacher',compact('teacher'));
    }

    public function edit_teacher_form($id)
    {
        if (!(in_array(auth()->user()->type ,array("superadmin","admin","vice_principal","principal","co_odinetor","worker"))))
        {
            return redirect('/')->with('error','Invalid User');
        }

        $teacher = Teacher::find($id);
        return view('teacher.edit_teacher',compact('teacher','id'));
    }
    public function edit_teacher(Request $request)
    {
        if (!(in_array(auth()->user()->type ,array("superadmin","admin","vice_principal","principal","co_odinetor","worker"))))
        {
            return redirect('/')->with('error','Invalid User');
        }

        $teacher = Teacher::find($request->id);
        $teacher->teacher_name = $request->teacher_name;
        $teacher->email =$request->email;
        $teacher->phone =$request->phone;
        $teacher->department =$request->department;
        $teacher->join_year =$request->join_year;

        $teacher->save();

        return redirect('/teacher');
    }
}
