<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $fillable = [
		"id", 
		"title",
		"description",
		"image",
		"extra",
		"created_by", 
		"modified_by", 
		"status"
	];

      
}
