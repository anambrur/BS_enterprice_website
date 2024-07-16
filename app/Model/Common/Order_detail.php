<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Order_detail extends Model
{
    public function order($value='')
    {
    	return $this->belongsTo(Order::class);
    }
}
