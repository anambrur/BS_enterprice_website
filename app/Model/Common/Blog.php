<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model {
	
	public function categories() {
		return $this->morphToMany( "App\Model\Common\Category", "categoryable" );
	}

	public function tags() {
		return $this->morphToMany( "App\Model\Common\Tag", "taggable" );
	}

	public function user() {
		return $this->belongsTo( "App\Admin", "created_by" );
	} 

	public function commentspost() {
		return $this->morphMany('App\Model\Common\Comment', 'commentable' );
	}
	 
}
