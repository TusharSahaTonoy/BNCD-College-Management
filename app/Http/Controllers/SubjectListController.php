<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Student\StuSchoolInfo;

use App\ClassSubjectList;


class SubjectListController extends Controller
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
    
    public function add_subject_list_form()
    {
        // ClassSubjectList::create
        // ClassSubjectList::firstOrCreate

        $classes = StuSchoolInfo::select('class')->groupBy('class')->get();
        return view('class.add_subject_list',compact('classes'));
    }

    public function add_subject_list(Request $request)
    {
        $sub = ClassSubjectList::where([
            'class' => $request->sub_class,
            'group' => ($request->sub_group == null)? null : $request->sub_group,
        ])->first();
        if(!empty($sub))
        {
            // /subject-list
            return redirect('/subject-list')->with('info','Subject already added');
        }

        foreach($request->sub_list as $subject)
        {
            if($subject!=null)
            {
                ClassSubjectList::Create([
                    'class' => $request->sub_class,
                    'group' => $request->sub_group,
                    'subject' => $subject,
                ]);
            }
        }

        return redirect('/subject-list')->with('success','Subjects are added');
    }

    public function add_subject($sub)
    {

    }

    public function view_subject_list()
    {
        $subject_list = ClassSubjectList::groupBy('class','group')->get();

        return view('class.view_subject_list', compact('subject_list'));
    }

    public function edit_subject_list_form($sub)
    {

        return view('class.view_subject_list', compact('subject_list'));
    }
}
