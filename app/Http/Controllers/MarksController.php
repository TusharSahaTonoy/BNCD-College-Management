<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\SubjectTeacher;
use App\Student\StuSchoolInfo;

class MarksController extends Controller
{
    //show the assign subject list of a subject teacher
    public function subject_list_teacher()
    {
        if(auth()->user()->type!='teacher')
        {
            return redirect('/')->with('error','Sorry, you are invalid user');
        }

        $teacher_id = auth()->user()->teacher->teacher_id;

        $sub_list = SubjectTeacher::where('teacher_id',$teacher_id)->orderBy('class')->get();
        // return $sub_list;
        return view('marks.sub_list_marks',compact('sub_list'));

    }

    public function quiz_form($sub)
    {
        $data = [];
        list($data['class'],$data['group'],$data['subject'],$data['section']) = explode(',',$sub);

        $quiz = (object) $data;

        $students = StuSchoolInfo::where([
            'class' => $quiz->class,
            'group' => ($quiz->group =='')? null: $quiz->group,
            'section' =>$quiz->section, 
        ])->get();

        // return $students;

        return view('marks.quiz',compact('students','quiz'));
    }

    public function store_marks_quiz(Request $r)
    {
        return $r;
    }


}
