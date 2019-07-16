<?php

namespace App\Student;

use Illuminate\Database\Eloquent\Model;

class StuParents extends Model
{
    protected $table = 'stu_parents';

    protected $fillable = [
        'father_name','father_occu','father_position','father_ins','father_income','father_mobile','father_image',
        'mother_name','mother_occu','mother_position','mother_ins','mother_income','mother_mobile','mother_image',
        'student_id','user_id'
    ];

    public function student()
    {
        return $this->belongsTo('App\Student', 'student_id','student_id');
    }
}
