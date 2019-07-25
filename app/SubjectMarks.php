<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubjectMarks extends Model
{
    protected $table = 'subject_marks';

    protected $fillable = [
        'class', 'subject', 'quiz1_cq', 'quiz1_mcq', 'quiz2_cq', 'quiz2_mcq', 'mid_cq', 'mid_mcq', 'quiz3_cq', 'quiz3_mcq', 'quiz4_cq', 'quiz4_mcq', 'final_cq', 'final_mcq', 'att_mark', 'student_id', 'teacher_id'
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
