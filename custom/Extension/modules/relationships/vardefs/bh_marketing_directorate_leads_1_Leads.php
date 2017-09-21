<?php
// created: 2017-09-20 10:15:45
$dictionary["Lead"]["fields"]["bh_marketing_directorate_leads_1"] = array (
  'name' => 'bh_marketing_directorate_leads_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_directorate_leads_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_directorate',
  'bean_name' => 'bh_marketing_directorate',
  'vname' => 'LBL_BH_MARKETING_DIRECTORATE_LEADS_1_FROM_BH_MARKETING_DIRECTORATE_TITLE',
  'id_name' => 'bh_marketing_directorate_leads_1bh_marketing_directorate_ida',
);
$dictionary["Lead"]["fields"]["bh_marketing_directorate_leads_1_name"] = array (
  'name' => 'bh_marketing_directorate_leads_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_MARKETING_DIRECTORATE_LEADS_1_FROM_BH_MARKETING_DIRECTORATE_TITLE',
  'save' => true,
  'id_name' => 'bh_marketing_directorate_leads_1bh_marketing_directorate_ida',
  'link' => 'bh_marketing_directorate_leads_1',
  'table' => 'bh_marketing_directorate',
  'module' => 'bh_marketing_directorate',
  'rname' => 'name',
);
$dictionary["Lead"]["fields"]["bh_marketing_directorate_leads_1bh_marketing_directorate_ida"] = array (
  'name' => 'bh_marketing_directorate_leads_1bh_marketing_directorate_ida',
  'type' => 'link',
  'relationship' => 'bh_marketing_directorate_leads_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_MARKETING_DIRECTORATE_LEADS_1_FROM_BH_MARKETING_DIRECTORATE_TITLE',
);
