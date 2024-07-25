<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Certification extends Model
{
    protected $fillable = ['title', 'description', 'image', 'status'];
}
