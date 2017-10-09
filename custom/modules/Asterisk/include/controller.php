<?php

/* * *
* Author: Blake Robertson
* Author: Patrick Hogan
*
* Controller class for various AJAX things such as saving the UI state and saving the call details.
*
* TODO: createCall should be refactored into this php file and then called by specifying an appropriate action for them.
*/



if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

require_once('include/utils.php');
require_once('include/export_utils.php');
require_once('modules/Calls/Call.php');
require_once('modules/Users/User.php');
//sets $mod_strings variable

require_once('custom/modules/Asterisk/include/callinize_db.php');

// Check to see if the language file exists, if not we load the US English one.
// TODO should we use include_once instead of require_once?
// Settled on using include as it's faster... then include_once
if(is_file("custom/modules/Asterisk/language/" . $GLOBALS['sugar_config']['default_language'] . ".lang.php")) {
    include("custom/modules/Asterisk/language/" . $GLOBALS['sugar_config']['default_language'] . ".lang.php");
}
else {
    include("custom/modules/Asterisk/language/en_us.lang.php");
}

//logLine("At Top\n", "c:/controller.log");

//ACTIONS

switch ($_REQUEST['action']) {
    case "memoSave" :
        if ($_REQUEST['call_record']) {
             memoSave($_REQUEST['call_record'], $_REQUEST['sugar_user_id'], $_REQUEST['phone_number'], $_REQUEST['description'], $_REQUEST['direction']);
        }
        break;
    case "updateUIState" :
        updateUIState($_REQUEST['ui_state'], $_REQUEST['call_record'], $_REQUEST['id']);
        break;
    case "setBeanID" :
        setBeanID($_REQUEST['call_record'], $_REQUEST['bean_module'], $_REQUEST['bean_id']);
        break;
    case "call" :
        callCreate();
        break;
    case "transfer" :
        transferCall($_REQUEST["extension"], $_REQUEST['call_record']);
        break;
    case "block" :
        blockNumber($_REQUEST['number'], $_REQUEST['description']);
        break;
    case "get_calls" :
        getCalls($mod_strings, $GLOBALS['current_user']);
        break;
    case "ajax" :
        readEventLog();
        break;
    case "operatorConfig" :
        getOperatorConfig();
        break;
    default :
        echo "undefined action";
        break;
}

function getOperatorConfig(){
    global $current_user;
    $user = [];
    $user['extension'] = trim($current_user->fetched_row['asterisk_ext_c']);
    $user['ws_server'] = trim($current_user->fetched_row['ws_server']);
    $user['password'] = trim($current_user->fetched_row['ext_password']);

    $user = json_encode($user, true);
    echo $user;
}

function readEventLog()
{
    global $current_user;

    $user = ($current_user->fetched_row['asterisk_ext_c']);

    $arr = file('log.txt');

    $nofalse = false;
    if (is_array($arr) && !(empty($arr))){
        $f = fopen('log.txt', 'w+');
        flock ($f,LOCK_EX);
    foreach ($arr as $key => &$val){

    $val = unserialize($val);

    if(isset($val['CallerIDNum'])) {
        if ($val['CallerIDNum'] == $user) {


            $query = 'SELECT id FROM `Leads` WHERE `phone_work` =' . $val['ConnectedLineNum'];
            $result = $current_user->db->query($query, false);

            if ($result->num_rows) {

                $result = $current_user->db->fetchByAssoc($result);


                echo 'index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DLeads%26offset%3D10%26return_module%3DLeads%26action%3DDetailView%26record%3D' . $result['id'] . '&ajax_load=1';
                $nofalse = true;
            } else {

                echo 'index.php?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DLeads%26action%3DEditView%26return_module%3DLeads%26return_action%3DDetailView%26phone_mobile%3D' . $val['CallerID1'];
                $nofalse = true;
            }
            unset($arr[$key]);
            continue;


        }
    }
    $val = serialize($val);



    }
        $arr = implode(PHP_EOL, $arr);
        fwrite($f, $arr);
        flock ($f,LOCK_UN);
        fclose($f);
    }

  if(!$nofalse) {
      echo 'false';
  }

}

sugar_cleanup(); // Formerly was in getCalls()

?>