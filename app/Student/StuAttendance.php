<?php

namespace App\Student;

use Illuminate\Database\Eloquent\Model;

class StuAttendance extends Model
{
    protected $table = 'stu_attendances';
    
    protected $fillable = [
        'student_id','class','group','subject','section','teacher_id','attendance','att_date'
    ];

    public function student()
    {
        return $this->belongsTo('App\Student', 'student_id','student_id');
    }

    public function teacher()
    {
        return $this->belongsTo('App\Teacher', 'teacher_id','teacher_id');
    }
}
