<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    protected $table = 'teachers';

    protected $fillable = [
        'teacher_id', 'teacher_name', 'email', 'phone', 'department', 'join_year', 'image', 'user_id'
    ];

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id','user_id');
    }
}
