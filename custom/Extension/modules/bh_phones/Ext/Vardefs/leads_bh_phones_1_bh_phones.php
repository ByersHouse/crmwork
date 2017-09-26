<?php
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
