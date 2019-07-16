<?php

namespace App\Http\Controllers\Student;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

use App\User;
use App\Student;
use App\Student\StuParents;
use App\Student\StuOfficeInfo;
use App\Student\StuSchoolInfo;

class StudentController extends Controller
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
        $students = Student::all();
        return view('student.all_students',compact('students'));
    }

    public function add_student_form()
    {

        $data = (object)[
            'stu_name'=> chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
            'stu_class' => '',
            'stu_group'=> '',
            'stu_section'=>'',
            'stu_roll' => rand(10000,70000),
            'guide_teacher' =>'',
            'admition_date' => '',
            'nomination_no' =>'',
            'seccurity_code' =>rand(10000,70000),
            'nationality' => 'Bangladeshi',
            'religion' =>'Islam',
            'date_of_birth'=>'',
            'emargency1'=>'01234567890',
            'emargency2'=>'01234567890',
            'father_name'=>chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
            'father_occ'=>'',
            'father_pos'=>'',
            'father_ins'=>'',
            'father_income'=>'',
            'father_mobile'=>'01234567890',
            'father_image'=>'',
            'mother_name'=>chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
            'mother_occ'=>'',
            'mother_pos'=>'',
            'mother_ins'=>'',
            'mother_income'=>'',
            'mother_mobile'=>'01234567890',
            'mother_image'=>'',
            'guardian_name'=>chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
            'guardian_relation'=>'son',
            'guardian_occu'=>'',
            'guardian_ins'=>'',
            'guardian_pos'=>'',
            'guardian_income'=>'',
            'guardian_mobile'=>'01234567890',
            'guardian_image'=>'',
            'local_name'=>chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)). ' ' .chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)).chr(rand(65,122)),
            'local_relation'=>'father',
            'local_occu'=>'',
            'local_ins'=>'',
            'local_pos'=>'',
            'local_income'=>'',
            'local_mobile'=>'01234567890',
            'local_image'=>'',

        ];
        return view('student.add.add_student', compact('data'));
    }

    public function add_student(Request $request)
    {
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

        $student = Student::create([
            'student_id' =>$request->stu_roll ,
            'student_name'=> $request->stu_name,
            'nationality'=>$request->nationality,
            'religion'=>$request->religion,
            'date_of_birth'=>$request->date_of_birth,
            'image'=>'',
            'emergency1'=>$request->emargency1,
            'emergency2'=>$request->emargency2,
            'user_id'=>$user_student->user_id
        ]);
        
        // $student = new Student(); 
        // $student->student_id = $request->stu_roll;
        // $student->student_name =  $request->stu_name;

        // $student->user_id = $user_student->user_id;
        // $student->save();

        StuOfficeInfo::create([
            'class'=> $request->stu_class,
            'group'=> $request->stu_group,
            'section'=>$request->stu_section ,
            'roll'=> $request->stu_roll,
            'nomination_count'=>$request->nomination_no ,
            'security_code'=> $request->seccurity_code,
            'student_id' => $student->student_id 
        ]);

        StuSchoolInfo::create([
            'class'=> $request->stu_class,
            'group'=> $request->stu_group,
            'section'=> $request->stu_section,
            'guide_teacher'=> $request->guide_teacher,
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

        StuParents::create([
            'father_name'=>$request->father_name,
            'father_occu'=>$request->father_occ,
            'father_position'=>$request->father_pos,
            'father_ins'=>$request->father_ins,
            'father_income'=>$request->father_income,
            'father_mobile'=>$request->father_mobile,
            'father_image'=>$request->father_image,

            'mother_name'=>$request->mother_name,
            'mother_occu'=>$request->mother_occ,
            'mother_position'=>$request->mother_pos,
            'mother_ins'=>$request->mother_ins,
            'mother_income'=>$request->mother_income,
            'mother_mobile'=>$request->mother_mobile,
            'mother_image'=>$request->mother_image,

            'student_id' =>$student->student_id,
            'user_id'=> $parents->user_id
        ]);

        return redirect('/');

    }
}
