<?php
// created: 2017-10-03 11:58:40
$dictionary["bh_marketing_company_history"]["fields"]["bh_marketing_company_bh_marketing_company_history_1"] = array (
  'name' => 'bh_marketing_company_bh_marketing_company_history_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_company_history_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_company',
  'bean_name' => 'bh_marketing_company',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_COMPANY_HISTORY_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'id_name' => 'bh_marketi1e9fcompany_ida',
);
$dictionary["bh_marketing_company_history"]["fields"]["bh_marketing_company_bh_marketing_company_history_1_name"] = array (
  'name' => 'bh_marketing_company_bh_marketing_company_history_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_COMPANY_HISTORY_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'bh_marketi1e9fcompany_ida',
  'link' => 'bh_marketing_company_bh_marketing_company_history_1',
  'table' => 'bh_marketing_company',
  'module' => 'bh_marketing_company',
  'rname' => 'name',
);
$dictionary["bh_marketing_company_history"]["fields"]["bh_marketi1e9fcompany_ida"] = array (
  'name' => 'bh_marketi1e9fcompany_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_company_history_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_COMPANY_HISTORY_1_FROM_BH_MARKETING_COMPANY_HISTORY_TITLE',
);
