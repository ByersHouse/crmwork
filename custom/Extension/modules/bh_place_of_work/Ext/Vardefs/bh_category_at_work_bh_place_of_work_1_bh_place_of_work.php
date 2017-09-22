<?php
// created: 2017-09-21 17:41:35
$dictionary["bh_place_of_work"]["fields"]["bh_category_at_work_bh_place_of_work_1"] = array (
  'name' => 'bh_category_at_work_bh_place_of_work_1',
  'type' => 'link',
  'relationship' => 'bh_category_at_work_bh_place_of_work_1',
  'source' => 'non-db',
  'module' => 'bh_category_at_work',
  'bean_name' => 'bh_category_at_work',
  'vname' => 'LBL_BH_CATEGORY_AT_WORK_BH_PLACE_OF_WORK_1_FROM_BH_CATEGORY_AT_WORK_TITLE',
  'id_name' => 'bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida',
);
$dictionary["bh_place_of_work"]["fields"]["bh_category_at_work_bh_place_of_work_1_name"] = array (
  'name' => 'bh_category_at_work_bh_place_of_work_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_CATEGORY_AT_WORK_BH_PLACE_OF_WORK_1_FROM_BH_CATEGORY_AT_WORK_TITLE',
  'save' => true,
  'id_name' => 'bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida',
  'link' => 'bh_category_at_work_bh_place_of_work_1',
  'table' => 'bh_category_at_work',
  'module' => 'bh_category_at_work',
  'rname' => 'name',
);
$dictionary["bh_place_of_work"]["fields"]["bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida"] = array (
  'name' => 'bh_category_at_work_bh_place_of_work_1bh_category_at_work_ida',
  'type' => 'link',
  'relationship' => 'bh_category_at_work_bh_place_of_work_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_CATEGORY_AT_WORK_BH_PLACE_OF_WORK_1_FROM_BH_PLACE_OF_WORK_TITLE',
);
