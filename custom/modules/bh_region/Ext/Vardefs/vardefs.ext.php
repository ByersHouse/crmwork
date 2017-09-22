<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-22 10:34:21
$dictionary["bh_region"]["fields"]["bh_country_bh_region_1"] = array (
  'name' => 'bh_country_bh_region_1',
  'type' => 'link',
  'relationship' => 'bh_country_bh_region_1',
  'source' => 'non-db',
  'module' => 'bh_country',
  'bean_name' => 'bh_country',
  'vname' => 'LBL_BH_COUNTRY_BH_REGION_1_FROM_BH_COUNTRY_TITLE',
  'id_name' => 'bh_country_bh_region_1bh_country_ida',
);
$dictionary["bh_region"]["fields"]["bh_country_bh_region_1_name"] = array (
  'name' => 'bh_country_bh_region_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_COUNTRY_BH_REGION_1_FROM_BH_COUNTRY_TITLE',
  'save' => true,
  'id_name' => 'bh_country_bh_region_1bh_country_ida',
  'link' => 'bh_country_bh_region_1',
  'table' => 'bh_country',
  'module' => 'bh_country',
  'rname' => 'name',
);
$dictionary["bh_region"]["fields"]["bh_country_bh_region_1bh_country_ida"] = array (
  'name' => 'bh_country_bh_region_1bh_country_ida',
  'type' => 'link',
  'relationship' => 'bh_country_bh_region_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_COUNTRY_BH_REGION_1_FROM_BH_REGION_TITLE',
);


// created: 2017-09-22 10:12:22
$dictionary["bh_region"]["fields"]["bh_lead_adress_bh_region_1"] = array (
  'name' => 'bh_lead_adress_bh_region_1',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_region_1',
  'source' => 'non-db',
  'module' => 'bh_lead_adress',
  'bean_name' => 'bh_lead_adress',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_LEAD_ADRESS_TITLE',
  'id_name' => 'bh_lead_adress_bh_region_1bh_lead_adress_ida',
);
$dictionary["bh_region"]["fields"]["bh_lead_adress_bh_region_1_name"] = array (
  'name' => 'bh_lead_adress_bh_region_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_LEAD_ADRESS_TITLE',
  'save' => true,
  'id_name' => 'bh_lead_adress_bh_region_1bh_lead_adress_ida',
  'link' => 'bh_lead_adress_bh_region_1',
  'table' => 'bh_lead_adress',
  'module' => 'bh_lead_adress',
  'rname' => 'name',
);
$dictionary["bh_region"]["fields"]["bh_lead_adress_bh_region_1bh_lead_adress_ida"] = array (
  'name' => 'bh_lead_adress_bh_region_1bh_lead_adress_ida',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_region_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_LEAD_ADRESS_TITLE',
);


// created: 2017-09-22 10:39:51
$dictionary["bh_region"]["fields"]["bh_region_bh_region_area_1"] = array (
  'name' => 'bh_region_bh_region_area_1',
  'type' => 'link',
  'relationship' => 'bh_region_bh_region_area_1',
  'source' => 'non-db',
  'module' => 'bh_region_area',
  'bean_name' => 'bh_region_area',
  'side' => 'right',
  'vname' => 'LBL_BH_REGION_BH_REGION_AREA_1_FROM_BH_REGION_AREA_TITLE',
);

?>