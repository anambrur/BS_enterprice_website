<?php

namespace App\Model\Common;

use App\User;
use Illuminate\Database\Eloquent\Model;

class TicketsDetail extends Model {
	public function user() {
		return $this->belongsTo( User::class );
	}
}
