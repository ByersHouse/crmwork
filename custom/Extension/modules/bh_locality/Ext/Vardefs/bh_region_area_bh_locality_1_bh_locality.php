<?php
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
