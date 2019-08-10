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

        if($request->role=='principal')
        {
            $have_principal = User::where('role',$request->role)->first(); 
            if(!empty($have_principal))
            {
                return redirect()->back()->with('error','Alreadey Have A Principal')->withInput();
            }
        }

        $this->validate($request,[
            'phone'   => 'required|max:14|min:11|max:14',
            'teacher_image' => 'required|image|max:5000',
        ]);

        // return $request;
        $user = User::create([
            'user_id' =>'T-'. $request->teacher_id,
            'user_name' => $request->teacher_name,
            'password' => Hash::make('123456'),
            'type' => 'teacher',
            'role' => $request->role,
        ]);
        
        $ext = $request->file('teacher_image')->getClientOriginalExtension();
        $teacher_img = 't'.time().'.'.$ext;

        Teacher::create([
            'teacher_id' => $request->teacher_id,
            'teacher_name' => $request->teacher_name,
            'email' => $request->email,
            'phone'=> $request->phone,
            'department' => $request->department,
            'join_year'=> $request->join_year,
            'image' => $teacher_img,
            'user_id'=>$user->user_id
        ]);
        $request->file('teacher_image')->storeAs('public/teachers',$teacher_img);

        return redirect('/')->with('success','Teacher Added Successfully');
    }

    public function view_teacher($id)
    {
        if (!(in_array(auth()->user()->type ,array("superadmin","admin"))))
        {
            return redirect('/')->with('error','Invalid User');
        }
        
        $teacher = Teacher::find($id);
        // return $teacher;
        return view('teacher.view_teacher',compact('teacher'));
    }

    public function edit_teacher_form($id)
    {
        if (!(in_array(auth()->user()->type ,array("superadmin","admin"))))
        {
            return redirect('/')->with('error','Invalid User');
        }

        $teacher = Teacher::find($id);
        return view('teacher.edit_teacher',compact('teacher','id'));
    }

    public function edit_teacher(Request $request)
    {
        if (!(in_array(auth()->user()->type ,array("superadmin","admin"))))
        {
            return redirect('/')->with('error','Invalid User');
        }

        Teacher::where([
            'user_id' => $request->user_id,
        ])->update([
            'teacher_name' => $request->teacher_name,
            'email' => $request->email,
            'phone' => $request->phone,
            'department' => $request->department,
            'join_year' =>$request->join_year,
        ]);

        User::where([
            'user_id'=>$request->user_id,
        ])->update([
            'role' => $request->role
        ]);

        return redirect('/teacher')->with('success','Teacher Edited');
    }
}
