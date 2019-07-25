<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MarkDistribution extends Model
{
    protected $table = 'mark_distributions';

    protected $fillable = [
        'class', 'quiz', 'mid', 'final', 'attendance'
    ];
}
