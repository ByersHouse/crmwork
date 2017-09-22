<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-22 11:26:45
$dictionary["bh_locality"]["fields"]["bh_lead_adress_bh_locality_1"] = array (
  'name' => 'bh_lead_adress_bh_locality_1',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_locality_1',
  'source' => 'non-db',
  'module' => 'bh_lead_adress',
  'bean_name' => 'bh_lead_adress',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LEAD_ADRESS_TITLE',
  'id_name' => 'bh_lead_adress_bh_locality_1bh_lead_adress_ida',
);
$dictionary["bh_locality"]["fields"]["bh_lead_adress_bh_locality_1_name"] = array (
  'name' => 'bh_lead_adress_bh_locality_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LEAD_ADRESS_TITLE',
  'save' => true,
  'id_name' => 'bh_lead_adress_bh_locality_1bh_lead_adress_ida',
  'link' => 'bh_lead_adress_bh_locality_1',
  'table' => 'bh_lead_adress',
  'module' => 'bh_lead_adress',
  'rname' => 'name',
);
$dictionary["bh_locality"]["fields"]["bh_lead_adress_bh_locality_1bh_lead_adress_ida"] = array (
  'name' => 'bh_lead_adress_bh_locality_1bh_lead_adress_ida',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_locality_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LEAD_ADRESS_TITLE',
);


// created: 2017-09-22 11:23:01
$dictionary["bh_locality"]["fields"]["bh_region_area_bh_locality_1"] = array (
  'name' => 'bh_region_area_bh_locality_1',
  'type' => 'link',
  'relationship' => 'bh_region_area_bh_locality_1',
  'source' => 'non-db',
  'module' => 'bh_region_area',
  'bean_name' => 'bh_region_area',
  'vname' => 'LBL_BH_REGION_AREA_BH_LOCALITY_1_FROM_BH_REGION_AREA_TITLE',
  'id_name' => 'bh_region_area_bh_locality_1bh_region_area_ida',
);
$dictionary["bh_locality"]["fields"]["bh_region_area_bh_locality_1_name"] = array (
  'name' => 'bh_region_area_bh_locality_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_REGION_AREA_BH_LOCALITY_1_FROM_BH_REGION_AREA_TITLE',
  'save' => true,
  'id_name' => 'bh_region_area_bh_locality_1bh_region_area_ida',
  'link' => 'bh_region_area_bh_locality_1',
  'table' => 'bh_region_area',
  'module' => 'bh_region_area',
  'rname' => 'name',
);
$dictionary["bh_locality"]["fields"]["bh_region_area_bh_locality_1bh_region_area_ida"] = array (
  'name' => 'bh_region_area_bh_locality_1bh_region_area_ida',
  'type' => 'link',
  'relationship' => 'bh_region_area_bh_locality_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_REGION_AREA_BH_LOCALITY_1_FROM_BH_LOCALITY_TITLE',
);



$dictionary['bh_locality']['fields']['is_regional'] = array (
    'required' => false,
    'name' => 'is_regional',
    'vname' => 'LBL_IS_REGIONAL',
    'type' => 'bool',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
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

$dictionary['bh_locality']['fields']['locality_type'] = array (
    'required' => false,
    'name' => 'locality_type',
    'vname' => 'LBL_LOCALITY_TYPE',
    'type' => 'enum',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'options' => 'locality_list',
    'studio' => 'visible',
    'size' => '20',
);

?>