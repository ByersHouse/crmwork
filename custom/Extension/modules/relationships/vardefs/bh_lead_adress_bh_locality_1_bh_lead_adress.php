<?php
// created: 2017-09-22 11:26:45
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_locality_1"] = array (
  'name' => 'bh_lead_adress_bh_locality_1',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_locality_1',
  'source' => 'non-db',
  'module' => 'bh_locality',
  'bean_name' => 'bh_locality',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LOCALITY_TITLE',
  'id_name' => 'bh_lead_adress_bh_locality_1bh_locality_idb',
);
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_locality_1_name"] = array (
  'name' => 'bh_lead_adress_bh_locality_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LOCALITY_TITLE',
  'save' => true,
  'id_name' => 'bh_lead_adress_bh_locality_1bh_locality_idb',
  'link' => 'bh_lead_adress_bh_locality_1',
  'table' => 'bh_locality',
  'module' => 'bh_locality',
  'rname' => 'name',
);
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_locality_1bh_locality_idb"] = array (
  'name' => 'bh_lead_adress_bh_locality_1bh_locality_idb',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_locality_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_LOCALITY_1_FROM_BH_LOCALITY_TITLE',
);
