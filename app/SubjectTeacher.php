<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubjectTeacher extends Model
{
    protected $table = 'subject_teachers';

    protected $fillable = [
        'class','group','subject','section','teacher_id'
    ];

    public function teacher()
    {
        return $this->belongsTo('App\Teacher', 'teacher_id','teacher_id');
    }
}
