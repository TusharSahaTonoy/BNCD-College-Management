<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ClassSubjectList;

use Illuminate\Support\Facades\DB;

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
        return view('class.add_subject_list');
    }

    public function add_subject_list(Request $request)
    {
        foreach($request->sub_list as $subject)
        {
            if($subject!=null)
            {
                ClassSubjectList::create([
                    'class' => $request->sub_class,
                    'group' => $request->sub_group,
                    'subject' => $subject,
                ]);
            }
        }

        return redirect('/');
    }

    public function view_subject_list()
    {
        $subject_list = ClassSubjectList::groupBy('class','group')->get();

        return view('class.view_subject_list', compact('subject_list'));
    }
}
