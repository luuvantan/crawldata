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
Route::get('hello/{ten}',function($ten){
	echo "ten toi la " .$ten;
});

// dinh danh
Route::get('route1', ['as'=>'route10',function(){
	echo "hello everyone, i am Tan, i want good job";
}]);
Route::get('goiroute', function(){
	return redirect()->route('route10');
});

Route::get('Myroute','MyController@GetUrl');

//middleware
Route::get('diem', function(){
	echo "ban da co diem";
})->middleware('MyMiddle')->name('diem');
Route::get('loi', function(){
	echo "ban chua co diem";
})->name('loi');
Route::get('nhapso',function(){
	return view('view/postform');
})->name('nhapso');

// session
Route::group(['middleware'=>['web']], function(){
	Route::get('Session',function(){
		Session::put('Khoahoc','Laravel');
		echo "da co session";
		echo "</br>";
		echo Session::get('Khoahoc');
		session()->flash('mess','hello');
	});

	Route::get('Session/flash',function(){
		echo session('mess');
	});
});


//Database
Route::get('Database',function(){
	//Schema::create('loaisp',function($table){
	//	$table->increments('id');
	//	$table->string('tensp',200);
	//	$table->integer('gia');
		//$table->timestamps;
	//});

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

Route::get('Suabang',function(){
	Schema::table('theloai',function($table){
		$table->dropColumn('nsx');
	});
	echo "thanh cong";
});

Route::get('Themcot',function(){
	Schema::table('theloai',function($table){
		$table->string('email');
	});
	echo " complete";
});

Route::get('Suaten',function(){
	Schema::rename('theloai','theloais');

	echo " complete";
});

Route::get('Xoa',function(){
	Schema::drop('theloais');
	echo " delete";
});


//querybuilder
Route::get('db/get',function(){
	$data=DB::table('users')->get();
	//var_dump($data);
	foreach ($data as $row) {
		foreach ($row as $key => $value) {
			echo $key.":".$value."<br>";
			# code...
		}
		echo "<hr>";
		# code...
	}
});

// select 
Route::get('db/where',function(){
	$data=DB::table('users')->select(['id','name'])->where('id','>=',2)->get();
	//var_dump($data);
	echo $data->count();
	foreach ($data as $row) {
		foreach ($row as $key => $value) {
			echo $key.":".$value."<br>";
			# code...
		}
		echo "<hr>";
		# code...
	}
});

Route::get('taobangimage',function(){
	Schema::create('Picture1',function($table){
		$table->increments('id');
		$table->string('image');
	});
	echo "complete";
});

Route::get('a','MyController@themimage');

Route::get('saveimage',function(){
	//$picture = new App\Picture();
    	 include(app_path().'\classas\simple_html_dom.php');
    	$html = file_get_html("http://mangak.info/");
    	$img = $html->find("img");

    	/*foreach ($img as $a) {
    		$g = $a->src;
    		$image = "D:\laravel\htdocs\Newlaravel\public\image/" . basename($g);
    		$picture->image = basename($g);
    		file_put_contents($image, file_get_contents($g));
    		//$picture->image = basename($g);

    	}
    	echo "complete";
		*/
    	for($i=0;$i<93;$i++){
    		$picture1 = new App\Picture1();
    		//echo $img[$i]->src . "<br>";
    		$g = $img[$i]->src;
    		$image = "D:\laravel\htdocs\Newlaravel\public\image/" . basename($g);
    		//$picture->image = basename($g);
    		file_put_contents($image, file_get_contents($g));
    		$picture1->image = basename($g);
    		$picture1->save();
    	}
    	echo "complete";

    });
