<?php

include "../../connect.php" ;

$id = filterRequest("id") ; 

$imagename = filterRequest("imagename") ; 

deleteFile( "../../upload/categories", $imagename) ; // طالما هتحذف الكاتيجوري اذن لازم تحذف الصورة من الداتابيز

deleteData("categories" , "categories_id = $id ") ; 