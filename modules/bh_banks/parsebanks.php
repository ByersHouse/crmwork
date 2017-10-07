<?php

header('Content-type:text/html; charset=utf-8');
require_once 'include\phpQuery\phpQuery.php';
$link = mysql_connect('127.0.0.1', 'root', '');
if (!$link) {
    
    die('Ошибка соединения: ' . mysql_error());
    
}else{
    
    //echo "соединение установлено";
    mysql_select_db('stwork', $link);
    
}
$urls = array(
        'https://bank.gov.ua/control/bankdict/banks',
        'https://bank.gov.ua/control/bankdict/banks?type=369&sort=name&cPage=1&startIndx=21',
        'https://bank.gov.ua/control/bankdict/banks?type=369&sort=name&cPage=2&startIndx=41',
        'https://bank.gov.ua/control/bankdict/banks?type=369&sort=name&cPage=3&startIndx=61',
        'https://bank.gov.ua/control/bankdict/banks?type=369&sort=name&cPage=4&startIndx=81'
);
echo "Начинаю загрузку с адреса ..";
foreach ($urls as $url){
    //
    $file = file_get_contents($url);
    $doc = phpQuery::newDocument($file);
    $tbl = $doc->find('.col_title_t');
    $i=0;
 
    foreach ($tbl->find('tr') as $items) {
        $items = pq($items);
        if($i!=0){
            $bank_name = trim($items->find('td')->eq(0)->text());
            $bank_edprou = trim($items->find('td')->eq(1)->text());
            $bank_mfo = trim($items->find('td')->eq(2)->text());
            $sql = "SELECT id from bh_banks WHERE mfo ='{$bank_mfo}'";
            $result = mysql_query($sql,$link);
            $row = mysql_fetch_array($result, MYSQL_NUM);
            // var_dump($row,"</br>");
            if(!$row){
                $id = create_guid();
               
                $bank_adress = trim($items->find('td')->eq(4)->text());
                $sql = "INSERT INTO bh_banks (id,name,okpo,mfo,description) 
                         VALUES ('{$id}','{$bank_name}','{$bank_edprou}','{$bank_mfo}','{$bank_adress}')";
                         
                         //var_dump($sql);
                mysql_query($sql,$link);
                echo "</br>банк <a href=\"index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3Dbh_banks%26offset%3D1%26stamp%3D1507373944011808000%26return_module%3Dbh_banks%26action%3DDetailView%26record%3D{$id}\">{$bank_name}</a> добавлен в базу данных</br>";
            }
          
        
        }
        $i++;
    }
   /// echo "всего {$i} ";
sleep(3);
}
mysql_close($link);
