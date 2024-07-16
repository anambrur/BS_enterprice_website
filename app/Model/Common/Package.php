<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Package extends Model {
	
	 public function categories() {
        return $this->morphToMany( "App\Model\Common\Category", "categoryable" );
    }
    public function tags() {
        return $this->morphToMany( "App\Model\Common\Tag", "taggable" );
    }
	public function detail() {
		return $this->hasMany( 'App\Model\Common\Package_detail' );
	}
	public function order() {
		return $this->hasMany( 'App\Model\Common\Order' );
	}

}
