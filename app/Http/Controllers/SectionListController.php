<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\ClassSubjectList;
use App\ClassSectionList;

class SectionListController extends Controller
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
    
    public function add_section_list_form()
    {
        $class_list = ClassSubjectList::select('class')->groupBy('class')->get();
        return view('class.add_section_list',compact('class_list'));
    }
    public function add_section_list(Request $request)
    {
        //check class group already added or not
        //8 class no group

        for ($i=1; $i <= $request->sec_list; $i++) { 
            ClassSectionList::create([
                'class' => $request->sub_class,
                'group' => $request->sub_group,
                'section' => chr(64+$i),
            ]);
        }

        return redirect('/');
        
    }

    // public function add_section_list_form()
}
