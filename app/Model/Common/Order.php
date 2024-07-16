<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
	protected $table = 'orders';
    protected $fillable = [
		'user_id', 
        'email',
        'package_id',
        'package_detail_id',
		'package_type',
		'package_detail_type',
		'rate',
		'qty',
		'total', 
		'discount',
		'coupon_id',
		'tax',
		'net_total',
		'paid',
		'message',
		'attachments',
		'completed_files',
		'created_by',
		'modified_by',
		'payment_status',
		'order_status'
	];
	public function user()
	{
		return $this->belongsTo('App\User');
	}
	public function package()
	{
		return $this->belongsTo(Package::class);
	}
	public function payment()
	{
		return $this->belongsTo(Payment::class);
	}
	public function package_detail() {
		return $this->hasMany( 'App\Model\Common\Package_detail' );
	}
	public function order_detail()
	{
		return $this->hasMany( 'App\Model\Common\Order_detail' );
		// return $this->hasMany(Order_detail::class);
	}
}
