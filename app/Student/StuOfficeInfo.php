<?php

namespace App\Student;

use Illuminate\Database\Eloquent\Model;

class StuOfficeInfo extends Model
{
    protected $table = 'stu_office_infos';

    protected $fillable = [
        'class','group','section','roll','nomination_count','security_code','student_id'
    ];

    public function student()
    {
        return $this->belongsTo('App\Student', 'student_id','student_id');
    }

    
    
}
