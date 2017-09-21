<?php
// created: 2017-09-20 09:26:15
$dictionary["bh_marketing_response"]["fields"]["bh_marketing_company_bh_marketing_response_1"] = array (
  'name' => 'bh_marketing_company_bh_marketing_response_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_response_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_company',
  'bean_name' => 'bh_marketing_company',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'id_name' => 'bh_marketi8c3ecompany_ida',
);
$dictionary["bh_marketing_response"]["fields"]["bh_marketing_company_bh_marketing_response_1_name"] = array (
  'name' => 'bh_marketing_company_bh_marketing_response_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'bh_marketi8c3ecompany_ida',
  'link' => 'bh_marketing_company_bh_marketing_response_1',
  'table' => 'bh_marketing_company',
  'module' => 'bh_marketing_company',
  'rname' => 'name',
);
$dictionary["bh_marketing_response"]["fields"]["bh_marketi8c3ecompany_ida"] = array (
  'name' => 'bh_marketi8c3ecompany_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_company_bh_marketing_response_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_MARKETING_COMPANY_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_RESPONSE_TITLE',
);
