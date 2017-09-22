<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-22 12:47:30
$dictionary["bh_passports"]["fields"]["bh_passports_bh_country_1"] = array (
  'name' => 'bh_passports_bh_country_1',
  'type' => 'link',
  'relationship' => 'bh_passports_bh_country_1',
  'source' => 'non-db',
  'module' => 'bh_country',
  'bean_name' => 'bh_country',
  'vname' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
  'id_name' => 'bh_passports_bh_country_1bh_country_idb',
);
$dictionary["bh_passports"]["fields"]["bh_passports_bh_country_1_name"] = array (
  'name' => 'bh_passports_bh_country_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
  'save' => true,
  'id_name' => 'bh_passports_bh_country_1bh_country_idb',
  'link' => 'bh_passports_bh_country_1',
  'table' => 'bh_country',
  'module' => 'bh_country',
  'rname' => 'name',
);
$dictionary["bh_passports"]["fields"]["bh_passports_bh_country_1bh_country_idb"] = array (
  'name' => 'bh_passports_bh_country_1bh_country_idb',
  'type' => 'link',
  'relationship' => 'bh_passports_bh_country_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
);





$dictionary['bh_passports']['fields']['passport_num'] = array (
    'required' => false,
    'name' => 'passport_num',
    'vname' => 'LBL_PASSPORT_NUM',
    'type' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Серия Номер паспорта',
    'help' => 'Серия Номер паспорта',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => '10',
    'size' => '20',
);


$dictionary['bh_passports']['fields']['issued_by'] = array (
    'required' => false,
    'name' => 'issued_by',
    'vname' => 'LBL_ISSUED_BY',
    'type' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'кем выдан',
    'help' => 'кем выдан',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => '255',
    'size' => '20',
);

$dictionary['bh_passports']['fields']['date_issue'] = array (
    'required' => false,
    'name' => 'date_issue',
    'vname' => 'LBL_DATE_ISSUE',
    'type' => 'date',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'дата выдачи',
    'help' => 'дата выдачи',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['bh_passports']['fields']['birthday'] = array (
    'required' => false,
    'name' => 'birthday',
    'vname' => 'LBL_DATE_BIRTHDAY',
    'type' => 'date',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Дата рождения',
    'help' => 'Дата рождения',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['bh_passports']['fields']['placebirth'] = array (
    'required' => false,
    'name' => 'placebirth',
    'vname' => 'LBL_PLACEBIRTH',
    'type' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => 'Место рождения',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => '30',
    'size' => '20',
);

$dictionary['bh_passports']['fields']['date_expiration'] = array (
    'required' => false,
    'name' => 'date_expiration',
    'vname' => 'LBL_DATE_EXPIRATION',
    'type' => 'date',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'дата окончания',
    'help' => 'дата окончания',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['bh_passports']['fields']['passport_type'] = array (
    'required' => false,
    'name' => 'passport_type',
    'vname' => 'LBL_PASSPORT_TYPE',
    'type' => 'enum',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => '',
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => 100,
    'size' => '20',
    'options' => 'passport_type_list',
    'studio' => 'visible',
    'dependency' => false,
);




// created: 2017-09-22 12:49:02
$dictionary["bh_passports"]["fields"]["leads_bh_passports_1"] = array (
  'name' => 'leads_bh_passports_1',
  'type' => 'link',
  'relationship' => 'leads_bh_passports_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_BH_PASSPORTS_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_bh_passports_1leads_ida',
);
$dictionary["bh_passports"]["fields"]["leads_bh_passports_1_name"] = array (
  'name' => 'leads_bh_passports_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_BH_PASSPORTS_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_bh_passports_1leads_ida',
  'link' => 'leads_bh_passports_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["bh_passports"]["fields"]["leads_bh_passports_1leads_ida"] = array (
  'name' => 'leads_bh_passports_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_bh_passports_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_PASSPORTS_1_FROM_BH_PASSPORTS_TITLE',
);

?>