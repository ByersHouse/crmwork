<?php
// created: 2017-10-05 15:31:14
$dictionary["bh_marketing_company"]["fields"]["bh_marketing_company_bh_scripts_1"] = array (
  'name' => 'bh_marketing_company_bh_scripts_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_scripts_1',
  'source' => 'non-db',
  'module' => 'bh_scripts',
  'bean_name' => 'bh_scripts',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_SCRIPTS_1_FROM_BH_SCRIPTS_TITLE',
  'id_name' => 'bh_marketing_company_bh_scripts_1bh_scripts_idb',
);
$dictionary["bh_marketing_company"]["fields"]["bh_marketing_company_bh_scripts_1_name"] = array (
  'name' => 'bh_marketing_company_bh_scripts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_SCRIPTS_1_FROM_BH_SCRIPTS_TITLE',
  'save' => true,
  'id_name' => 'bh_marketing_company_bh_scripts_1bh_scripts_idb',
  'link' => 'bh_marketing_company_bh_scripts_1',
  'table' => 'bh_scripts',
  'module' => 'bh_scripts',
  'rname' => 'name',
);
$dictionary["bh_marketing_company"]["fields"]["bh_marketing_company_bh_scripts_1bh_scripts_idb"] = array (
  'name' => 'bh_marketing_company_bh_scripts_1bh_scripts_idb',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_scripts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_SCRIPTS_1_FROM_BH_SCRIPTS_TITLE',
);
