<?php
// created: 2017-09-22 10:12:22
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_region_1"] = array (
  'name' => 'bh_lead_adress_bh_region_1',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_region_1',
  'source' => 'non-db',
  'module' => 'bh_region',
  'bean_name' => 'bh_region',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_REGION_TITLE',
  'id_name' => 'bh_lead_adress_bh_region_1bh_region_idb',
);
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_region_1_name"] = array (
  'name' => 'bh_lead_adress_bh_region_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_REGION_TITLE',
  'save' => true,
  'id_name' => 'bh_lead_adress_bh_region_1bh_region_idb',
  'link' => 'bh_lead_adress_bh_region_1',
  'table' => 'bh_region',
  'module' => 'bh_region',
  'rname' => 'name',
);
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_region_1bh_region_idb"] = array (
  'name' => 'bh_lead_adress_bh_region_1bh_region_idb',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_region_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_REGION_1_FROM_BH_REGION_TITLE',
);
