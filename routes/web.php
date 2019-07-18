<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Database
Route::get('Database',function(){
	Schema::create('theloai',function($table){
		$table->increments('id');
		$table->string('ten',200)->nullable();
		$table->string('nsx',150)->default('nha san xuat');
		//$table->timestamps;
	});
	echo "create table have complete";
});

Route::get('Lienketbang',function(){
	Schema::create('sanpham',function($table){
		$table->increments('id');
		$table->string('ten');
		$table->float('gia');
		$table->integer('soluong')->default(0);
		$table->integer('id_lsp')->unsigned();
		$table->foreign('id_lsp')->references('id')->on('loaisp');
	});
});

Route::get('Addimage','MyController@Addimage');
Route::get('getdatamangak','MyController@getdatamangak');
