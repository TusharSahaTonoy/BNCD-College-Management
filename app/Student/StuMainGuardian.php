<?php

namespace App\Student;

use Illuminate\Database\Eloquent\Model;

class StuMainGuardian extends Model
{
    protected $table = 'stu_main_guardians';

    protected $fillable = [
        'name','reletion','occupation','name_of_int','position','income','mobile','student_id'
    ];
}
