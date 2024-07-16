<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable = [
		"fullname",
		"email",
		"phone",
		"subject",
		"message"
	];
}
