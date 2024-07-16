<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCareersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('careers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->index();
            $table->string('slug')->unique();
            $table->string('start_date')->index();
            $table->string('end_date')->nullable();
            $table->string('image')->nullable();
            $table->longText('content');
            $table->string( "seo_title" )->nullable();
            $table->text('meta_key')->nullable();
            $table->text('meta_description')->nullable();
            $table->integer('created_by')->index()->unsigned()->nullable();
            $table->integer('modified_by')->unsigned()->nullable();
            $table->tinyInteger('status')->index()->default(2)->comment('1=active, 2=pending, 3=cancel');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('careers');
    }
}
