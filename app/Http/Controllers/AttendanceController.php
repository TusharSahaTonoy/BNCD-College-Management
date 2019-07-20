<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

use App\User;
use App\Teacher;
use App\SubjectTeacher;
use App\Student\StuSchoolInfo;

class AttendanceController extends Controller
{
    public function index()
    {

    }

    public function index_for_subject_teacher($sub_teacher_id)
    {

    }

    public function index_for_guide_teacher($guide_teacher_id)
    {

    }

    public function attendance_subject_list()
    {
        $teacher = Teacher::select('teacher_id')->where('user_id',auth()->user()->user_id)->first();
        $subjects = SubjectTeacher::where('teacher_id', $teacher->teacher_id)->get();

        return view('attendance.take_attendance',compact('subjects'));
    }

    public function take_attendence_form($section)
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
            'group' => $data[1],
            'section' => $data[3]
        ])->get();

        // return $student_list;
        
        return view('attendance.student_list',compact('att','student_list'));
    }

    public function take_attendence_store(Request $request)
    {
        return $request;
    }

}
