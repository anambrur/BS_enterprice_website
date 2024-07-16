<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCareerappliesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('careerapplies', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('career_id')->index()->unsigned();
            $table->foreign('career_id')
                ->references('id')->on('careers')
                ->onDelete('cascade');
            $table->string('name');
            $table->string('email');
            $table->string('file');
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
        Schema::dropIfExists('careerapplies');
    }
}
