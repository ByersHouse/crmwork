<?php 
 //WARNING: The contents of this file are auto-generated




$dictionary['bh_phones']['fields']['phone_contact'] = array (
    'required' => false,
    'name' => 'phone_contact',
    'vname' => 'LBL_PHONE_CONTACT',
    'type' => 'phone',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Номер телефона',
    'help' => 'Номер телефона',
    'importable' => 'true',
    'duplicate_merge' => 'enabled',
    'duplicate_merge_dom_value' => '1',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => '100',
    'size' => '20',
    'dbType' => 'varchar',
);

$dictionary['bh_phones']['fields']['operator'] = array (
    'required' => false,
    'name' => 'operator',
    'vname' => 'LBL_OPERATOR',
    'type' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Оператор',
    'help' => 'Сотоый оператор',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => false,
    'reportable' => true,
    'unified_search' => true,
    'merge_filter' => 'disabled',
    'len' => '40',
    'size' => '20',
);

// created: 2017-09-25 17:47:01
$dictionary["bh_phones"]["fields"]["leads_bh_phones_1"] = array (
  'name' => 'leads_bh_phones_1',
  'type' => 'link',
  'relationship' => 'leads_bh_phones_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_BH_PHONES_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_bh_phones_1leads_ida',
);
$dictionary["bh_phones"]["fields"]["leads_bh_phones_1_name"] = array (
  'name' => 'leads_bh_phones_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_BH_PHONES_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_bh_phones_1leads_ida',
  'link' => 'leads_bh_phones_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["bh_phones"]["fields"]["leads_bh_phones_1leads_ida"] = array (
  'name' => 'leads_bh_phones_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_bh_phones_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_PHONES_1_FROM_BH_PHONES_TITLE',
);


 // created: 2017-09-25 15:46:25
$dictionary['bh_phones']['fields']['name']['required']=false;
$dictionary['bh_phones']['fields']['name']['inline_edit']=true;
$dictionary['bh_phones']['fields']['name']['duplicate_merge']='disabled';
$dictionary['bh_phones']['fields']['name']['duplicate_merge_dom_value']='0';
$dictionary['bh_phones']['fields']['name']['merge_filter']='disabled';
$dictionary['bh_phones']['fields']['name']['unified_search']=false;

 

 // created: 2017-09-25 15:47:39
$dictionary['bh_phones']['fields']['phone_contact']['required']=true;

 
?>