<?php
// created: 2017-09-20 09:44:29
$dictionary["bh_marketing_directorate"]["fields"]["bh_marketing_company_bh_marketing_directorate_1"] = array (
  'name' => 'bh_marketing_company_bh_marketing_directorate_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_directorate_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_company',
  'bean_name' => 'bh_marketing_company',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_DIRECTORATE_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'id_name' => 'bh_marketia9b6company_ida',
);
$dictionary["bh_marketing_directorate"]["fields"]["bh_marketing_company_bh_marketing_directorate_1_name"] = array (
  'name' => 'bh_marketing_company_bh_marketing_directorate_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_DIRECTORATE_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'bh_marketia9b6company_ida',
  'link' => 'bh_marketing_company_bh_marketing_directorate_1',
  'table' => 'bh_marketing_company',
  'module' => 'bh_marketing_company',
  'rname' => 'name',
);
$dictionary["bh_marketing_directorate"]["fields"]["bh_marketia9b6company_ida"] = array (
  'name' => 'bh_marketia9b6company_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_directorate_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_DIRECTORATE_1_FROM_BH_MARKETING_DIRECTORATE_TITLE',
);
