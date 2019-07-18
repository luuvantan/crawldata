<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Picture;
use App\Pictures;
use App\Chap;
use App\Comics;


class MyController extends Controller
{
    public function GetUrl(Request $request){
    	return $request->path();
    }


    public function Addimage(){
    	include(app_path().'\classas\simple_html_dom.php');
    	$Getdata = file_get_html("http://mangak.info/onepunch-man-chap-1/?fbclid=IwAR1WwgPLHZws6uwAYl-TwqOwJOhh9RUG8Uo8IQg33qVtqqJnuMgI3g4maUM");
    	$Image = $Getdata->find("img .*?");

    	foreach ($Image as $Images) {
    		$picture = new Picture;
    		$Imagesrc = $Images->src;
    		if($Imagesrc =='//images.dmca.com/Badges/dmca_protected_sml_120m.png?ID=49aa9557-f756-4264-9442-c01c22a0a501'){
    			continue;
    		}
    		else{
    			$image = "..\public\image/" . basename($Imagesrc);
             file_put_contents($image, file_get_contents($Imagesrc));
             $picture->image = basename($Imagesrc);
             $picture->save();
    			//echo $Imagesrc . "<br>";
         }
     }
     echo "save image complete";
 }

     public function getdatamangak(){
        $comics = new Comics;
        $comics->name = "Mangak";
        $comics->category = "truyen tranh";
        $comics->save();
        include(app_path().'\classas\simple_html_dom.php');
        $Getdata = file_get_html("http://mangak.info/onepunch-man-chap-1/");
        $getchap = $Getdata->find("option");
        foreach ($getchap as $datachap) {
            $datachaps = $datachap->value;
            $chap = new Chap;
            $chap->name = $datachap;
            $chap->save();
               // echo $datachap . "<br/>";
            $getdataimage = file_get_html($chaps);
            $getimage = $getdataimage->find("img");
            foreach ($getimage as $dataimage) {
                $dataimages = $dataimage->src;
                $pictures = new Pictures;
                if($dataimages =='//images.dmca.com/Badges/dmca_protected_sml_120m.png?ID=49aa9557-f756-4264-9442-c01c22a0a501'){
                    continue;
                }
                else{
                    $nameimage = "..\public\picture/" . basename($dataimages);
                    file_put_contents($nameimage, file_get_contents($dataimages));
                    $pictures->name = basename($dataimages);
                    $pictures->save();
                        //echo $Imagesrc . "<br>";
                }
            }
        }
        echo "complete";
    }
}
