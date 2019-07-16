<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Teacher;
use App\ClassSectionList;
use App\ClassSubjectList;

use App\SubjectTeacher;

class SubjectTeacherController extends Controller
{
    public function index()
    {

    }
    public function selcet_section_form()
    {
        $subject_classes = ClassSubjectList::select('class','group')->groupby('class','group')->get();
        // return $subject_classes;
        foreach($subject_classes as $subject)
        {
            $all_classes[] = ClassSectionList::where('class',$subject->class)
                                            ->orWhere('group',$subject->group)->get();
        }
        // return $all_classes;
        return view('teacher.select_section',compact('all_classes'));
    }

    public function selcet_section($class)
    {   //class,group,section
        $assign = explode(",", $class);
        $class = $assign[0];
        $group = $assign[1];
        $section = $assign[2];
        $subjects = ClassSubjectList::select('subject')->where('class',$class)
                                                        ->orWhere('group',$group)->get();

        // return $subjects;

        return view('teacher.assign_subject_teacher',compact('class','group','section','subjects'));

    }
    
    public function add_subject_teacher(Request $request)
    {
        // return $request;
        for($i = 0; $i<sizeof($request->sub_list); $i++ )
        {
            if($request->teacher_list[$i] ==null)
            {
                continue;
            }

            SubjectTeacher::create([
                'class' => $request->sub_class,
                'group' => $request->sub_group,
                'section' =>$request->sub_section,
                'subject' => $request->sub_list[$i],
                'teacher_id' =>$request->teacher_list[$i],
            ]);
        }
       return redirect('/');
    }
}
