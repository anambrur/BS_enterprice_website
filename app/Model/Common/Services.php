<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Services extends Model
{
    protected $fillable = [
		"id", 
		"title",
		"description",
		"image",
		"slug",
		"views", 
		"seo_title",
		"meta_key",
		"meta_description",
		"created_by",
		"modified_by",
		"status"
	];

        public function categories()
    {
    	return $this->morphToMany(Category::class, 'categoryable');
    }
}
