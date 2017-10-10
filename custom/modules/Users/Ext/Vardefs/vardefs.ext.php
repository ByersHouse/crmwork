<?php 
 //WARNING: The contents of this file are auto-generated


$dictionary['Users']['fields']['ext_password'] = array (
    'required' => false,
    'name' => 'ext_password',
    'vname' => 'LBL_EXT_PASSWORD',
    'type' => 'text',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Пароль оператора',
    'help' => 'Пароль оператора',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'enabled',
    'len' => '40',
    'size' => '20',
);

$dictionary['Users']['fields']['ws_server'] = array (
    'required' => false,
    'name' => 'ws_server',
    'vname' => 'LBL_WS_SERVER',
    'type' => 'text',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Сервер WebRTC',
    'help' => 'Сервер WebRTC',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'enabled',
    'len' => '40',
    'size' => '20',
);


 // created: 2017-09-29 10:31:19
$dictionary['User']['fields']['asterisk_ext_c']['inline_edit']=1;

 

 // created: 2017-09-29 10:31:19
$dictionary['User']['fields']['asterisk_inbound_c']['inline_edit']=1;

 

 // created: 2017-09-29 10:31:19
$dictionary['User']['fields']['asterisk_outbound_c']['inline_edit']=1;

 

 // created: 2017-10-09 14:48:18
$dictionary['User']['fields']['ext_password']['merge_filter']='disabled';

 

 // created: 2017-10-09 14:49:04
$dictionary['User']['fields']['ws_server']['merge_filter']='disabled';

 
?>