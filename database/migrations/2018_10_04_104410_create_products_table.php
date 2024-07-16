<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('category_id')->unsigned();
            $table->integer('supplier_id')->unsigned();
            $table->string('title')->index()->nullable();
            $table->string('slug')->index()->nullable();
            $table->string('batch_no')->index()->nullable();
            $table->integer('packsize')->unsigned();
            $table->string('buying_price', 10, 2)->unique()->nullable();
            $table->string('selling_price', 10, 2)->index()->nullable();
            $table->string('description')->unique()->nullable();
            $table->tinyInteger('status')->index()->default(2)->comment('1=Active, 2=Pending, 3=Cancel');
            $table->string('image')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('products');
    }

}
