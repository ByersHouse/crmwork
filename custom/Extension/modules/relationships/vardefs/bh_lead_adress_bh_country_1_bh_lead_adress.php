<?php
// created: 2017-09-22 10:00:39
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_country_1"] = array (
  'name' => 'bh_lead_adress_bh_country_1',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_country_1',
  'source' => 'non-db',
  'module' => 'bh_country',
  'bean_name' => 'bh_country',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
  'id_name' => 'bh_lead_adress_bh_country_1bh_country_idb',
);
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_country_1_name"] = array (
  'name' => 'bh_lead_adress_bh_country_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
  'save' => true,
  'id_name' => 'bh_lead_adress_bh_country_1bh_country_idb',
  'link' => 'bh_lead_adress_bh_country_1',
  'table' => 'bh_country',
  'module' => 'bh_country',
  'rname' => 'name',
);
$dictionary["bh_lead_adress"]["fields"]["bh_lead_adress_bh_country_1bh_country_idb"] = array (
  'name' => 'bh_lead_adress_bh_country_1bh_country_idb',
  'type' => 'link',
  'relationship' => 'bh_lead_adress_bh_country_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_LEAD_ADRESS_BH_COUNTRY_1_FROM_BH_COUNTRY_TITLE',
);
