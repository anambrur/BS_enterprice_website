<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Package_detail extends Model
{
    public function package($value='')
    {
    	return $this->belongsTo(Package::class);
    }
}
