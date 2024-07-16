<?php

namespace App\Model\Common;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model {
	public function order() {
		return $this->belongsTo( Order::class );
	}

	public function detail() {
		return $this->hasMany( TicketsDetail::class );
	}

	public function user() {
		return $this->belongsTo( User::class );
	}
}
