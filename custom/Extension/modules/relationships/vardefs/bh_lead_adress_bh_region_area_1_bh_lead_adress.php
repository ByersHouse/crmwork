<?php
// created: 2017-09-22 10:14:42
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_region_area_1"] = array (
  'name' => 'bh_lead_adress_bh_region_area_1',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_region_area_1',
  'source' => 'non-db',
  'module' => 'bh_region_area',
  'bean_name' => 'bh_region_area',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_REGION_AREA_TITLE',
  'id_name' => 'bh_lead_adress_bh_region_area_1bh_region_area_idb',
);
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_region_area_1_name"] = array (
  'name' => 'bh_lead_adress_bh_region_area_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_REGION_AREA_TITLE',
  'save' => true,
  'id_name' => 'bh_lead_adress_bh_region_area_1bh_region_area_idb',
  'link' => 'bh_lead_adress_bh_region_area_1',
  'table' => 'bh_region_area',
  'module' => 'bh_region_area',
  'rname' => 'name',
);
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_region_area_1bh_region_area_idb"] = array (
  'name' => 'bh_lead_adress_bh_region_area_1bh_region_area_idb',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_region_area_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_AREA_1_FROM_BH_REGION_AREA_TITLE',
);
