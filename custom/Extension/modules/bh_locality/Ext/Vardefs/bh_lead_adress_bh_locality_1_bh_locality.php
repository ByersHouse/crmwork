<?php
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
