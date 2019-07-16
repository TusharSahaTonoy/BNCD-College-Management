<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

// use App\Student\StuOfficeInfo;

class Student extends Model
{
    protected $table = 'students';

    protected $fillable = [
        'student_id','student_name','nationality','religion','date_of_birth','image','emergency1','emergency2','user_id'
    ];

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id','user_id');
    }

    public function office()
    {
        // return $this->hasOne(StuOfficeInfo::class, 'student_id', 'student_id'); //works with use app\...
        return $this->hasOne(Student\StuOfficeInfo::class, 'student_id', 'student_id');

    }
    
}
