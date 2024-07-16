<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Career extends Model
{
    public function careerapplys()
    {
        return $this->hasMany(Careerapply::class);
    }
}
