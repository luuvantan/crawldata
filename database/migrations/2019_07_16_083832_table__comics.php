<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TableComics extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comics',function($table){
            $table->increments('id');
            $table->string('name');
            $table->string('category');
            //$table->dateTime('create_at');
            //$table->timestamps();
        });

        Schema::create('chap',function($table){
            $table->increments('id');
            $table->string('name');
            $table->integer('id_comics')->unsigned();
            $table->foreign('id_comics')->references('id')->on('comics');
            //$table->dateTime('create_at');
            //$table->timestamps();
        });

        Schema::create('pictures',function($table){
            $table->increments('id');
            $table->string('name');
            $table->integer('id_chap')->unsigned();
            $table->foreign('id_chap')->references('id')->on('chap');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
