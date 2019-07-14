<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Picture;


class MyController extends Controller
{
    public function GetUrl(Request $request){
    	return $request->path();
    }


    public function Addimage(){
    	//$picture = new Picture;
    	include(app_path().'\classas\simple_html_dom.php');
    	$Getdata = file_get_html("http://mangak.info/onepunch-man-chap-1/?fbclid=IwAR1WwgPLHZws6uwAYl-TwqOwJOhh9RUG8Uo8IQg33qVtqqJnuMgI3g4maUM");
    	$Image = $Getdata->find('img');

    	foreach ($Image as $Images) {
    		$picture = new Picture;
    		$Imagesrc = $Images->src;
    		if($Imagesrc =='//images.dmca.com/Badges/dmca_protected_sml_120m.png?ID=49aa9557-f756-4264-9442-c01c22a0a501'){
    			continue;
    		}
    		else{
    			$image = "D:\laravel\htdocs\Newlaravel\public\image/" . basename($Imagesrc);
	    		file_put_contents($image, file_get_contents($Imagesrc));
	    		$picture->image = basename($Imagesrc);
	    		$picture->save();
    			//echo $Imagesrc . "<br>";
	    	}
    	}
    	echo "save image complete";
    }
}
