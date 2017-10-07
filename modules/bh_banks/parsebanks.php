<?php

header('Content-type:text/html; charset=utf-8');
require_once 'phpQuery.php';
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
foreach ($urls as $url){
    $file = file_get_contents($url);
    $doc = phpQuery::newDocument($file);
    $tbl = $doc->find('.col_title_t');
    $i=0;
    var_dump($tbl);  exit;
    foreach ($tbl->find('tr') as $items) {
        $items = pq($items);
        if($i!=0){
            $bank_name = trim($items->find('td')->eq(0)->text());
            $bank_edprou = trim($items->find('td')->eq(1)->text());
            $bank_mfo = trim($items->find('td')->eq(2)->text());
            //$date_registr = trim($items->find('td')->eq(3)->text());
            $bank_adress = trim($items->find('td')->eq(4)->text());
            $sql = "INSERT INTO banks (name,edrpou,mfo,jur_address) 
                         VALUES ('{$bank_name}','{$bank_edprou}','{$bank_mfo}','{$bank_adress}')";
            mysql_query($sql,$link);
        }
        $i++;
    }
sleep(3);
}
mysql_close($link);
