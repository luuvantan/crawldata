<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


class MyController extends Controller
{
    public function GetUrl(Request $request){
    	return $request->path();

    }

    public function themimage(){
    	//require("simple_html_dom.php");
    	$picture = new App\Picture();
    	 include(app_path().'\classas\simple_html_dom.php');
    	$html = file_get_html("http://mangak.info/");
    	$img = $html->find("img");

    	foreach ($img as $a) {
    		$g = $a->src;
    		$image = "D:\laravel\htdocs\Newlaravel\public\image/" . basename($g);
    		file_put_contents($image, file_get_contents($g));
    		$picture->image = basename($g);

    	}
    	echo "complete";
    }
}
