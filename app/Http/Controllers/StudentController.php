<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use File;

// use App\Http\Requests\StudentInfoRequest;

use App\User;
use App\Student;
use App\Student\StuParents;
use App\Student\StuOfficeInfo;
use App\Student\StuSchoolInfo;

use App\Student\StuAttendance;
use App\SubjectMarks;

use App\Teacher;

class StudentController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware(function ($request, $next) {
            if((in_array(auth()->user()->type ,array("superadmin","admin","vice_principal","principal","co_odinetor","worker","student")))) {
                return $next($request);
            } else {
                return redirect('/')->with('error','You are not valid user');
            }
        });
    }

    public function index()
    {
        if(!(in_array(auth()->user()->type ,['superadmin','admin','principal','vice_principal','co_odinator']))) {
            return redirect('/')->with('error','Sorry,You are not valid user');
        }
        $students = Student::all();
        return view('student.all_students',compact('students'));
    }

    public function add_student_form()
    {

        // $data = (object)[
        //     'stu_name'=> chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
        //     'stu_class' => '',
        //     'stu_group'=> '',
        //     'stu_section'=>'',
        //     'stu_roll' => rand(10000,70000),
        //     'guide_teacher' =>'',
        //     'admition_date' => '',
        //     'nomination_no' =>'',
        //     'seccurity_code' =>rand(10000,70000),
        //     'nationality' => 'Bangladeshi',
        //     'religion' =>'Islam',
        //     'date_of_birth'=>'',
        //     'emargency1'=>'01234567890',
        //     'emargency2'=>'01234567890',
        //     'father_name'=>chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
        //     'father_occ'=>'',
        //     'father_pos'=>'',
        //     'father_ins'=>'',
        //     'father_income'=>'',
        //     'father_mobile'=>'01234567890',
        //     'father_image'=>'',
        //     'mother_name'=>chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
        //     'mother_occ'=>'',
        //     'mother_pos'=>'',
        //     'mother_ins'=>'',
        //     'mother_income'=>'',
        //     'mother_mobile'=>'01234567890',
        //     'mother_image'=>'',
        //     'guardian_name'=>chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
        //     'guardian_relation'=>'son',
        //     'guardian_occu'=>'',
        //     'guardian_ins'=>'',
        //     'guardian_pos'=>'',
        //     'guardian_income'=>'',
        //     'guardian_mobile'=>'01234567890',
        //     'guardian_image'=>'',
        //     'local_name'=>chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
        //     'local_relation'=>'father',
        //     'local_occu'=>'',
        //     'local_ins'=>'',
        //     'local_pos'=>'',
        //     'local_income'=>'',
        //     'local_mobile'=>'01234567890',
        //     'local_image'=>'',

        // ];

        $teachers = Teacher::all();
        $subs = config('constants._3rd_4th_subs');
        
        return view('student.add.add_student', compact('teachers','subs'));
    }

    public function add_student(Request $request)
    {
        // return $request;

        $this->validate($request,[
            // 'emergency1'       => 'required|max:14|min:11|max:14',
            // 'emergency2'      => 'required|max:14|min:11|max:14',
            'father_mobile'   => 'required|max:14|min:11|max:14',
            'mother_mobile'   => 'required|max:14|min:11|max:14',
            'stu_image'         => 'required|image|max:5000',
            'father_image'         => 'required|image|max:5000',
            'mother_image'         => 'required|image|max:5000'
        ]
        // [
        //     'page1.required' => 'Question Page1 is required'
        // ]
        );

        $user = User::where('user_id','S-'. $request->stu_roll)->first();
        if(!empty($user))
        {
            return redirect()->back()->withErrors('Alreadey added')->withInput();
        }

        //student
        $user_student = User::create([
            'user_id' => 'S-'.$request->stu_roll,
            'user_name' => $request->stu_name,
            'password' => Hash::make('123456'),
            'type' => 'student',
            'role' => 'none',
        ]);

        $ext = $request->file('stu_image')->getClientOriginalExtension();
        $stu_img = 's'.time().'.'.$ext;

        $student = Student::create([
            'student_id' =>$request->stu_roll ,
            'student_name'=> $request->stu_name,
            'nationality'=>$request->nationality,
            'religion'=>$request->religion,
            'date_of_birth'=>$request->date_of_birth,
            'image'=>$stu_img,
            // 'emergency1'=>$request->emergency1,
            // 'emergency2'=>$request->emergency2,
            'user_id'=>$user_student->user_id
        ]);
        $request->file('stu_image')->storeAs('public/students/student',$stu_img);
        

        StuOfficeInfo::create([
            'board_id' => $request->board_id,
            'class'=> $request->stu_class,
            'group'=> $request->stu_group,
            'section'=>$request->stu_section ,
            'roll'=> $request->stu_roll,
            'admission_date' => $request->admission_date,
            'nomination_count'=>$request->nomination_no ,
            'security_code'=> $request->seccurity_code,
            'student_id' => $student->student_id 
        ]);

        StuSchoolInfo::create([
            'class'=> $request->stu_class,
            'group'=> $request->stu_group,
            'section'=> $request->stu_section,
            'guide_teacher'=> $request->guide_teacher,
            'sub_trd' => $request->sub_3rd,
            'sub_fth' => $request->sub_4th,
            'student_id'=> $student->student_id
        ]);


        //parents
        $parents = User::create([
            'user_id' => 'P-'.$request->stu_roll,
            'user_name' => 'Parents',
            'password' => Hash::make('123456'),
            'type' => 'parents',
            'role' => 'none',
        ]);

        $ext = $request->file('father_image')->getClientOriginalExtension();
        $father_img = 'f'.time().'.'.$ext;

        $ext = $request->file('mother_image')->getClientOriginalExtension();
        $mother_img = 'm'.time().'.'.$ext;

        StuParents::create([
            'father_name'=>$request->father_name,
            'father_occu'=>$request->father_occ,
            'father_position'=>$request->father_pos,
            'father_ins'=>$request->father_ins,
            'father_income'=>$request->father_income,
            'father_mobile'=>$request->father_mobile,
            'father_image'=>$father_img,

            'mother_name'=>$request->mother_name,
            'mother_occu'=>$request->mother_occ,
            'mother_position'=>$request->mother_pos,
            'mother_ins'=>$request->mother_ins,
            'mother_income'=>$request->mother_income,
            'mother_mobile'=>$request->mother_mobile,
            'mother_image'=>$mother_img,

            'student_id' =>$student->student_id,
            'user_id'=> $parents->user_id
        ]);
        $request->file('stu_image')->storeAs('public/students/father',$father_img);
        $request->file('stu_image')->storeAs('public/students/mother',$mother_img);

        return redirect('/student')->with('success','Student Added Successfully');
    }

    public function view_student($id)
    {
        $teachers = Teacher::all();
        $subs = config('constants._3rd_4th_subs');

        $student = Student::find($id);
        
        return view('student.view.view_student',compact('student','teachers','subs'));
    }
    /* public function edit_student_form($id)
    {
        $student = Student::find($id);

        return view('student.edit.edit_student',compact('student'));
    } */

    public function edit_student(Request $request)
    {

    }

    public function delete_student($id)
    {
        
    }

    public function view_all_attendance()
    {
        if(!(in_array(auth()->user()->type ,array("student")))) {
            return redirect('/')->with('error','You have to be a student');
        }

        $student_id = auth()->user()->student->student_id;

        $all_attendance = StuAttendance::where('student_id',$student_id)->get();

        
        $persent_counts = DB::table('stu_attendances')->selectRaw('subject,count(attendance) as present, teacher_id')->where([
            'student_id' => $student_id, 
            'attendance'=>1
            ])->groupBy('subject')->get();

        $absent_counts = DB::table('stu_attendances')->selectRaw('subject,count(attendance) as absent, teacher_id')->where([
            'student_id' => $student_id, 
            'attendance'=>0
            ])->groupBy('subject')->get();

        // $persent_counts
        // return $all_attendance;
        return view('student.summary_att_student',compact('all_attendance'));
    }

    public function view_marks()
    {
        if(!(in_array(auth()->user()->type ,array("student")))) {
            return redirect('/')->with('error','You have to be a student');
        }

        $student_id = auth()->user()->student->student_id;
        $student = StuSchoolInfo::where('student_id',$student_id)->first();
        // return $student;
        $marks = SubjectMarks::where([
            'student_id' => $student->student_id,
            'class' => $student->class,
            'group' => $student->group,
        ])->get();

        // return $marks;
        return view('student.marks_stu',compact('marks'));
    }
}
