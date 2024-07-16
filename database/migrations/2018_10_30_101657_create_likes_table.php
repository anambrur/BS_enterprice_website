<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLikesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('likes', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('liker_id')->nullable()->unsigned();
            $table->string('liker_ip')->nullable();
            $table->integer('likeable_id')->unsigned();
            $table->integer('likeable_type');
            $table->tinyInteger( 'status' )->index()->default( 1 )->comment( '0=Not Liked yet, 1=Liked' );
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
        Schema::dropIfExists('likes');
    }
}
