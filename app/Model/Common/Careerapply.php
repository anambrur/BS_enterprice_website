<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Careerapply extends Model
{
    public function career()
    {
        return $this->belongsTo(Career::class);
    }
}
