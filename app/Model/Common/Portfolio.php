<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Portfolio extends Model {

	protected $fillable = [
		"id", 
		"title", 
        "link",
        "duration",
        "sortby",
		"description",
		"image",
		"image_gallery",
		"slug",
		"views", 
		"seo_title",
		"meta_key",
		"meta_description",
		"created_by",
		"modified_by",
		"status"
	];

	// public function categories()
 //    {
 //        return $this->morphToMany('App\Model\Common\Category', 'categoryable');
 //    }

//    public function categories()
//    {
//    	return $this->morphToMany(Category::class);
//    }
    public function categories() {
        return $this->morphToMany( "App\Model\Common\Category", "categoryable" );
    }
    public function tags() {
        return $this->morphToMany( "App\Model\Common\Tag", "taggable" );
    }

	 
}
