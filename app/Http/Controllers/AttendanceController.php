<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

use App\User;
use App\Teacher;
use App\SubjectTeacher;
use App\Student\StuSchoolInfo;
use App\Student\StuAttendance;

class AttendanceController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware(function ($request, $next) {
            if($request->user()->type != 'worker') {
                return $next($request);
            } else {
                return redirect('/')->with('error','You do not have that privilege');
            }
        });
    }

    public function index()
    {
        $all_att = StuAttendance::select('class','group','section','subject','att_date')->where('teacher_id',auth()->user()->teacher->teacher_id)->groupBy('class','group','subject','section', 'att_date')->get();

        return view('attendance.all_att_sub_teacher',compact('all_att'));
    }

    public function attendance_subject_list()
    {
        // $teacher = Teacher::select('teacher_id')->where('user_id',auth()->user()->user_id)->first();
        // $subjects = SubjectTeacher::where('teacher_id', $teacher->teacher_id)->get();

        $subjects = SubjectTeacher::where('teacher_id', auth()->user()->teacher->teacher_id)->get();

        return view('attendance.take_attendance',compact('subjects'));
    }

    public function attendence_form($section)
    {
        $data = explode(",", $section);
        $att = (object)[
            'class' => $data[0],
            'group' => $data[1],
            'subject' => $data[2],
            'section' => $data[3]
        ];

        $student_list = StuSchoolInfo::where([
            'class' => $data[0],
            'group' => ($data[1] != ''?:null ),
            'section' => $data[3],
        ])->get();


        // return $student_list;
        
        return view('attendance.student_list',compact('att','student_list'));
    }

    public function attendence_store(Request $request)
    {
        // return $request;
        if(empty($request->att_list))
            return redirect()->back()->withErrors('please select present or absent or leave')->withInput();
        
        $pre_att = StuAttendance::where([
            'class' => $request->class ,
            'group' => ($request->group != ''?:null ),
            'subject' => $request->subject ,
            'section' => $request->section ,
            'att_date' => $request->att_date
        ])->first();

        if(!empty($pre_att))
        {
            return redirect('attendance/take-attendance')->with('error','Attendence already taken');
        }

        foreach ($request->att_list as $stu_id => $att)
        {
            StuAttendance::create([
                'student_id' =>$stu_id,
                'class' => $request->class ,
                'group' => $request->group ,
                'subject' => $request->subject ,
                'section' => $request->section ,
                'teacher_id' => $request->teacher_id,
                'attendance' => $att,
                'att_date' => $request->att_date
            ]);
        }
        return redirect('/attendance/take-attendance');

    }

    public function view_attendance($att)
    {
        //9, Science, aaa, A, 2019-07-22
        $data = explode(",", $att);
        //list($type, $message) = explode('|', 'error|There was an error...');

        $att = (object) [
            'class' => $data[0] ,
            'group' =>$data[1] ,
            'subject' =>$data[2] ,
            'section' =>$data[3] ,
            'att_date' =>$data[4]
        ];

        $att_list = StuAttendance::where([
            'class' => $data[0] ,
            'group' =>($data[1] == ''? null:$data[1] ),
            'subject' =>$data[2] ,
            'section' =>$data[3] ,
            'att_date' =>$data[4]
        ])->get(); 

        // return $att_list;

        return view('attendance.view_att_sub_teacher',compact('att','att_list'));
    }

    public function view_attendance_principal_form()
    {
        if (!(in_array(auth()->user()->role ,array("superadmin","admin","vice_principal","principal"))))
        {
            return redirect('/')->with('error','User Not Valid');
        }

        $all_att = StuAttendance::groupBy('class','group','section','subject')->get();

        return view('attendance.all_att_principal',compact('all_att'));
    }

    public function view_attendance_principal($section)
    {
        if (!(in_array(auth()->user()->role ,array("superadmin","admin","vice_principal","principal"))))
        {
            return redirect('/')->with('error','User Not Valid');
        }

        $att = (object) ['class','group','subject','section'];
        list($att->class,$att->group,$att->subject,$att->section,$att->teacher_name) = explode(',',$section);

        // return $att->class;

        $att_list = StuAttendance::where([
            'class' => $att->class ,
            'group' =>($att->group == ''? null:$att->group ),
            'subject' =>$att->subject ,
            'section' =>$att->section ,
        ])->get(); 

        return view('attendance.view_att_principal',compact('att_list','att'));
    }
}
