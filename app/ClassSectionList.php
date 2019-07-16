<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ClassSectionList extends Model
{
    protected $table = 'class_section_lists';

    protected $fillable = [
        'class','group','section'
    ];
}
