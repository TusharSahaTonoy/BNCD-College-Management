<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Teacher;
use App\Student\StuSchoolInfo;

use App\ClassSectionList;
use App\ClassSubjectList;

use App\SubjectTeacher;

class SubjectTeacherController extends Controller
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
        $sub_teachers = SubjectTeacher::all();
        // return $sub_teachers;
        return view('teacher.sub_teacher_list',compact('sub_teachers'));
    }
    public function sub_list_form()
    {
        $subjects = ClassSubjectList::all();

        // return $subjects;
        // foreach($subjects as $index => $subject)
        // {
        //     $subjects[$index]['sec_list'] = StuSchoolInfo::select('section')->where([
        //         'class'=>$subject->class,
        //         'group'=> ($subject->group==null)? null : $subject->group
        //         ])->get();
        // }
        // return $subjects;
        return view('teacher.subject_list',compact('subjects'));
    }

    public function select_sub($sub)
    {   
        // 7,,Bangla
        // return $sub;
        //class,group,section

        list($class,$group,$subject) = explode(",", $sub);

        $sec_list = StuSchoolInfo::select('section')->where([
            'class'=>$class,
            'group'=> ($group==null)? null : $group
            ])->get();
        
        foreach($sec_list as $sec)
        {
            $sub_teachers[] = SubjectTeacher::firstOrCreate([
                'class' => $class,
                'group' => ($group == null)? null : $group,
                'subject' =>$subject,
                'section' => $sec->section,
            ],
            [
                'teacher_id' =>null,
            ]); 
        }

        // return $sub_teachers;
        //teacher list 
        $teachers = Teacher::all();

        return view('teacher.assign_subject_teacher',compact('sub_teachers','teachers','class','group','subject'));

    }
    
    public function add_subject_teacher(Request $request)
    {
        for($i = 0; $i<sizeof($request->sec_list); $i++ )
        {
            if($request->teacher_list[$i] ==null)
            {
                continue;
            }

            SubjectTeacher::where([
                'class' => $request->class,
                'group' => ($request->group == null)? null : $request->group,
                'subject' =>$request->subject,
                'section' => $request->sec_list[$i],
            ])->update([
                'teacher_id' =>$request->teacher_list[$i],
            ]);
        }
       return redirect('/teacher-assign')->with('success','changes are made');
    }
}
