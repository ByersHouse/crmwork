<?php
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
