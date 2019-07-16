<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ClassSubjectList extends Model
{
    protected $table = 'class_subject_lists';

    protected $fillable = [
        'class','group','subject'
    ];
}
