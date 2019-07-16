<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
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
}
