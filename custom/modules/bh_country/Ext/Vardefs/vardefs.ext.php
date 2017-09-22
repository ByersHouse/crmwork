<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-22 10:34:21
$dictionary["bh_country"]["fields"]["bh_country_bh_region_1"] = array (
  'name' => 'bh_country_bh_region_1',
  'type' => 'link',
  'relationship' => 'bh_country_bh_region_1',
  'source' => 'non-db',
  'module' => 'bh_region',
  'bean_name' => 'bh_region',
  'side' => 'right',
  'vname' => 'LBL_BH_COUNTRY_BH_REGION_1_FROM_BH_REGION_TITLE',
);


// created: 2017-09-22 10:00:39
$dictionary["bh_country"]["fields"]["bh_lead_adress_bh_country_1"] = array (
  'name' => 'bh_lead_adress_bh_country_1',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_country_1',
  'source' => 'non-db',
  'module' => 'bh_lead_adress',
  'bean_name' => 'bh_lead_adress',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_LEAD_ADRESS_TITLE',
  'id_name' => 'bh_lead_adress_bh_country_1bh_lead_adress_ida',
);
$dictionary["bh_country"]["fields"]["bh_lead_adress_bh_country_1_name"] = array (
  'name' => 'bh_lead_adress_bh_country_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_LEAD_ADRESS_TITLE',
  'save' => true,
  'id_name' => 'bh_lead_adress_bh_country_1bh_lead_adress_ida',
  'link' => 'bh_lead_adress_bh_country_1',
  'table' => 'bh_lead_adress',
  'module' => 'bh_lead_adress',
  'rname' => 'name',
);
$dictionary["bh_country"]["fields"]["bh_lead_adress_bh_country_1bh_lead_adress_ida"] = array (
  'name' => 'bh_lead_adress_bh_country_1bh_lead_adress_ida',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_country_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_LEAD_ADRESS_TITLE',
);


// created: 2017-09-22 12:47:30
$dictionary["bh_country"]["fields"]["bh_passports_bh_country_1"] = array (
  'name' => 'bh_passports_bh_country_1',
  'type' => 'link',
  'relationship' => 'bh_passports_bh_country_1',
  'source' => 'non-db',
  'module' => 'bh_passports',
  'bean_name' => 'bh_passports',
  'vname' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_PASSPORTS_TITLE',
  'id_name' => 'bh_passports_bh_country_1bh_passports_ida',
);
$dictionary["bh_country"]["fields"]["bh_passports_bh_country_1_name"] = array (
  'name' => 'bh_passports_bh_country_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_PASSPORTS_TITLE',
  'save' => true,
  'id_name' => 'bh_passports_bh_country_1bh_passports_ida',
  'link' => 'bh_passports_bh_country_1',
  'table' => 'bh_passports',
  'module' => 'bh_passports',
  'rname' => 'name',
);
$dictionary["bh_country"]["fields"]["bh_passports_bh_country_1bh_passports_ida"] = array (
  'name' => 'bh_passports_bh_country_1bh_passports_ida',
  'type' => 'link',
  'relationship' => 'bh_passports_bh_country_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_PASSPORTS_BH_COUNTRY_1_FROM_BH_PASSPORTS_TITLE',
);

?>