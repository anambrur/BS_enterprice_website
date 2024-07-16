<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Category extends Model {

	protected $fillable = [
		"id",
		"parent_id",
		"title",
		"description",
		"image",
		"slug",
		"views",
		"total_posts",
		"category_type",
		"seo_title",
		"meta_key",
		"meta_description",
		"created_by",
		"modified_by",
		"status"
	];

	public function blogs() {
		return $this->morphedByMany( 'App\Model\Common\Blog', 'categoryable' );
	}
	 
	public function portfolios()
    {
    	return $this->morphedByMany(Portfolio::class, 'categoryable');
    }
    public function packages()
    {
    	return $this->morphedByMany(Package::class, 'categoryable');
    }
    public function services()
    {
    	return $this->morphedByMany(Services::class, 'categoryable');
    }
    
    // public function portfolios()
    // {
    //     return $this->morphedByMany('App\Model\Common\Portfolio', 'categoryable');
    // }
    
    public function subcategories()
    {
        return $this->hasMany(Category::class, 'parent_id')->with('products');
    }
    
    public function products()
    {
        return $this->hasMany(Products::class, 'category_id');
    }
}
