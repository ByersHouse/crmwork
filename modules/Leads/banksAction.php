<?php

global $db;

if(isset($_REQUEST['mfo'])){
    
    $sql = "SELECT name FROM BANKS WHERE mfo ='{$_REQUEST['mfo']}'";
    $bank_name = $db->getOne($sql);
  
    if($bank_name){
        
       echo html_entity_decode($bank_name,ENT_QUOTES);
    
       
    }else{
        
        echo "not_found";
    }
    
}



