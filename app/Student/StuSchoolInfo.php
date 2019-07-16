<?php

namespace App\Student;

use Illuminate\Database\Eloquent\Model;

class StuSchoolInfo extends Model
{
    protected $table = 'stu_school_infos';

    protected $fillable = [
        'class','group','section','guide_teacher','student_id',
    ];
}