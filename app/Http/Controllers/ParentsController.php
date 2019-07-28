<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Student\StuSchoolInfo;

use App\Student\StuAttendance;
use App\SubjectMarks;

class ParentsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware(function ($request, $next) {
            if($request->user()->type == 'parents') {
                return $next($request);
            } else {
                return redirect('/')->with('error','Sorry,You are invalid user.');
            }
        });
    }

    public function stu_att_summary()
    {
        $student_id = auth()->user()->parents->student->student_id;
        $all_attendance = StuAttendance::where('student_id',$student_id)->get();
        return view('student.summary_att_student',compact('all_attendance'));
    }

    public function view_marks_stu()
    {
        $student_id = auth()->user()->parents->student->student_id;
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
