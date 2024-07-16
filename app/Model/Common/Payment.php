<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
	protected $table = 'orders';
    protected $fillable = [
		'order_id', 
        'payment_method_id',
        'paid',
        'transaction_id',
		'return_url',
		'status',
	];
	public function order()
	{
		return $this->hasOne(Order::class);
	}
}
