<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
	public function blogs() {
		return $this->morphedByMany( 'App\Model\Common\Blog', 'taggable' );
	}
}
