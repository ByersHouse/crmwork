<?php
global $mod_strings;

?>
<h2 class="module-title-text"><?php echo $mod_strings['LBL_BANK_IMPORT']; ?></h2>

<form action="index.php?module=bh_banks&action=parsebanks&return_module=bh_banks&return_action=DetailView" method="POST">
     <input name="myActionName" onclick="if (!confirm('Вы уверены что хотите сделать импорт?')){return false;}" type="submit" value="<?php echo $mod_strings['LBL_DO_IMPORT']; ?>" />
</form>
<?php
if (isset($_POST['myActionName'])){
    echo $mod_strings['LBL_BANK_IMPORT_BEGIN'].":..https://bank.gov.ua/control/bankdict/banks</br>";
    header('Content-type:text/html; charset=utf-8');
    require_once 'include/phpQuery/phpQuery.php';
    global $db;
    $urls = array(
            'https://bank.gov.ua/control/bankdict/banks',
            'https://bank.gov.ua/control/bankdict/banks?type=369&sort=name&cPage=1&startIndx=21',
            'https://bank.gov.ua/control/bankdict/banks?type=369&sort=name&cPage=2&startIndx=41',
            'https://bank.gov.ua/control/bankdict/banks?type=369&sort=name&cPage=3&startIndx=61',
            'https://bank.gov.ua/control/bankdict/banks?type=369&sort=name&cPage=4&startIndx=81'
    );
   
    $nb = 0;
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
                $bank_adress = htmlspecialchars(trim($items->find('td')->eq(4)->text()),ENT_QUOTES);
                
                $sql = "SELECT id from bh_banks WHERE name ='{$bank_name}' and deleted = 0 ";
                $row = $db->getOne($sql);
           
                
                if(!$row){
                    $id = create_guid();
                    $nb++;
                    
                    $sql = "INSERT INTO bh_banks (id,name,okpo,mfo,description,date_entered,date_modified,modified_user_id,created_by,assigned_user_id) 
                             VALUES ('{$id}','{$bank_name}','{$bank_edprou}','{$bank_mfo}','{$bank_adress}',NOW(),NOW(),1,1,1)";

                    $result = $db->query($sql);
                    if($result){
                        echo "</br>".$mod_strings['LBL_BANK']." <a href=\"index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3Dbh_banks%26offset%3D1%26stamp%3D1507373944011808000%26return_module%3Dbh_banks%26action%3DDetailView%26record%3D{$id}\" target=\"_blank\">{$bank_name}</a>".$mod_strings['LBL_BANK_ADDED']."</br>";
                    }
                    
                }


            }
            $i++;
        }
       
    sleep(3);
    }
    if($nb){
        echo $mod_strings['LBL_IMPORT_SUCS_ENDED']."!!!</br>".$mod_strings['LBL_NEW_BANKS'].":{$nb}";
    }else{
        echo $mod_strings['LBL_CHECK_ACTUAL'];
    }

}