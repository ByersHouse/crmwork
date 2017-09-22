<?php
// created: 2017-09-21 17:27:56
$dictionary["bh_place_of_work"]["fields"]["bh_org_bh_place_of_work_1"] = array (
  'name' => 'bh_org_bh_place_of_work_1',
  'type' => 'link',
  'relationship' => 'bh_org_bh_place_of_work_1',
  'source' => 'non-db',
  'module' => 'bh_org',
  'bean_name' => 'bh_org',
  'vname' => 'LBL_BH_ORG_BH_PLACE_OF_WORK_1_FROM_BH_ORG_TITLE',
  'id_name' => 'bh_org_bh_place_of_work_1bh_org_ida',
);
$dictionary["bh_place_of_work"]["fields"]["bh_org_bh_place_of_work_1_name"] = array (
  'name' => 'bh_org_bh_place_of_work_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_ORG_BH_PLACE_OF_WORK_1_FROM_BH_ORG_TITLE',
  'save' => true,
  'id_name' => 'bh_org_bh_place_of_work_1bh_org_ida',
  'link' => 'bh_org_bh_place_of_work_1',
  'table' => 'bh_org',
  'module' => 'bh_org',
  'rname' => 'name',
);
$dictionary["bh_place_of_work"]["fields"]["bh_org_bh_place_of_work_1bh_org_ida"] = array (
  'name' => 'bh_org_bh_place_of_work_1bh_org_ida',
  'type' => 'link',
  'relationship' => 'bh_org_bh_place_of_work_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_ORG_BH_PLACE_OF_WORK_1_FROM_BH_PLACE_OF_WORK_TITLE',
);
