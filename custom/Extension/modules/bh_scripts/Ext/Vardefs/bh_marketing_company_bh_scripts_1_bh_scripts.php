<?php
// created: 2017-10-05 15:31:14
$dictionary["bh_scripts"]["fields"]["bh_marketing_company_bh_scripts_1"] = array (
  'name' => 'bh_marketing_company_bh_scripts_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_scripts_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_company',
  'bean_name' => 'bh_marketing_company',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_SCRIPTS_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'id_name' => 'bh_marketing_company_bh_scripts_1bh_marketing_company_ida',
);
$dictionary["bh_scripts"]["fields"]["bh_marketing_company_bh_scripts_1_name"] = array (
  'name' => 'bh_marketing_company_bh_scripts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_SCRIPTS_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'bh_marketing_company_bh_scripts_1bh_marketing_company_ida',
  'link' => 'bh_marketing_company_bh_scripts_1',
  'table' => 'bh_marketing_company',
  'module' => 'bh_marketing_company',
  'rname' => 'name',
);
$dictionary["bh_scripts"]["fields"]["bh_marketing_company_bh_scripts_1bh_marketing_company_ida"] = array (
  'name' => 'bh_marketing_company_bh_scripts_1bh_marketing_company_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_scripts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_SCRIPTS_1_FROM_BH_MARKETING_COMPANY_TITLE',
);
