<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\SubjectTeacher;
use App\Student\StuSchoolInfo;

use App\SubjectMarks;

class MarksController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware(function ($request, $next) {
            if(!(in_array(auth()->user()->type ,['superadmin','admin','teacher']))) {
                return redirect('/')->with('error','Sorry,You are not valid user');
            }
            return $next($request);
        });
    }

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
    //--------- Quiz  -----------------//
    public function quiz_form($sub)
    {
        if(auth()->user()->type!='teacher')
        {
            return redirect('/')->with('error','Sorry, you are invalid user');
        }

        $data = [];
        list($data['class'],$data['group'],$data['subject'],$data['section']) = explode(',',$sub);
        $data['teacher_id'] = auth()->user()->teacher->teacher_id;
        $quiz = (object) $data;

        $students = StuSchoolInfo::where([
            'class' => $quiz->class,
            'group' => ($quiz->group ==null)? null: $quiz->group,
            'section' =>$quiz->section, 
        ])->get();
        // return $students;
        // return (($quiz->group ==null)? null: $quiz->group);

        foreach ($students as $student) {
            $student_quizes[] =SubjectMarks::firstOrCreate([
                'class' => $quiz->class,
                'group' => (($quiz->group ==null)? null: $quiz->group),
                'subject' => $quiz->subject,
                'teacher_id' => $quiz->teacher_id,
                'student_id' => $student->student_id,
            ]);
        }

        // return $student_quizes;

        return view('marks.quiz',compact('student_quizes','quiz'));
    }

    public function store_marks_quiz(Request $r)
    {
        if(auth()->user()->type!='teacher')
        {
            return redirect('/')->with('error','Sorry, you are invalid user');
        }
        // return $r;

        foreach ($r->students as $index => $mark) {
            SubjectMarks::where([
                'class' => $r->class,
                'group' => ($r->group == null)? null : $r->group,
                'subject' => $r->subject,
                'teacher_id' => $r->teacher_id,
                'student_id' => $r->students[$index],
            ])->update([
                'quiz1_cq' => $r->quiz1_cq[$r->students[$index]],
                'quiz1_mcq' => $r->quiz1_mcq[$r->students[$index]],

                'quiz2_cq' => $r->quiz2_cq[$r->students[$index]],
                'quiz2_mcq' => $r->quiz2_mcq[$r->students[$index]],
                
                'quiz3_cq' => $r->quiz3_cq[$r->students[$index]],
                'quiz3_mcq' => $r->quiz3_mcq[$r->students[$index]],
                
                'quiz4_cq' => $r->quiz4_cq[$r->students[$index]],
                'quiz4_mcq' => $r->quiz4_mcq[$r->students[$index]],
            ]);
        }
        
        // return $students_marks;
        return redirect('marks/give-marks')->with('success','Marks Added successfully');

    }

    //--------- mid and finals  -----------------//
    public function mid_final_form($sub)
    {
        if(auth()->user()->type!='teacher')
        {
            return redirect('/')->with('error','Sorry, you are invalid user');
        }

        $data = [];
        list($data['class'],$data['group'],$data['subject'],$data['section']) = explode(',',$sub);
        $data['teacher_id'] = auth()->user()->teacher->teacher_id;
        $subject = (object) $data;

        $students = StuSchoolInfo::where([
            'class' => $subject->class,
            'group' => ($subject->group ==null)? null: $subject->group,
            'section' =>$subject->section, 
        ])->get();

        foreach ($students as $student) {
            $mid_finals[] =SubjectMarks::firstOrCreate([
                'class' => $subject->class,
                'group' => (($subject->group ==null)? null: $subject->group),
                'subject' => $subject->subject,
                'teacher_id' => $subject->teacher_id,
                'student_id' => $student->student_id,
            ]);
        }

        // return $mid_finals;

        return view('marks.mid_final',compact('mid_finals','subject'));
    }

    public function store_marks_mid_final(Request $r)
    {
        if(auth()->user()->type!='teacher')
        {
            return redirect('/')->with('error','Sorry, you are invalid user');
        }
        // return $r;

        foreach ($r->students as $index => $mark) {
            SubjectMarks::where([
                'class' => $r->class,
                'group' => ($r->group == null)? null : $r->group,
                'subject' => $r->subject,
                'teacher_id' => $r->teacher_id,
                'student_id' => $r->students[$index],
            ])->update([
                'mid_cq' => $r->mid_cq[$r->students[$index]],
                'mid_mcq' => $r->mid_mcq[$r->students[$index]],

                'final_cq' => $r->final_cq[$r->students[$index]],
                'final_mcq' => $r->final_mcq[$r->students[$index]],
            ]);
        }
        
        // return $students_marks;
        return redirect('marks/give-marks')->with('success','Marks Added successfully');

    }

}
