<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-22 10:14:42
$dictionary["bh_region_area"]["fields"]["bh_lead_adress_bh_region_area_1"] = array (
  'name' => 'bh_lead_adress_bh_region_area_1',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_region_area_1',
  'source' => 'non-db',
  'module' => 'bh_lead_adress',
  'bean_name' => 'bh_lead_adress',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_LEAD_ADRESS_TITLE',
  'id_name' => 'bh_lead_adress_bh_region_area_1bh_lead_adress_ida',
);
$dictionary["bh_region_area"]["fields"]["bh_lead_adress_bh_region_area_1_name"] = array (
  'name' => 'bh_lead_adress_bh_region_area_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_LEAD_ADRESS_TITLE',
  'save' => true,
  'id_name' => 'bh_lead_adress_bh_region_area_1bh_lead_adress_ida',
  'link' => 'bh_lead_adress_bh_region_area_1',
  'table' => 'bh_lead_adress',
  'module' => 'bh_lead_adress',
  'rname' => 'name',
);
$dictionary["bh_region_area"]["fields"]["bh_lead_adress_bh_region_area_1bh_lead_adress_ida"] = array (
  'name' => 'bh_lead_adress_bh_region_area_1bh_lead_adress_ida',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_region_area_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_LEAD_ADRESS_TITLE',
);


// created: 2017-09-22 11:23:01
$dictionary["bh_region_area"]["fields"]["bh_region_area_bh_locality_1"] = array (
  'name' => 'bh_region_area_bh_locality_1',
  'type' => 'link',
  'relationship' => 'bh_region_area_bh_locality_1',
  'source' => 'non-db',
  'module' => 'bh_locality',
  'bean_name' => 'bh_locality',
  'side' => 'right',
  'vname' => 'LBL_BH_REGION_AREA_BH_LOCALITY_1_FROM_BH_LOCALITY_TITLE',
);


// created: 2017-09-22 10:39:51
$dictionary["bh_region_area"]["fields"]["bh_region_bh_region_area_1"] = array (
  'name' => 'bh_region_bh_region_area_1',
  'type' => 'link',
  'relationship' => 'bh_region_bh_region_area_1',
  'source' => 'non-db',
  'module' => 'bh_region',
  'bean_name' => 'bh_region',
  'vname' => 'LBL_BH_REGION_BH_REGION_AREA_1_FROM_BH_REGION_TITLE',
  'id_name' => 'bh_region_bh_region_area_1bh_region_ida',
);
$dictionary["bh_region_area"]["fields"]["bh_region_bh_region_area_1_name"] = array (
  'name' => 'bh_region_bh_region_area_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_REGION_BH_REGION_AREA_1_FROM_BH_REGION_TITLE',
  'save' => true,
  'id_name' => 'bh_region_bh_region_area_1bh_region_ida',
  'link' => 'bh_region_bh_region_area_1',
  'table' => 'bh_region',
  'module' => 'bh_region',
  'rname' => 'name',
);
$dictionary["bh_region_area"]["fields"]["bh_region_bh_region_area_1bh_region_ida"] = array (
  'name' => 'bh_region_bh_region_area_1bh_region_ida',
  'type' => 'link',
  'relationship' => 'bh_region_bh_region_area_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_REGION_BH_REGION_AREA_1_FROM_BH_REGION_AREA_TITLE',
);

?>